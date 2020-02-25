using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace seyhandagitim
{
    public partial class ZZZUdetay : System.Web.UI.Page
    {
        SqlDataReader oku;
        protected void KampanyaCheck()
        {
            string stockref = Request.QueryString["urunid"];
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            HFVade.Value = "0";
            HFMik.Value = "0";
            HFPRCPRICE.Value = "0";
            HFCURRATE.Value = "1";
            decimal FrmtSayi = 0;
            string CURR = "0";
            //price cek
            oku = baglanti.DataReaderAl("select PRICE,CURRENCY from LG_" + baglanti.GFirma + "_PRCLIST where BEGDATE<='" + DateTime.Now.ToString("MM/dd/yyyy") + "' and ENDDATE>='" + DateTime.Now.ToString("MM/dd/yyyy") + "' and CARDREF=" + stockref + " and PTYPE=2 ");
            if (oku.Read())
            {
                HFPRCPRICE.Value = oku["PRICE"].ToString();
                FrmtSayi = Convert.ToDecimal(HFPRCPRICE.Value);
                TXTBRF.Text = FrmtSayi.ToString("N");
                TXTBRF.ToolTip = FrmtSayi.ToString("N");
                CURR = oku[1].ToString();
            }

            //döviz kuru al
            oku = baglanti.DataReaderAl("select rates3 from LG_EXCHANGE_" + baglanti.GFirma + " where CRTYPE=" + CURR + " and EDATE='" + DateTime.Now.ToString("MM/dd/yyyy") + "'");
            if (oku.Read())
            {
                HFCURRATE.Value = oku[0].ToString();
            }

            string icSql = "";
            double INDKatsayi = 1,INDKatsayi2=1, INDORAN;
            oku = baglanti.DataReaderAl("select SQLSTR,VADEREF,MIKREF,INDORAN,isnull(YINDORAN,0)as YINDORAN,YetkiRef  from " + baglanti.INITIAL2 + "..A_CMPGNLine where CLIENTREF=" + CLIENTREF + "");
            while (oku.Read())
            {
                string YetkiRef=oku["YetkiRef"].ToString();
           
                icSql = oku[0].ToString();
                SqlDataReader oku2 = baglanti.DataReaderAl("select CODE,SPECODE as [P114],SPECODE2 as [P118],SPECODE3 as  [P119] ,LOGICALREF,CYPHCODE from LG_" + baglanti.GFirma + "_ITEMS  where LOGICALREF=" + stockref + " " + icSql + "");
                if (oku2.Read())
                {
                    string YetkiKodu = oku2["CYPHCODE"].ToString();
                    if (YetkiRef != "0" && YetkiRef != null && YetkiRef != "null")
                    {
                        SqlDataReader oku3 = baglanti.DataReaderAl("select INDORAN as YINDORAN from " + baglanti.INITIAL2 + "..A_CYPHCODELine where VADESTR='" + YetkiKodu + "'");
                        if (oku3.Read())
                        {
                            HFYetkiOran.Value = oku3[0].ToString();
                        }
                    }
                    INDORAN = Convert.ToDouble(oku[3].ToString());
                    HFVade.Value = oku[1].ToString();
                    HFMik.Value = oku[2].ToString();

                    INDKatsayi -= INDORAN / 100;
                    INDKatsayi2 -= (Convert.ToDouble(HFYetkiOran.Value)) / 100;
                    TXTBRF.Text = (Convert.ToDouble(HFPRCPRICE.Value) * INDKatsayi*INDKatsayi2).ToString() + " €";
                    TXTBRF.ToolTip = (Convert.ToDouble(HFPRCPRICE.Value) * INDKatsayi*INDKatsayi2).ToString();
                }

            }






            double mikoran = 0, vadoran = 0;
            if (HFVade.Value == "0" && HFMik.Value == "0") { return; }
            oku = baglanti.DataReaderAl("select isnull(max(INDORAN),0) as MINDORAN from " + baglanti.INITIAL2 + "..A_MikLine where MREF=" + HFMik.Value + "");
            if (oku.Read())
            {
                mikoran = Convert.ToDouble(oku[0].ToString());
            }
            oku = baglanti.DataReaderAl("select isnull(max(INDORAN),0) as VINDORAN from " + baglanti.INITIAL2 + "..A_VadeLine where VREF=" + HFVade.Value + "");
            if (oku.Read())
            {
                vadoran = Convert.ToDouble(oku[0].ToString());
            }
            double yuzde = 1 - ((vadoran / 100) );
            double yuzde2 = 1 - (mikoran / 100);
            double bFiyat = Convert.ToDouble(TXTBRF.ToolTip);
            if (HFPRCPRICE.Value == "0")
            {
                LBLMAx.Text = "Fiyatlandırılmamış Ürün İçin Lütfen Bayiye Başvurun!!!";
            }
            else
            {
               // LBLMAx.Text = "Bu ürünü " + Convert.ToDecimal(((bFiyat * yuzde) * yuzde2) * Convert.ToDouble(HFCURRATE.Value)).ToString("N") + " TL den Alabilirsiniz!!!";
            }
        }
        protected void AciklamaGetir() {
            string stockref = Request.QueryString["urunid"];
            oku = baglanti.DataReaderAl("select I.NAME3,XI.B2BACK1,XI.B2BACK2,XI.B2BACK3,XI.B2BACK4,XI.B2BACK5 from LG_" + baglanti.GFirma + "_ITEMS as I left outer join LG_XT1001_" + baglanti.GFirma + " as XI on I.LOGICALREF=XI.PARLOGREF where I.LOGICALREF=" + stockref + "");
            if (oku.Read())
            {
                LBLNAME3.Text = oku[0].ToString();
                LBLB2B.Text = oku[1].ToString();
                LBLB2B2.Text = oku[2].ToString();
                LBLB2B3.Text = oku[3].ToString();
                LBLB2B4.Text = oku[4].ToString();
                LBLB2B5.Text = oku[5].ToString();
            }
        }


        protected void UrunSonAlimGetir() {
            string stockref = Request.QueryString["urunid"];
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            GridList.DataSource = baglanti.TabloAl("SELECT     TOP 3  P.DEFINITION_ as Vade, ST.AMOUNT as Miktar, ST.LINENET/ST.AMOUNT as BrFiyat,	CONVERT(VARCHAR(10), DATE_, 103) as Tarih FROM dbo.LG_" + baglanti.GFirma + "_01_STLINE AS ST INNER JOIN dbo.LG_" + baglanti.GFirma + "_ITEMS ON ST.STOCKREF = dbo.LG_" + baglanti.GFirma + "_ITEMS.LOGICALREF inner join LG_" + baglanti.GFirma + "_PAYPLANS as P on ST.PAYDEFREF=P.LOGICALREF   WHERE     (ST.CANCELLED = 0) AND (ST.CLIENTREF = " + CLIENTREF + ") and ST.AMOUNT>0 and ST.STOCKREF=" + stockref + " ORDER BY ST.DATE_ DESC");
            GridList.DataBind();
        
        }



        protected void Page_Load(object sender, EventArgs e)
        {
            string StockRef=Request.QueryString["urunid"];
            KampanyaCheck();
            AciklamaGetir();
            Repeater1.DataSource = baglanti.TabloAl("select PICURL from "+baglanti.INITIAL2+"..A_ITEMS where STOCKREF=" + StockRef + "");
            Repeater1.DataBind();
            UrunSonAlimGetir();
          
        }
    }
}