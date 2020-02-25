using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace seyhandagitim
{
    public partial class ZZPlcbilg : System.Web.UI.Page
    {
        protected void Gridscek() {
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            grid1.DataSource = baglanti.TabloAl("SELECT     TOP 10 ST.LOGICALREF, dbo.LG_" + baglanti.GFirma + "_ITEMS.CODE,left(dbo.LG_" + baglanti.GFirma + "_ITEMS.NAME,28) as URUNADI, ST.AMOUNT as URUNMIKTARI, ST.LINENET/ST.AMOUNT as BIRIMFIYAT, ST.LINENET as SATIRTUTARI, ST.DISTDISC, ST.VATAMNT, ST.VATMATRAH,ST.INVOICEREF,ST.DATE_ FROM dbo.LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STLINE AS ST INNER JOIN dbo.LG_" + baglanti.GFirma + "_ITEMS ON ST.STOCKREF = dbo.LG_" + baglanti.GFirma + "_ITEMS.LOGICALREF INNER JOIN (SELECT     LOGICALREF, DEFINITION_ FROM  dbo.LG_" + baglanti.GFirma + "_CLCARD) AS C ON ST.CLIENTREF = C.LOGICALREF WHERE     (ST.CANCELLED = 0) AND (C.LOGICALREF = " + CLIENTREF + ") and ST.AMOUNT>0 ORDER BY ST.DATE_ DESC");
            grid1.DataBind();
            //grid2.DataSource = baglanti.TabloAl("SELECT     TOP 10 GRUP,GRUP2, URUNMIKTARI,URUNADI FROM         (SELECT     dbo.LG_" + baglanti.GFirma + "_ITEMS.NAME AS URUNADI,dbo.LG_" + baglanti.GFirma + "_ITEMS.STGRPCODE AS GRUP,dbo.LG_" + baglanti.GFirma + "_ITEMS.SPECODE AS GRUP2, SUM(dbo.LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STLINE.AMOUNT) AS URUNMIKTARI FROM          dbo.LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STLINE INNER JOIN dbo.LG_" + baglanti.GFirma + "_ITEMS ON dbo.LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STLINE.STOCKREF = dbo.LG_" + baglanti.GFirma + "_ITEMS.LOGICALREF INNER JOIN  (SELECT     LOGICALREF, DEFINITION_ FROM dbo.LG_" + baglanti.GFirma + "_CLCARD) AS C ON dbo.LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STLINE.CLIENTREF = C.LOGICALREF WHERE      (dbo.LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STLINE.CANCELLED = 0) AND (C.LOGICALREF=" + CLIENTREF + ") GROUP BY dbo.LG_" + baglanti.GFirma + "_ITEMS.NAME,dbo.LG_" + baglanti.GFirma + "_ITEMS.STGRPCODE,dbo.LG_" + baglanti.GFirma + "_ITEMS.SPECODE) AS T ORDER BY URUNMIKTARI DESC");
            //grid2.DataBind();
            //RPTENSON.DataSource = baglanti.TabloAl("SELECT     TOP 10 ST.LOGICALREF, dbo.LG_" + baglanti.GFirma + "_ITEMS.CODE,left(dbo.LG_" + baglanti.GFirma + "_ITEMS.NAME,28) as URUNADI, ST.AMOUNT as URUNMIKTARI, ST.PRICE BIRIMFIYAT, ST.TOTAL as SATIRTUTARI, ST.DISTDISC, ST.VATAMNT, ST.VATMATRAH,ST.INVOICEREF,ST.DATE_ FROM dbo.LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STLINE AS ST INNER JOIN dbo.LG_" + baglanti.GFirma + "_ITEMS ON ST.STOCKREF = dbo.LG_" + baglanti.GFirma + "_ITEMS.LOGICALREF INNER JOIN (SELECT     LOGICALREF, DEFINITION_ FROM  dbo.LG_" + baglanti.GFirma + "_CLCARD) AS C ON ST.CLIENTREF = C.LOGICALREF WHERE     (ST.CANCELLED = 0) AND (C.LOGICALREF = " + CLIENTREF + ") ORDER BY ST.DATE_ DESC");
            //RPTENSON.DataBind();
            //RPTENCOK.DataSource = baglanti.TabloAl("SELECT     TOP 10 GRUP,GRUP2, URUNMIKTARI,URUNADI FROM         (SELECT     dbo.LG_" + baglanti.GFirma + "_ITEMS.NAME AS URUNADI,dbo.LG_" + baglanti.GFirma + "_ITEMS.STGRPCODE AS GRUP,dbo.LG_" + baglanti.GFirma + "_ITEMS.SPECODE AS GRUP2, SUM(dbo.LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STLINE.AMOUNT) AS URUNMIKTARI FROM          dbo.LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STLINE INNER JOIN dbo.LG_" + baglanti.GFirma + "_ITEMS ON dbo.LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STLINE.STOCKREF = dbo.LG_" + baglanti.GFirma + "_ITEMS.LOGICALREF INNER JOIN  (SELECT     LOGICALREF, DEFINITION_ FROM dbo.LG_" + baglanti.GFirma + "_CLCARD) AS C ON dbo.LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STLINE.CLIENTREF = C.LOGICALREF WHERE      (dbo.LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STLINE.CANCELLED = 0) AND (C.LOGICALREF=" + CLIENTREF + ") GROUP BY dbo.LG_" + baglanti.GFirma + "_ITEMS.NAME,dbo.LG_" + baglanti.GFirma + "_ITEMS.STGRPCODE,dbo.LG_" + baglanti.GFirma + "_ITEMS.SPECODE) AS T ORDER BY URUNMIKTARI DESC");
            //RPTENCOK.DataBind();       
            RadHtmlChart1.DataSource = baglanti.TabloAl("SELECT month(ISLEMTARIHI) as Tarih,sum(Alacak) as ALACAK,sum(BORC) as BORC,(SELECT SUM(b.TTUTAR)AS BAKIYE FROM ISRG_Hesap_Extresi_" + baglanti.GFirma + " AS b Where month(b.ISLEMTARIHI)<=month(K.ISLEMTARIHI) AND CLIENTREF=" + CLIENTREF + ")AS BAKIYE  FROM(select LOGICALREF,ISLEMTARIHI,ISLEMTURU,TRANNO, (CASE WHEN BORC_ALACAK=0 THEN TUTAR ELSE 0 END) AS ALACAK,(CASE WHEN BORC_ALACAK=1 THEN TUTAR ELSE 0 END) AS BORC,VADE,LEFT(ISLEMACIKLAMASI,20) AS ISLEMACIKLAMASI from ISRG_Hesap_Extresi_" + baglanti.GFirma + " Where CLIENTREF=" + CLIENTREF + ") AS K group by month(K.ISLEMTARIHI)");
            RadHtmlChart1.DataBind();
        
        }
        protected void GrafikCiz() {
         //   HttpCookie user = Request.Cookies["myCerez"];
         //   string CLIENTREF = user["CLIENTREF"];

         //   System.Text.StringBuilder sb = new System.Text.StringBuilder();
         //   sb.Append("<script type = "+"text/javascript"+">");
         //   sb.Append("window.onload = function () {");
         //   sb.Append(" var chart = new CanvasJS.Chart("+"chartContainer"+",");
         //   sb.Append("{");
         //   sb.Append("animationEnabled: true,");
         //   sb.Append("animationDuration: 2000,");
         //   sb.Append(" title: {");
         //   sb.Append("text: "+"En Çok Alınan Ürünler"+"");
         //   sb.Append("},");
         //   sb.Append("data: [");
         //   sb.Append("{");
         //   sb.Append("type: "+"column"+",");
         //   sb.Append("dataPoints: [");
         //   //datacek
         ////   SqlDataReader oku = baglanti.DataReaderAl("SELECT     TOP 10 GRUP,GRUP2, URUNMIKTARI,URUNADI FROM         (SELECT     dbo.LG_" + baglanti.GFirma + "_ITEMS.NAME AS URUNADI,dbo.LG_" + baglanti.GFirma + "_ITEMS.STGRPCODE AS GRUP,dbo.LG_" + baglanti.GFirma + "_ITEMS.SPECODE AS GRUP2, SUM(dbo.LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STLINE.AMOUNT) AS URUNMIKTARI FROM          dbo.LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STLINE INNER JOIN dbo.LG_" + baglanti.GFirma + "_ITEMS ON dbo.LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STLINE.STOCKREF = dbo.LG_" + baglanti.GFirma + "_ITEMS.LOGICALREF INNER JOIN  (SELECT     LOGICALREF, DEFINITION_ FROM dbo.LG_" + baglanti.GFirma + "_CLCARD) AS C ON dbo.LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STLINE.CLIENTREF = C.LOGICALREF WHERE      (dbo.LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STLINE.CANCELLED = 0) AND (C.LOGICALREF=" + CLIENTREF + ") GROUP BY dbo.LG_" + baglanti.GFirma + "_ITEMS.NAME,dbo.LG_" + baglanti.GFirma + "_ITEMS.STGRPCODE,dbo.LG_" + baglanti.GFirma + "_ITEMS.SPECODE) AS T ORDER BY URUNMIKTARI DESC");
         //  // while (oku.Read()) {
         //  // sb.Append("{ x: "+oku[3].ToString()+", y: "+oku[2].ToString()+" },");
         //  // }
         //   //
         //   sb.Append("  { x: 10, y: 71 },");
         //   sb.Append("]");
         //   sb.Append("}");
         //   sb.Append("]");
         //   sb.Append("});");
         //   sb.Append("chart.render();");
         //   sb.Append("</script>");
         //   ClientScript.RegisterClientScriptBlock(this.GetType(), "", sb.ToString());
        }

        SqlDataReader oku;
        protected void DegerCheck()
        {
            HttpCookie user = Request.Cookies["myCerez"];

            HttpCookie giris = Request.Cookies["giris"];
            HttpCookie rft = Request.Cookies["cari"];
            string CLIENTREF = user["CLIENTREF"];

            oku = baglanti.DataReaderAl("select C.DEFINITION_,C.CODE,isnull(C.TELCODES1,0) as TELCODES1,isnull(C.TELCODES2,0) as TELCODES2,isnull(BK.BAKIYE,0) as BAKIYE from LG_" + baglanti.GFirma + "_CLCARD as C  left outer join (SELECT DEBIT - CREDIT AS BAKIYE,CARDREF FROM LV_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_GNTOTCL WHERE  (TOTTYP = 1) ) as BK on C.LOGICALREF=BK.CARDREF where C.LOGICALREF='" + CLIENTREF + "'");
            while (oku.Read())
            {
                HFRISK.Value = oku["TELCODES2"].ToString();
                HFVADE.Value = oku["TELCODES1"].ToString();
                HFBAKIYE.Value = oku["BAKIYE"].ToString();
            }

            oku = baglanti.DataReaderAl("SELECT ISNULL(SUM(TOTAL),0) AS GECIKEN FROM LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_PAYTRANS WHERE (CARDREF = " + CLIENTREF + ") AND (PAID=0) AND (CANCELLED=0) AND DATE_<GETDATE() and TRCODE<>1");
            if (oku.Read())
            {
                HFGECIKEN.Value = oku[0].ToString();
            }
        }
        protected void RISKCHECK()
        {
            //if (Convert.ToDouble(HFACIK.Value) > 0) { RadPanelBar1.Items[0].Enabled = false; }
            try
            {
                if (Convert.ToDouble(HFGECIKEN.Value) > 0) { PNLMenu.Visible = true; LBLHata.Text = Convert.ToDecimal(HFGECIKEN.Value).ToString("N"); }
                LBLVGelen.Text = (Convert.ToDecimal(HFBAKIYE.Value) - Convert.ToDecimal(HFGECIKEN.Value)).ToString("N");
                LBLBakiye.Text = Convert.ToDecimal(HFBAKIYE.Value).ToString("N");
            }
            catch (Exception)
            {
                
              
            }
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            DegerCheck();
            RISKCHECK();
           // GrafikCiz();
            Gridscek();
        }

    }
}