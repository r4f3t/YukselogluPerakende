using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxGridView;

using DevExpress.Web.ASPxEditors;
using System.Data;
using System.Data.SqlClient;


namespace seyhandagitim
{
    public partial class ZZZUAlternate : System.Web.UI.Page
    {

        protected void FGridDoldur()
        {
            string sqlara = "";
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            string GDOMREF=Request.QueryString["DOMREF"];
            if (GDOMREF!="0")
            {
                sqlara = " and (ITM.DOMINANTREFS5=" + GDOMREF + ") ";
            }
            else
            {
                Label1.Text = "Seçtiğiniz Ürünün Alternatifi Sistemde Bulunamadı.";
                return;
            }

          
            //if (CMBMarka.SelectedIndex>0)
            //{
            //    sqlara += " and ITM.SPECODE='" + CMBMarka.SelectedItem.Text + "' ";
            //}


            GridItem.DataSource = baglanti.TabloAl("SELECT ITM.LOGICALREF, ITM.CODE AS Ürün_Kodu,ITM.NAME as Ürün_Adı,ITM.SPecode as Urun_Ozel,ITM.SPECODE5 as SKURU,isnull(st.onhand,0)as G_Stok,(isnull(st.onhand,0)-isnull(st.RESERVED,0))AS F_Stok,R.CODE,R.UREF,ITM.VAT,R.SETREF,ITM.DOMINANTREFS5,ITM.STGRPCODE,ITM.SPECODE2,ITM.SPECODE3,(CASE WHEN DOMINANTREFS5<>0 THEN 'Alternatifi de Var' else '' end) as ALTERNATE,ITM.SPECODE2,(CASE WHEN LEN(ITM.CYPHCODE)>0 THEN 'Kampanya Var' else '' end ) as ISKAMPANYA,Z.ACIKLAMA" +
" FROM (SELECT CYPHCODE,LOGICALREF,CODE,NAME,SPECODE,VAT,UNITSETREF,ISONR,SPECODE5,STGRPCODE,DOMINANTREFS5,SPECODE3,SPECODE4,SPECODE2,PRODUCERCODE,NAME3,CARDTYPE,NAME4 FROM LG_" + baglanti.GFirma + "_ITEMS WHERE ACTIVE=0 AND CLASSTYPE = 0) as ITM left outer join (SELECT STOCKREF,SUM(ONHAND)AS ONHAND,SUM(RESERVED) AS RESERVED,SUM(SALAMNT) AS SATILAN FROM    " +
" LV_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STINVTOT WHERE INVENNO=0 GROUP BY STOCKREF) as ST ON ITM.LOGICALREF=ST.STOCKREF left outer join" +
" (SELECT isnull(LOGICALREF,0) AS UREF,CODE, NAME AS BIRIM,UNITSETREF AS SETREF  FROM LG_" + baglanti.GFirma + "_UNITSETL where MAINUNIT=1) as R  " +
"ON ITM.UNITSETREF=R.SETREF " +
 " left outer join " + baglanti.INITIAL2 + "..ZZ_StokSinir as Z on    isnull(st.onhand,0)>=Z.SMIN and  isnull(st.onhand,0)<=Z.SMAX  and ITM.SPECODE=Z.OK COLLATE Turkish_CI_AS                  " +
"where ITM.LOGICALREF>0  " + sqlara + " group by ITM.CYPHCODE,Z.ACIKLAMA,ITM.LOGICALREF, ITM.CODE,ITM.NAME,ITM.SPecode ,ITM.SPECODE5,isnull(st.onhand,0),(isnull(st.onhand,0)-isnull(st.RESERVED,0)),R.CODE,R.UREF,ITM.VAT,R.SETREF,ITM.DOMINANTREFS5,ITM.STGRPCODE,ITM.SPECODE3,(CASE WHEN DOMINANTREFS5<>0 THEN 'Alternatifi VAR' else '' end),ITM.SPECODE2"
+ " order by ITM.SPECODE");
            GridItem.DataBind();
            //GridViewDataColumn column = (GridViewDataColumn)GridItem.Columns[4];
            //column.DataItemTemplate = new ImageTemplate();

            HttpCookie giris = Request.Cookies["giris"];
            string userid = giris["userid"];

        }
        protected void SepetYenile()
        {
            HttpCookie giris = Request.Cookies["giris"];
            string userid = giris["userid"];
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];

        }

      
        protected void Page_Load(object sender, EventArgs e)
        {
            FGridDoldur();
        }
        protected void GridItem_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e)
        {

        }
        protected void GridItem_PageIndexChanged(object sender, EventArgs e)
        {
            FGridDoldur();
        }

        protected void GridItem_PageSizeChanged(object sender, EventArgs e)
        {
            FGridDoldur();
        }
        protected void GridItem_CustomButtonCallback(object sender, ASPxGridViewCustomButtonCallbackEventArgs e)
        {
            //string GSipId = "";
            //if (e.ButtonID == "CBtnSepet")
            //{
            //    TextBox textBox = GridItem.FindRowCellTemplateControl(e.VisibleIndex, GridItem.DataColumns[7], "TextBox1") as TextBox;
            //    string rft = textBox.Text;
            //    if (rft != "")
            //    {
            //        object value = (sender as DevExpress.Web.ASPxGridView.ASPxGridView).GetRowValues(e.VisibleIndex, "LOGICALREF");
            //        object BFiyat = (sender as DevExpress.Web.ASPxGridView.ASPxGridView).GetRowValues(e.VisibleIndex, "SatisFiyati");
            //        object UREF = (sender as DevExpress.Web.ASPxGridView.ASPxGridView).GetRowValues(e.VisibleIndex, "UREF");

            //        HttpCookie giris = Request.Cookies["giris"];
            //        HttpCookie user = Request.Cookies["MyCerez"];
            //        string CariId = user["CLIENTREF"];
            //        SqlDataReader oku = baglanti.DataReaderAl("select SipStr,SipID from ZTbLUseR where UserId='" + giris["userid"] + "'");
            //        if (oku.Read()) { GSipId = oku[0].ToString() + "-" + (Convert.ToInt64(oku[1].ToString()) + 1).ToString(); }
            //        baglanti.VeriIslemler("insert into ZTbL_Siparisler (CariId,UrunId,SipNo,Miktar,UserId,Tarih,BFiyat,FirmaNo,UREF)" +
            //        " values (" + CariId + "," + value.ToString() + ",'" + GSipId + "'," + rft.Replace(",", ".") + "," + giris["userid"] + ",'" + DateTime.Now.ToString("MM/dd/yyyy") + "'," + BFiyat.ToString().Replace(",", ".") + "," + baglanti.GFirma + "," + UREF.ToString() + ")");

            //    }
            //}
            //FGridDoldur();
        }

        protected void GridItem_ProcessColumnAutoFilter(object sender, ASPxGridViewAutoFilterEventArgs e)
        {
            FGridDoldur();
        }


        protected void GridItem_HtmlDataCellPrepared(object sender, ASPxGridViewTableDataCellEventArgs e)
        {
            if (e.DataColumn.Caption == "Miktar")
            {
                //HttpCookie user = Request.Cookies["myCerez"];
                //string CLIENTREF = user["CLIENTREF"];
                //SqlDataReader oku = baglanti.DataReaderAl("select LogicalRef,Miktar from ZTbl_Siparisler where UrunId=" + e.KeyValue + " and Durum=0 and CariId=" + CLIENTREF + "");
                //if (oku.Read())
                //{
                //    //TextBox textBox = GridItem.FindRowCellTemplateControl(e.VisibleIndex, GridItem.DataColumns[7], "TextBox1") as TextBox;
                //    //textBox.Enabled = false;
                //    //textBox.Text = oku[1].ToString();
                //}

            }
            if (e.DataColumn.Caption == "Sipariş")
            {
                e.Cell.Attributes.Add("onclick", "EditorOnInit(" + e.KeyValue + ",'" + GridItem.GetRowValues(e.VisibleIndex, "Ürün_Kodu").ToString() + "-" + GridItem.GetRowValues(e.VisibleIndex, "Ürün_Adı").ToString() + "');");

            }
            //if (e.DataColumn.Caption == "Ürün Adı")
            //{
            //    e.Cell.Attributes.Add("onmouseover", "EditorOnInit2(" + e.KeyValue + ");");
            //    e.Cell.Attributes.Add("onmouseout", "EditorDOWNInit2();");
            //}
      
        }
        protected void GridItem_Load(object sender, EventArgs e)
        {



        }

        protected void GridItem_CustomButtonInitialize(object sender, ASPxGridViewCustomButtonEventArgs e)
        {
            //if (e.VisibleIndex > 0)
            //{
            //    if (e.ButtonID == "CBtnSepet")
            //    {
            //        HttpCookie user = Request.Cookies["myCerez"];
            //        string CLIENTREF = user["CLIENTREF"];
            //        string keyv = GridItem.GetRowValues(e.VisibleIndex, "LOGICALREF").ToString();
            //        SqlDataReader oku = baglanti.DataReaderAl("select LogicalRef,Miktar from ZTbl_Siparisler where UrunId=" + keyv + " and Durum=0 and CariId=" + CLIENTREF + "");
            //        if (oku.Read())
            //        {
            //            e.Enabled = false;
            //        }

            //    }
            //    if (e.ButtonID == "CBtnHier")
            //    {

            //        string keyv = GridItem.GetRowValues(e.VisibleIndex, "DOMINANTREFS5").ToString();


            //    }
            //}

        }
    }
}