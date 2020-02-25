using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace seyhandagitim
{
    public partial class gsip2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.QueryString["LOGICALREF"];
            GridItem.DataSource = baglanti.TabloAl("SELECT ITM.LOGICALREF, ITM.CODE AS Ürün_Kodu,ITM.NAME as Ürün_Adı,ITM.SPecode as Urun_Ozel,ISNULL(SAF.OAT,0) AS SAFiyatı,SAF.TARIH as SATarihi,ISNULL(PR1.PRICE,0)AS SatisFiyati,isnull(st.onhand,0)as G_Stok,(isnull(st.onhand,0)-isnull(st.RESERVED,0))AS F_Stok,ISNULL(SATILAN,0)AS Top_Satıs,R.CODE,R.UREF,ITM.VAT,R.SETREF " +
"FROM (SELECT LOGICALREF,CODE,NAME,SPECODE,PRODUCERCODE,VAT,UNITSETREF FROM LG_" + login.GDDonem + "_ITEMS WHERE ACTIVE=0 AND CLASSTYPE = 0) as ITM left outer join (SELECT STOCKREF,SUM(ONHAND)AS ONHAND,SUM(RESERVED) AS RESERVED,SUM(SALAMNT) AS SATILAN FROM       LG_" + login.GDDonem + "_" + login.GDFirma + "_STINVTOT WHERE INVENNO=-1 GROUP BY STOCKREF) as ST ON ITM.LOGICALREF=ST.STOCKREF LEFT OUTER JOIN ASRG_SONALISFIYATI AS SAF ON ITM.LOGICALREF=SAF.STOCKREF LEFT OUTER JOIN " +
"(SELECT PRICE,CARDREF,PTYPE,BEGDATE,ENDDATE,UOMREF,CLIENTCODE FROM dbo.LG_" + login.GDDonem + "_PRCLIST) AS PR1 ON ITM.LOGICALREF=PR1.CARDREF AND PR1.PTYPE=2 AND PR1.BEGDATE<=GETDATE() AND PR1.ENDDATE>=GETDATE() AND LEN(PR1.CLIENTCODE)=0 " +
"left outer JOIN (SELECT isnull(LOGICALREF,0) AS UREF,CODE, NAME AS BIRIM,UNITSETREF AS SETREF  FROM LG_" + login.GDDonem + "_UNITSETL where MAINUNIT=1) as R " +
"ON ITM.UNITSETREF=R.SETREF " +
"where ITM.LOGICALREF="+Label1.Text+" ");
            GridItem.DataBind();
        }
    }
}