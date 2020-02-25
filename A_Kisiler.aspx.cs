using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace seyhandagitim
{
    public partial class A_Kisiler : System.Web.UI.Page
    {
        protected void FillTemsilci() 
        {
            RTPTemsilci.DataSource = baglanti.TabloAl("select UserId,CariAdi,EMAIL,TELNO,ACIKLAMA from ZTBlUser where SOHBET=1 order by CariAdi");
            RTPTemsilci.DataBind();
        
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            FillTemsilci();
        }
    }
}