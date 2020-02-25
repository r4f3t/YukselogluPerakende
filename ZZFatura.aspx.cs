using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace seyhandagitim
{
    public partial class ZZFatura : System.Web.UI.Page
    {
        protected void GridCek() {
            if (ASPxDateEdit1.Text == "") { ASPxDateEdit1.Date = DateTime.Now.AddDays(-15); } if (ASPxDateEdit2.Text == "") { ASPxDateEdit2.Date = DateTime.Now; }
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            GridFatura.DataSource = baglanti.TabloAl("select LOGICALREF,DATE_,DRMX,FICHENO,YEKUN,MASRAF,INDIRIM,(NETTOTAL - (YEKUN - INDIRIM + MASRAF * 0.18))as KDV,NETTOTAL from ISRG_Faturalar_" + baglanti.GFirma + " Where CariREF="+CLIENTREF+" and DATE_>='"+ASPxDateEdit1.Date.ToString("MM/dd/yyyy")+"' and DATE_<='"+ASPxDateEdit2.Date.ToString("MM/dd/yyyy")+"' order by Date_");
            GridFatura.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            if (!IsPostBack)
            {
                ASPxDateEdit1.Date = Convert.ToDateTime(DateTime.Now.Year.ToString() + "-" + "01-01");
                ASPxDateEdit2.Date = DateTime.Now;
            }
            GridCek();

           
        }

        protected void GridFatura_HtmlDataCellPrepared(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewTableDataCellEventArgs e)
        {
            if (e.DataColumn.FieldName == "FICHENO")
            {
                e.Cell.Attributes.Add("onclick", "ShowDetailPopup('" + e.KeyValue + "');");
                
            }
        }

        protected void ASPxCallbackPanel1_Callback(object sender, DevExpress.Web.ASPxClasses.CallbackEventArgsBase e)
        {

        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {

        }
    }
}