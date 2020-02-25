using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace seyhandagitim
{
    public partial class LTEMASTER2 : System.Web.UI.MasterPage
    {
        protected void SepetRefresh() {
            HttpCookie giris = Request.Cookies["giris"];
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            string yetki = giris["yetki"];
           
            RptSepet.DataSource = baglanti.TabloAl("select count(LOGICALREF) as Sepet from " + baglanti.INITIAL2 + "..Z_SipLine where Durum=0 and CLIENTREF=" + CLIENTREF + " ");
            RptSepet.DataBind();
            //RptSepet2.DataSource = baglanti.TabloAl("select count(LOGICALREF) as Sepet from "+baglanti.INITIAL2+"..Z_SipLine where Durum=0 and CLIENTREF=" + CLIENTREF + "");
            //RptSepet2.DataBind();
            RPTURUNADs.DataSource = baglanti.TabloAl("select U.NAME as UrunAd,U.CODE  from " + baglanti.INITIAL2 + "..Z_SipLine as S left outer join LG_" + baglanti.GFirma + "_ITEMS as U on S.STOCKREF=U.LOGICALREF where  S.Durum=0 and S.CLIENTREF=" + CLIENTREF + " ");
            RPTURUNADs.DataBind();
            RPTyanSepet.DataSource = baglanti.TabloAl("select U.NAME as UrunAd,U.CODE  from " + baglanti.INITIAL2 + "..Z_SipLine as S left outer join LG_" + baglanti.GFirma + "_ITEMS as U on S.STOCKREF=U.LOGICALREF where  S.Durum=0 and S.CLIENTREF=" + CLIENTREF + " ");
            RPTyanSepet.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie Cookie=Request.Cookies["giris"];
            string yetki=Cookie["yetki"];
            if (yetki == "1" || yetki=="4")
            {
                HREFCikis.HRef = "zzplmain.aspx";
                HREFCikis2.HRef = "zzplmain.aspx";
             //   HREFSohbet.HRef = "AA_Kisiler.aspx";
                Panel1.Visible = false;
            }
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            SepetRefresh();
            RPTCiro.DataSource = baglanti.TabloAl("select isnull(sum(NETTOTAL),0) as Ciro,CLIENTREF from LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_INVOICE where TRCODE IN (8) and CANCELLED = 0 and CLIENTREF=" + CLIENTREF + " group by CLIENTREF");
            RPTCiro.DataBind();
            RPTCariAd.DataSource = baglanti.TabloAl("select DEFINITION_ as Cari_Adı,CODE from LG_" + baglanti.GFirma + "_CLCARD where LOGICALREF=" + CLIENTREF + "");
            RPTCariAd.DataBind();
            RptBakiye.DataSource = baglanti.TabloAl("SELECT top 1 (SELECT SUM(b.TTUTAR)AS BAKIYE FROM ISRG_Hesap_Extresi_" + baglanti.GFirma + " AS b Where b.ISLEMTARIHI<=K.ISLEMTARIHI AND CLIENTREF=" + CLIENTREF + ")AS BAKIYE  FROM(select LOGICALREF,ISLEMTARIHI,ISLEMTURU,TRANNO, (CASE WHEN BORC_ALACAK=0 THEN TUTAR ELSE 0 END) AS ALACAK,(CASE WHEN BORC_ALACAK=1 THEN TUTAR ELSE 0 END) AS BORC,VADE,LEFT(ISLEMACIKLAMASI,20) AS ISLEMACIKLAMASI from ISRG_Hesap_Extresi_" + baglanti.GFirma + " Where CLIENTREF=" + CLIENTREF + ") AS K ORDER BY ISLEMTARIHI desc ");
            RptBakiye.DataBind();
            RPTSonUTarih.DataSource = baglanti.TabloAl("Select max(DATE_)as SonTarih from LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_INVOICE where CANCELLED=0 and CLIENTREF=" + CLIENTREF + " GROUP BY CLIENTREF");
            RPTSonUTarih.DataBind();
            RPTFatSayi.DataSource = baglanti.TabloAl("select count(LOGICALREF) as Sayi from LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_INVOICE where TRCODE IN (3,8) and CLIENTREF=" + CLIENTREF + "");
            RPTFatSayi.DataBind();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
           // SepetRefresh();
        }
    }
}