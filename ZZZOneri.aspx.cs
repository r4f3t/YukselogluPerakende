using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace seyhandagitim
{
    public partial class ZZZOneri : System.Web.UI.Page
    {
        protected void RPTCEK() {
            string LOWLEVELREF=Request.QueryString["LOWLEVELREF"];
            string stockref = Request.QueryString["URUNID"];
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            RPTONERi.DataSource = baglanti.TabloAl("select I.CODE,I.LOGICALREF,I.DOMINANTREFS5,I.SPECODE3,(CASE WHEN I.DOMINANTREFS5=0 then '' ELSE 'Alternatifi VAR' end ) as VY,Z.ACIKLAMA from " + baglanti.INITIAL2 + "..A_CROSSITEM as C inner join LG_" + baglanti.GFirma + "_ITEMS as I on C.YANURUN=I.LOGICALREF "+
             " left outer join (SELECT STOCKREF,SUM(ONHAND)AS ONHAND,SUM(RESERVED) AS RESERVED,SUM(SALAMNT) AS SATILAN FROM    LV_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STINVTOT WHERE INVENNO=0 GROUP BY STOCKREF) as ST ON I.LOGICALREF=ST.STOCKREF" +
                " left outer join " + baglanti.INITIAL2 + "..ZZ_StokSinir as Z on    isnull(st.onhand,0)>=Z.SMIN and  isnull(st.onhand,0)<=Z.SMAX  and I.SPECODE=Z.OK COLLATE Turkish_CI_AS  "
                +" LEFT OUTER JOIN (select * from   " + baglanti.INITIAL2 + "..Z_SipLine where CLIENTREF=" + CLIENTREF + " and DURUM=0) as ZS on I.LOGICALREF=ZS.STOCKREF where ZS.STOCKREF is null and  C.STOCKREF=" + stockref + " order by CODE asc");
            RPTONERi.DataBind();
        }
        protected void URLCHECK() {
            try
            {
                string STOCKREF = Request.QueryString["stockref"];
                string DOMREF = Request.QueryString["DOMREF"];
                if (STOCKREF != null && DOMREF == null) 
                {
                    string UCODE = Request.QueryString["UCODE"];
                    string startUpScript = string.Format("window.parent.HidePopupAndShowInfoOneri('Server'," + STOCKREF + ",'" + UCODE + "');");
                    RPTCEK();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "ANY_KEY", startUpScript, true);
                }
                else if(DOMREF!=null)
	            {
                    string UCODE = Request.QueryString["UCODE"];
                    string startUpScript = string.Format("window.parent.ShowDetailPopup(" + DOMREF + ");");
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "ANY_KEY", startUpScript, true);
                    RPTCEK();
                }
                else
                {
                    RPTCEK();
                }
            }
            catch (Exception)
            {

            } 
        
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                URLCHECK();    
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string sayfaYenile=Request.QueryString["sayfaYenile"];
            string startUpScript = string.Format("window.parent.HidePopupAndShowInfo('Server',0,0,'"+sayfaYenile+"');");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "ANY_KEY", startUpScript, true);  
        }
    }
}