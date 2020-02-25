using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace seyhandagitim
{
    public partial class defo : System.Web.UI.Page
    {
        
        protected void SLIDERCEK() {
            //Repeater1.DataSource = baglanti.TabloAl("select ICERIK from AP_CONTENTS where PAGEID=1 and SITEID=1 order by PLACES");
            //Repeater1.DataBind();
            //Repeater2.DataSource = baglanti.TabloAl("select ICERIK from AP_CONTENTS where PAGEID=1 and SITEID=1");
            //Repeater2.DataBind();
            //Repeater3.DataSource = baglanti.TabloAl("select top 1 LEFT(ICERIK,300)as ICERIK from AP_CONTENTS where PAGEID=2 and SITEID=1 order by LOGICALREF desc");
            //Repeater3.DataBind();
            Response.Redirect("login.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            SLIDERCEK();
        }
    }
}