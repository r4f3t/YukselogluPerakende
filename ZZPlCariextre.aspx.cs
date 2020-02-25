using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace seyhandagitim
{
    public partial class ZZPlCariextre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CLIENTREF = Request.QueryString["clref"];
            GridExtre.DataSource = baglanti.TabloAl("SELECT *,(SELECT SUM(b.TTUTAR)AS BAKIYE FROM ISRG_Hesap_Extresi_" + baglanti.GFirma + " AS b Where b.ISLEMTARIHI<=K.ISLEMTARIHI AND CLIENTREF=" + CLIENTREF + ")AS BAKIYE  FROM(select LOGICALREF,ISLEMTARIHI,ISLEMTURU,TRANNO, (CASE WHEN BORC_ALACAK=0 THEN TUTAR ELSE 0 END) AS ALACAK,(CASE WHEN BORC_ALACAK=1 THEN TUTAR ELSE 0 END) AS BORC,VADE,LEFT(ISLEMACIKLAMASI,20) AS ISLEMACIKLAMASI from ISRG_Hesap_Extresi_" + baglanti.GFirma + " Where CLIENTREF=" + CLIENTREF + " ) AS K ORDER BY ISLEMTARIHI,TRANNO ");
            GridExtre.DataBind();
        }
    }
}