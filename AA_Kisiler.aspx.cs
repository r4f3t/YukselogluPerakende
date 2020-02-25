using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace seyhandagitim
{
    public partial class AA_Kisiler : System.Web.UI.Page
    {
        protected void FillTemsilci()
        {
            string Tarih;
            RTPTemsilci.DataSource = baglantiChat.TabloAl(" select * from (select  KIMDEN,KIMDENSTR,max(ADDDATE) as SonTarih from ZZ_MSGLine where TEMSILCI=0 and OKUNDU=0 group by KIMDEN,KIMDENSTR) as K order by K.Sontarih desc");
            RTPTemsilci.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            FillTemsilci();
        }
    }
}