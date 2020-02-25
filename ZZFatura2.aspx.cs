using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace seyhandagitim
{
    public partial class ZZFatura2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string fisref = Request.QueryString["iref"];
            string clientref = Request.QueryString["clref"];
            string stockref = Request.QueryString["stref"];
            string docode = Request.QueryString["docode"];
          
            if (fisref!=null)
            {
                Panel2.Visible = false;
                Panel1.Visible = true;
                Repeater1.DataSource = baglanti.TabloAl("SELECT *,(CASE WHEN VATMATRAH <>0 THEN ((SATIRTUTARI/VATMATRAH)-1)*100 END) AS INDOR FROM [ISRG_FaturaDetaY_" + baglanti.GFirma + "]  WHERE ([INVOICEREF] = " + fisref + ") AND VATMATRAH<>0");
                Repeater1.DataBind();
                //Repeater2.DataSource = baglanti.TabloAl("SELECT sum(SATIRTUTARI) as ARATOPLAM,sum(VATMATRAH) as TOPLAM,round((sum(CASE WHEN VATMATRAH <>0 THEN ((SATIRTUTARI/VATMATRAH)-1)*100 END)),2) AS INDOR FROM [ISRG_FaturaDetaY_" + baglanti.GFirma + "] WHERE ([INVOICEREF] = " + fisref+ ") AND VATMATRAH<>0 group by INVOICEREF");
                //Repeater2.DataBind();
            }
            if (docode != null)
            {
                Panel2.Visible = false;
                Panel1.Visible = true;
                HttpCookie user = Request.Cookies["myCerez"];
                string CLIENTREF = user["CLIENTREF"];
                Repeater1.DataSource = baglanti.TabloAl("SELECT  URUNKODU, URUNADI, URUNMIKTARI,  SATIRTUTARI, DISTDISC, VATAMNT, VATMATRAH,(VATMATRAH/URUNMIKTARI) AS BIRIMFIYAT FROM [ISRG_FaturaDetaY_" + baglanti.GFirma + "] as L inner join LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_INVOICE as I on L.INVOICEREF=I.LOGICALREF WHERE (I.FICHENO = '" + docode + "') AND VATMATRAH<>0 and I.CLIENTREF="+CLIENTREF+"");
                Repeater1.DataBind();
                //Repeater2.DataSource = baglanti.TabloAl("select TOTALVAT,NETTOTAL,NETTOTAL-TOTALVAT as ARATOPLAM from LG_" + baglanti.GFirma + "_01_INVOICE where DOCODE='" + docode + "'");
                //Repeater2.DataBind();
            }
            if (stockref != null)
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
                HttpCookie user = Request.Cookies["myCerez"];
                string CLIENTREF = user["CLIENTREF"];
                detailGrid.DataSource = baglanti.TabloAl("SELECT  *,(CASE WHEN VATMATRAH <>0 THEN ((SATIRTUTARI/VATMATRAH)-1)*100 END) AS INDOR FROM [ISRG_FaturaDetaY_" + baglanti.GFirma + "] as L inner join (select Cariref,LOGICALREF,DATE_,FICHENO from ISRG_Faturalar_" + baglanti.GFirma + ") as F on L.INVOICEREF=F.LOGICALREF WHERE L.STOCKREF=" + stockref + " and F.CariReF=" + CLIENTREF + " AND VATMATRAH<>0 order by F.DATE_ desc");
                detailGrid.DataBind();
            }if (clientref!=null)
            {
                Panel2.Visible = false;
                Panel1.Visible = true;
                Repeater1.DataSource = baglanti.TabloAl("SELECT *,(CASE WHEN VATMATRAH <>0 THEN ((SATIRTUTARI/VATMATRAH)-1)*100 END) AS INDOR FROM [ISRG_FaturaDetaY_" + baglanti.GFirma + "] as L inner join (select Cariref,LOGICALREF,DATE_ from ISRG_Faturalar_" + baglanti.GFirma + ") as F on L.INVOICEREF=F.LOGICALREF WHERE (F.CariRef = " + clientref + ") AND VATMATRAH<>0 order by F.DATE_ desc");
                Repeater1.DataBind();
            }
            double sayi = 0;
            for (int i = 0; i < Repeater1.Items.Count; i++)
            {
                HiddenField HFVATMATRAH = Repeater1.Items[i].FindControl("HFVATMATRAH") as HiddenField;
                sayi += Convert.ToDouble(HFVATMATRAH.Value);
            }
            LBLTOPLAM.Text = Convert.ToDecimal(sayi).ToString("N");
            LBLKDV.Text = Convert.ToDecimal(sayi*0.18).ToString("N");
            LBLKDVTOPLAM.Text = Convert.ToDecimal(sayi * 1.18).ToString("N");
         
        }
    }
}