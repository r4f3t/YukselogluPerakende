using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace seyhandagitim
{
    public partial class zzzPrint : System.Web.UI.Page
    {
        protected void VeriGetir() {
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            RPTCariAd.DataSource = baglanti.TabloAl("select DEFINITION_ as Cari_Adı,CODE,ADDR1,TELNRS1,TAXOFFICE from LG_" + baglanti.GFirma + "_CLCARD where LOGICALREF=" + CLIENTREF + "");
            RPTCariAd.DataBind();
            RPTURUNS.DataSource = baglanti.TabloAl("select S.LOGICALREF,U.NAME as UrunAd,U.CODE as CODE,S.AMOUNT as Miktar,S.PRICE as Bfiyat,(S.AMOUNT*S.PRICE) as TFiyat,((S.AMOUNT*S.PRICE*18)/100)+S.AMOUNT*S.PRICE as KDV,S.LINEEXP  from "+baglanti.INITIAL2+"..Z_SipLine as S inner join LG_"+baglanti.GFirma+"_ITEMS as U on S.STOCKREF=U.LOGICALREF where  S.DURUM=0 and S.CLIENTREF="+CLIENTREF+"");
            RPTURUNS.DataBind();

            RPTALTTOPLAMS.DataSource = baglanti.TabloAl("select (LineTutar+GenelI) as Toplam,LineTutar,GenelI,KDV,(LineTutar+KDV) as KDVli  from " + baglanti.INITIAL2 + "..ZZ_SEPALTTOP where CLIENTREF=" + CLIENTREF + "");
            RPTALTTOPLAMS.DataBind();

            RPTFisBas.DataSource = baglanti.TabloAl("select FICHENO from " + baglanti.INITIAL2 + "..Z_SipLine where DURUM=0 and CLIENTREF=" + CLIENTREF + " group by FICHENO ");
            RPTFisBas.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            VeriGetir();
        }
    }
}