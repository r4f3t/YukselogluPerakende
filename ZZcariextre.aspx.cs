using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace seyhandagitim
{
    public partial class ZZcariextre : System.Web.UI.Page
    {

        protected void PNLYetkiGirisCheck() {
            HttpCookie user = Request.Cookies["giris"];
            string userid = user["userid"];
            SqlDataReader oku = baglanti.DataReaderAl("select isnull(EXTRESifresi,'') from ZTblUseR where UserId="+userid+"");
            if (oku.Read())
            {
                string LEXTRESifresi = oku[0].ToString();
                PNLYetkiGiris.Visible = (LEXTRESifresi!="") ? true : false;
                if (LEXTRESifresi=="")
                {
                    GridGetir();
                    PNLYetki.Visible = true;
                }
            }
        }

        protected void GridGetir() {
            if (ASPxDateEdit1.Text == "") { ASPxDateEdit1.Date = Convert.ToDateTime("2019-" + DateTime.Now.AddMonths(-3).Month + "-01"); } if (ASPxDateEdit2.Text == "") { ASPxDateEdit2.Date = DateTime.Now; }
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            GridExtre.DataSource = baglanti.TabloAl("SELECT distinct *,(SELECT SUM(b.TTUTAR)AS BAKIYE FROM ISRG_Hesap_Extresi_" + baglanti.GFirma + "_RFT AS b Where  b.rank<=K.rank  AND CLIENTREF=" + CLIENTREF + " )AS BAKIYE  FROM(select rank,H.LOGICALREF,ISLEMTARIHI,ISLEMTURU,(CASE WHEN ISLEMTURU='Toptan satış fat' THEN I.DOCODE ELSE TRANNO END )  as BelgeNo,TRANNO, (CASE WHEN BORC_ALACAK=0 THEN TUTAR ELSE 0 END) AS ALACAK,(CASE WHEN BORC_ALACAK=1 THEN TUTAR ELSE 0 END) AS BORC,VADE,LEFT(ISLEMACIKLAMASI,20) AS ISLEMACIKLAMASI from ISRG_Hesap_Extresi_" + baglanti.GFirma + "_RFT as H left outer join LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_INVOICE as I on H.TRANNO=I.FICHENO  Where H.CLIENTREF=" + CLIENTREF + " and ISLEMTARIHI>='" + ASPxDateEdit1.Date.ToString("MM/dd/yyyy") + "' and ISLEMTARIHI<='" + ASPxDateEdit2.Date.ToString("MM/dd/yyyy") + "') AS K ORDER BY ISLEMTARIHI,rank");
          GridExtre.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            PNLYetkiGirisCheck();
            try
            {
            
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            if (!IsPostBack)
            {
                
                ASPxDateEdit2.Date = DateTime.Now;
            }
           

            }
            catch (Exception)
            {

             
            }
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            GridGetir();
        }

        protected void GridExtre_HtmlDataCellPrepared(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewTableDataCellEventArgs e)
        {
          
                string IslemTipi=e.GetValue("ISLEMTURU").ToString();
                if (IslemTipi == "Toptan satış fat")
                {
                    e.Cell.Attributes.Add("onclick", "ShowDetailPopup('" + e.GetValue("TRANNO") + "','" + e.GetValue("TRANNO") + "','" + e.GetValue("ISLEMTARIHI").ToString().Substring(0,10) + "');");
                }

           
        }

        protected void BTNYetkiGiris_Click(object sender, EventArgs e)
        {
            HttpCookie user = Request.Cookies["giris"];
            string userid = user["userid"];
            SqlDataReader oku = baglanti.DataReaderAl("select UserId from ZTblUseR where UserId="+userid+" and EXTRESifresi='"+TXTYetkiSifre.Text+"'");
            if (oku.Read())
            {
                PNLYetki.Visible = true;
                GridGetir();
                PNLYetkiGiris.Visible = false;
            }
        }
    }
}