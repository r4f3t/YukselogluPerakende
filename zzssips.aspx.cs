using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace seyhandagitim
{
    public partial class zzssips : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string stockref = Request.QueryString["stref"];
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            ASPxGridView1.DataSource = baglanti.TabloAl("select O.FICHENO,O.DATE_,I.NAME as UrunAd,I.CODE as URUNKODU,SL.AMOUNT as Miktar,SL.PRICE as BRFiyat,SL.TOTAL as Tutar from LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_ORFLINE as SL inner join LG_" + baglanti.GFirma + "_ITEMS as I on I.LOGICALREF=SL.STOCKREF inner join LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_ORFICHE as O on SL.ORDFICHEREF=O.LOGICALREF where SL.STOCKREF=" + stockref + " and O.CLIENTREF=" + CLIENTREF + " ");
            ASPxGridView1.DataBind();
        }
    }
}