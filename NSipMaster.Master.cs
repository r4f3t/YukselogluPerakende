using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace seyhandagitim
{
    public partial class NSipMaster : System.Web.UI.MasterPage
    {
        string URLC;
        protected void Page_Load(object sender, EventArgs e)
        {   
            HttpCookie giris = Request.Cookies["giris"];
            string yetki = giris["yetki"];
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            RPTCikis.DataSource=baglanti.TabloAl("select URLC from ZZ_URLS where YETKI="+yetki+"");
            RPTCikis.DataBind();
            RPTCiro.DataSource = baglanti.TabloAl("select isnull(sum(NETTOTAL),0) as Ciro,CLIENTREF from LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_INVOICE where TRCODE IN (8) and CANCELLED = 0 and CLIENTREF=" + CLIENTREF + " group by CLIENTREF");
            RPTCiro.DataBind();
            RPTCariAd.DataSource = baglanti.TabloAl("select DEFINITION_ as Cari_Adı from LG_" + baglanti.GFirma + "_CLCARD where LOGICALREF=" + CLIENTREF + "");
            RPTCariAd.DataBind();
            RptBakiye.DataSource = baglanti.TabloAl("SELECT top 1 (SELECT SUM(b.TTUTAR)AS BAKIYE FROM ISRG_Hesap_Extresi_" + baglanti.GFirma + " AS b Where b.ISLEMTARIHI<=K.ISLEMTARIHI AND CLIENTREF=" + CLIENTREF + ")AS BAKIYE  FROM(select LOGICALREF,ISLEMTARIHI,ISLEMTURU,TRANNO, (CASE WHEN BORC_ALACAK=0 THEN TUTAR ELSE 0 END) AS ALACAK,(CASE WHEN BORC_ALACAK=1 THEN TUTAR ELSE 0 END) AS BORC,VADE,LEFT(ISLEMACIKLAMASI,20) AS ISLEMACIKLAMASI from ISRG_Hesap_Extresi_" + baglanti.GFirma + " Where CLIENTREF=" + CLIENTREF + ") AS K ORDER BY ISLEMTARIHI desc ");
            RptBakiye.DataBind();
            RPTSonUTarih.DataSource = baglanti.TabloAl("Select max(DATE_)as SonTarih from LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_INVOICE where CANCELLED=0 and CLIENTREF=" + CLIENTREF + " GROUP BY CLIENTREF");
            RPTSonUTarih.DataBind();
            RPTILKTARIH.DataSource = baglanti.TabloAl("Select min(DATE_)as SonTarih from LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_INVOICE where CANCELLED=0 and CLIENTREF=" + CLIENTREF + " GROUP BY CLIENTREF");
            RPTILKTARIH.DataBind();
            RptSepet.DataSource = baglanti.TabloAl("select count(SipID) as Sepet from ZTbL_Siparisler where Durum=0 and CariId=" + CLIENTREF + "");
            RptSepet.DataBind();
            RPTFatSayi.DataSource = baglanti.TabloAl("select count(LOGICALREF) as Sayi from LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_INVOICE where TRCODE IN (3,8) and CLIENTREF=" + CLIENTREF + "");
            RPTFatSayi.DataBind();
            RPTFATORT.DataSource = baglanti.TabloAl("select  isnull(sum(NETTOTAL),0)/COUNT(LOGICALREF) as FATORT from LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_INVOICE where TRCODE IN (8) and CANCELLED = 0 and CLIENTREF=" + CLIENTREF + " group by CLIENTREF");
            RPTFATORT.DataBind();
            RPTSEPETBD.DataSource = baglanti.TabloAl("select (CASE WHEN count(SipID)>0 THEN 'd' ELSE 'b' END ) as PIC from ZTbL_Siparisler where Durum=0 and CariId=" + CLIENTREF + " ");
            RPTSEPETBD.DataBind();
        }
    }
}