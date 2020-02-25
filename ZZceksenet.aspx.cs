using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace seyhandagitim
{
    public partial class ZZceksenet : System.Web.UI.Page
    {
        protected void SenetList() {
            if (ASPxDateEdit1.Text == "") { ASPxDateEdit1.Date = DateTime.Now.AddDays(-15); } if (ASPxDateEdit2.Text == "") { ASPxDateEdit2.Date = DateTime.Now; }
            
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            GridCek.DataSource = baglanti.TabloAl("SELECT CS.LOGICALREF,CS.SETDATE AS Tarih,CS.PORTFOYNO as Portföy_No,CS.BANKNAME as Bankasi,CS.OWING as [Açıklama],CS.DUEDATE AS Vadesi,CS.BNBRANCHNO as SubeNo,CS.BNACCOUNTNO as HesapNo,CS.NEWSERINO as SeriNo,CS.AMOUNT as Tutar FROM LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_CSTRANS CST, LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_CSCARD CS   WHERE (CST.CSREF=CS.LOGICALREF) AND CST.CARDREF=" + CLIENTREF + " AND CARDMD=5 and CS.DUEDATE<='" + ASPxDateEdit2.Date.ToString("MM/dd/yy") + "' and CS.DUEDATE>='" + ASPxDateEdit1.Date.ToString("MM/dd/yy") + "'");
            GridCek.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            SenetList();
        }
    }
}