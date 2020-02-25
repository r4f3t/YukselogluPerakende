using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace seyhandagitim
{
    public partial class A_BekleyenSip : System.Web.UI.Page
    {
        protected void GridGetir() {
            string SqlAra = "";
            if (CMBSipDurumu.SelectedIndex!=-1)
            {
                if (CMBSipDurumu.SelectedItem.Value!="")
                {
                    SqlAra = " and F.STATUS="+CMBSipDurumu.SelectedItem.Value;
                }
            }
            HttpCookie user=Request.Cookies["MyCerez"];
            GridSips.DataSource = baglanti.TabloAl("select F.DOCODE,F.DATE_,I.NAME,I.CODE,L.AMOUNT-L.SHIPPEDAMOUNT as Kalan,L.SHIPPEDAMOUNT,L.PRICE from LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_ORFICHE as F inner join LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_ORFLINE as L on F.LOGICALREF=L.ORDFICHEREF inner join LG_" + baglanti.GFirma + "_ITEMS as I  on L.STOCKREF=I.LOGICALREF where L.SHIPPEDAMOUNT<AMOUNT and F.CANCELLED=0 AND l.CANCELLED=0 AND L.CLOSED=0 AND F.CLIENTREF=" + user["CLIENTREF"] + " "+SqlAra +" order by F.DATE_,F.DOCODE desc");
            GridSips.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            GridGetir();
        }
    }
}