using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace seyhandagitim
{
    public partial class AcikFatura : System.Web.UI.Page
    {
        protected void PNLYetkiGirisCheck()
        {
            HttpCookie user = Request.Cookies["giris"];
            string userid = user["userid"];
            SqlDataReader oku = baglanti.DataReaderAl("select isnull(EXTRESifresi,'') from ZTblUseR where UserId=" + userid + "");
            if (oku.Read())
            {
                string LEXTRESifresi = oku[0].ToString();
                PNLYetkiGiris.Visible = (LEXTRESifresi != "") ? true : false;
                if (LEXTRESifresi == "")
                {
                    GridGetir();
                    PNLYetki.Visible = true;
                }
            }
        }
        protected void GridGetir() {
            HttpCookie giris = Request.Cookies["giris"];
            HttpCookie user = Request.Cookies["MyCerez"];
            string CLIENTREF = user["CLIENTREF"];
            GridFatura.DataSource = baglanti.TabloAl("select I.DOCODE,I.FICHENO,I.DATE_,I.NETTOTAL as Tutar,isnull(P.PAID,0) as PAID,I.NETTOTAL-isnull(P.PAID,0) as Borc,P.FICHEREF from LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_INVOICE as I left outer join (select isnull(sum(PAID),0) as PAID,FICHEREF from LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_PAYTRANS where TRCODE<>1 AND CANCELLED=0  group by FICHEREF) as P on I.LOGICALREF=P.FICHEREF where I.CLIENTREF=" + CLIENTREF + "   and I.NETTOTAL-1>isnull(P.PAID,0)  and I.CANCELLED=0 order by DATE_ asc");
            GridFatura.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            PNLYetkiGirisCheck();
            GridGetir();
        }

        protected void GridFatura_HtmlDataCellPrepared(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewTableDataCellEventArgs e)
        {

            e.Cell.Attributes.Add("onclick", "ShowDetailPopup('" + e.GetValue("FICHENO") + "','" + e.GetValue("DOCODE") + "','" + e.GetValue("DATE_").ToString().Substring(0, 10) + "');");
        
        }
        protected void BTNYetkiGiris_Click(object sender, EventArgs e)
        {
            HttpCookie user = Request.Cookies["giris"];
            string userid = user["userid"];
            SqlDataReader oku = baglanti.DataReaderAl("select UserId from ZTblUseR where UserId=" + userid + " and EXTRESifresi='" + TXTYetkiSifre.Text + "'");
            if (oku.Read())
            {
                PNLYetki.Visible = true;
                GridGetir();
                PNLYetkiGiris.Visible = false;
            }
        }
    }
}