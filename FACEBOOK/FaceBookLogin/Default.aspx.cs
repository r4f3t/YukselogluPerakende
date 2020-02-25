using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FaceBookLogin
{
    public partial class Default : System.Web.UI.Page
    {
        FacebookIslemleri Face = new FacebookIslemleri();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFacebookBaglan_Click(object sender, EventArgs e)
        {
            var Link = Face.CrateLoginUrl().ToString();
            Response.Redirect(Link);
        }
    }
}