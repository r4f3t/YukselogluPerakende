using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using DevExpress.Web.ASPxGridView;
using DevExpress.Web.ASPxEditors;
using System.Data;
using Telerik.Web.UI;
using seyhandagitim.Services.Concrete;
using seyhandagitim.Models;

namespace seyhandagitim
{
    public partial class gsipSimple : System.Web.UI.Page
    {
        SqlDataReader Goku;
        ItemManager itemManager = new ItemManager();
        protected void TXTTemizle()
        {
            TXTGSEarchCode.Text = "";

        }


        protected string SQLSTRVer(string prefixText)
        {

            string NGSqlAra = "", SGSqlAra = "", CGSqlAra = "", STGSqlAra = "";
            int konum = prefixText.IndexOf(" ");
            int j = 0;
            string rft;
            while (konum != -1) //www.gorselprogramlama.com
            {
                konum = prefixText.IndexOf(" ", konum + 1);
                j++;
            }
            for (int i = 0; i <= j; i++)
            {
                rft = prefixText.Split(' ')[i].Replace(" ", "");
                //   NGSqlAra += " and replace(ITM.NAME3+ITM.NAME,' ','') ='" + rft + "' ";
                NGSqlAra += " and lower(replace(ITM.PRODUCERCODE+ITM.SPECODE+ITM.NAME+ITM.NAME3+ITM.SPECODE3+ITM.CODE+ITM.NAME4,' ','')) like '%" + rft.ToLower() + "%' or XI.B2BACK1='" + rft + "' or replace(XI.B2BACK1,' ','')='" + rft + "' or XI.B2BACK2='" + rft + "' or replace(XI.B2BACK2,' ','')='" + rft + "'  or XI.B2BACK3='" + rft + "' or replace(XI.B2BACK3,' ','')='" + rft + "' or XI.B2BACK4='" + rft + "' or replace(XI.B2BACK4,' ','')='" + rft + "' or XI.B2BACK5='" + rft + "' or replace(XI.B2BACK5,' ','')='" + rft + "' ";//andi or yaptık 28052016
            }

            return NGSqlAra;
        }



        int AmbarNo = -1;


        protected void FGridDoldur()
        {
            string sqlara = "";
            try
            {
                HttpCookie user = Request.Cookies["myCerez"];
                string CLIENTREF = user["CLIENTREF"];
                string SqlJoin = "";

                if (TXTGSEarchCode.Text != "")
                {
                    var dominantRefList = itemManager.GetHierarchyRefByCode(TXTGSEarchCode.Text).ToList();
                    GridPrepareData(dominantRefList, TXTGSEarchCode.Text);
                }
            }
            catch (Exception s)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('" + s.ToString() + "');", true);


            }
        }
        protected void GridPrepareData(List<ItemHierarchy> dominantRefs, string code)
        {
            var gridData = new List<Item>();

            gridData = itemManager.GetItemsByCode(code).OrderBy(x=>x.CODE).ToList();
            dominantRefs.ForEach(x =>
            {
                gridData.AddRange(itemManager.GetItemsByDominantRef(x).Where(r=> !gridData.Any(p=>p.LOGICALREF==r.LOGICALREF)));
            });

            GridItem.DataSource = gridData;
            GridItem.DataBind();
        }
        protected void GridSqlCommand(string sqlara, string SqlJoin)
        {

            SqlDataSource1.SelectCommand = "SELECT ITM.NAME3,ITM.LOGICALREF, ITM.CODE AS Ürün_Kodu,ITM.NAME as Ürün_Adı,ITM.SPecode as Urun_Ozel,ITM.SPECODE5 as SKURU,isnull(st.onhand,0)as G_Stok,(isnull(st.onhand,0)-isnull(st.RESERVED,0))AS F_Stok,R.CODE,R.UREF,ITM.VAT,R.SETREF,ITM.DOMINANTREFS5,ITM.STGRPCODE,ITM.SPECODE3,(CASE WHEN DOMINANTREFS5<>0 THEN 'Alternatifi de Var' else '' end) as ALTERNATE,ITM.SPECODE2,(CASE WHEN LEN(ITM.CYPHCODE)>0 THEN 'Kampanya Var' else '' end ) as ISKAMPANYA,Z.ACIKLAMA" +
              " FROM (SELECT CYPHCODE,LOGICALREF,CODE,NAME,SPECODE,VAT,UNITSETREF,ISONR,SPECODE5,STGRPCODE,DOMINANTREFS5,SPECODE3,SPECODE4,SPECODE2,PRODUCERCODE,NAME3,CARDTYPE,NAME4 FROM LG_" + baglanti.GFirma + "_ITEMS WHERE ACTIVE=0 AND CLASSTYPE = 0) as ITM left outer join (SELECT STOCKREF,SUM(ONHAND)AS ONHAND,SUM(RESERVED) AS RESERVED,SUM(SALAMNT) AS SATILAN FROM    " +
              " LV_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STINVTOT WHERE INVENNO=0 GROUP BY STOCKREF) as ST ON ITM.LOGICALREF=ST.STOCKREF left outer join" +
              " (SELECT isnull(LOGICALREF,0) AS UREF,CODE, NAME AS BIRIM,UNITSETREF AS SETREF  FROM LG_" + baglanti.GFirma + "_UNITSETL where MAINUNIT=1) as R  " +
              "ON ITM.UNITSETREF=R.SETREF left outer join LG_XT1001_" + baglanti.GFirma + " as XI on ITM.LOGICALREF=XI.PARLOGREF " +
              " left outer join " + baglanti.INITIAL2 + "..ZZ_StokSinir as Z on    isnull(st.onhand,0)>=Z.SMIN and  isnull(st.onhand,0)<=Z.SMAX  and ITM.SPECODE=Z.OK COLLATE Turkish_CI_AS " +
              " left outer join (select CODE from LOGOKAMP..IND_URUNMikVade ) as IUM on ITM.CODE=IUM.CODE COLLATE Turkish_CI_AS  "
              + " left outer join (select URUNKODU from LOGOKAMP..IND_URUN ) as ISF on ITM.CODE=ISF.URUNKODU COLLATE Turkish_CI_AS  "
              + SqlJoin +
              " where ITM.LOGICALREF>0 and ITM.CARDTYPE<>4 " + sqlara + " group by ITM.NAME3,ITM.CYPHCODE,Z.ACIKLAMA,ITM.LOGICALREF, ITM.CODE,ITM.NAME,ITM.SPecode ,ITM.SPECODE5,isnull(st.onhand,0),(isnull(st.onhand,0)-isnull(st.RESERVED,0)),R.CODE,R.UREF,ITM.VAT,R.SETREF,ITM.DOMINANTREFS5,ITM.STGRPCODE,ITM.SPECODE3,(CASE WHEN DOMINANTREFS5<>0 THEN 'Alternatifi VAR' else '' end),ITM.SPECODE2"
              + "  order by ITM.SPECODE";

            GridItem.DataBind();
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
            ASPxPopupControl1.PopupHorizontalAlign = DevExpress.Web.ASPxClasses.PopupHorizontalAlign.WindowCenter;
            ASPxPopupControl1.PopupVerticalAlign = DevExpress.Web.ASPxClasses.PopupVerticalAlign.WindowCenter;

            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            HttpCookie giris = Request.Cookies["giris"];
            string userid = giris["userid"];
            string yetki = giris["yetki"];

            SepetYenile();




        }

        protected void RadButton1_Click(object sender, EventArgs e)
        {
            FGridDoldur();


        }

        protected void GridItem_Load(object sender, EventArgs e)
        {

            FGridDoldur();

        }
        class ImageTemplate : ITemplate
        {
            public void InstantiateIn(Control container)
            {
                //Image image = new Image();
                //GridViewDataItemTemplateContainer gridContainer = (GridViewDataItemTemplateContainer)container;
                //string textField = DataBinder.Eval(gridContainer.DataItem, "G_Stok").ToString();
                //if (textField == "0")
                //    image.ImageUrl = "dogan/stokyok.png";
                //else
                //    image.ImageUrl = "dogan/stokvar.png";
                //container.Controls.Add(image);
            }
        }

        protected void GridItem_PageIndexChanged(object sender, EventArgs e)
        {
            //FGridDoldur();
        }

        protected void GridItem_PageSizeChanged(object sender, EventArgs e)
        {
            // FGridDoldur();
        }

        protected void BTNASepet_Click(object sender, EventArgs e)
        {

        }
        string GSipId;
        protected void GridItem_CustomButtonCallback(object sender, ASPxGridViewCustomButtonCallbackEventArgs e)
        {


        }

        protected void GridItem_HtmlDataCellPrepared(object sender, ASPxGridViewTableDataCellEventArgs e)
        {
            if (e.DataColumn.Caption == "Sipariş")
            {
                string KampSection = Request.QueryString["1923"];

                e.Cell.Attributes.Add("onclick", "EditorOnInit(" + e.KeyValue + ",'" + GridItem.GetRowValues(e.VisibleIndex, "Ürün_Kodu").ToString() + "-" + GridItem.GetRowValues(e.VisibleIndex, "Ürün_Adı").ToString() + "','" + KampSection + "');");

            }
            //if (e.DataColumn.Caption == "Alternatif")
            //{
            //    e.Cell.Attributes.Add("onclick", "ShowDetailPopup(" + GridItem.GetRowValues(e.VisibleIndex, "DOMINANTREFS5").ToString() + ");");
            //}
        }

        protected void ASPxCallbackPanel1_Callback(object sender, DevExpress.Web.ASPxClasses.CallbackEventArgsBase e)
        {

        }

        protected void GridItem_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e)
        {

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {

        }

        protected void GridItem_CustomButtonInitialize(object sender, ASPxGridViewCustomButtonEventArgs e)
        {
            if (e.VisibleIndex > 0)
            {
                //if (e.ButtonID == "CBtnSepet")
                //{
                //    HttpCookie user = Request.Cookies["myCerez"];
                //    string CLIENTREF = user["CLIENTREF"];
                //    string keyv = GridItem.GetRowValues(e.VisibleIndex, "LOGICALREF").ToString();
                //    SqlDataReader oku = baglanti.DataReaderAl("select LogicalRef,Miktar from ZTbl_Siparisler where UrunId=" + keyv + " and Durum=0 and CariId=" + CLIENTREF + "");
                //    if (oku.Read())
                //    {
                //        e.Enabled = false;
                //    }

                //}
                if (e.ButtonID == "CBtnHier")
                {

                    string keyv = GridItem.GetRowValues(e.VisibleIndex, "DOMINANTREFS5").ToString();


                }
            }

        }


        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]
        public static List<string> SearchCustomers(string prefixText, int count)
        {

            List<string> customers = new List<string>();
            if (prefixText != "")
            {
                string NGSqlAra = "", SGSqlAra = "", CGSqlAra = "", STGSqlAra = "";
                int konum = prefixText.IndexOf(" ");
                int j = 0;
                while (konum != -1) //www.gorselprogramlama.com
                {
                    konum = prefixText.IndexOf(" ", konum + 1);
                    j++;
                }
                for (int i = 0; i <= j; i++)
                {
                    NGSqlAra += " and replace(NAME,' ','') like '%" + prefixText.Split(' ')[i].Replace(" ", "") + "%' ";
                }
                for (int i = 0; i <= j; i++)
                {
                    SGSqlAra += " and replace(NAME3,' ','') like '%" + prefixText.Split(' ')[i].Replace(" ", "") + "%' ";
                }



                using (SqlConnection conn = baglanti.Connection())
                {
                    SqlDataReader oku2 = baglanti.DataReaderAl("select NAME from LG_" + baglanti.GFirma + "_ITEMS where ACTIVE=0 AND CLASSTYPE = 0 " + NGSqlAra + " group by NAME");
                    while (oku2.Read())
                    {
                        customers.Add(oku2["NAME"].ToString());
                    }
                    SqlDataReader oku4 = baglanti.DataReaderAl("select NAME3 from LG_" + baglanti.GFirma + "_ITEMS where ACTIVE=0 AND CLASSTYPE = 0 " + SGSqlAra + " group by NAME3");
                    while (oku4.Read())
                    {
                        customers.Add(oku4["NAME3"].ToString());
                    }


                }
            }
            return customers;
        }


        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]
        public static List<string> SearchCustomersCODE(string prefixText, int count)
        {

            List<string> customers = new List<string>();
            if (prefixText != "")
            {
                string NGSqlAra = "", SGSqlAra = "", CGSqlAra = "", STGSqlAra = "";
                int konum = prefixText.IndexOf(" ");
                int j = 0;
                while (konum != -1) //www.gorselprogramlama.com
                {
                    konum = prefixText.IndexOf(" ", konum + 1);
                    j++;
                }

                //for (int i = 0; i <= j; i++)
                //{
                //    SGSqlAra += " and replace(PRODUCERCODE,' ','') like '%" + prefixText.Split(' ')[i].Replace(" ", "") + "%' ";
                //}
                for (int i = 0; i <= j; i++)
                {
                    CGSqlAra += " and replace(ITEMCODE,' ','') like '" + prefixText.Split(' ')[i].Replace(" ", "") + "%'";
                }


                using (SqlConnection conn = baglanti.Connection())
                {
                    SqlDataReader oku = baglanti.DataReaderAl("select ITEMCODE from Y_Katalog..[CROSS] where 1=1 " + CGSqlAra + "");

                    while (oku.Read())
                    {
                        customers.Add(oku["ITEMCODE"].ToString());
                    }
                    //SqlDataReader oku2 = baglanti.DataReaderAl("select PRODUCERCODE from LG_" + baglanti.GFirma + "_ITEMS where ACTIVE=0 AND CLASSTYPE = 0 " + SGSqlAra + " group by PRODUCERCODE");
                    //while (oku2.Read())
                    //{
                    //    customers.Add(oku2["PRODUCERCODE"].ToString());
                    //}



                }
            }
            return customers;
        }


        protected void CMBMARKA_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CMBModel_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridItem_ProcessColumnAutoFilter(object sender, ASPxGridViewAutoFilterEventArgs e)
        {
            //FGridDoldur();
        }

        protected void btSearch_Click(object sender, EventArgs e)
        {
            GridItem.SettingsText.Title = "";



            GridItem.FilterExpression = "";

            FGridDoldur();

        }

        protected void TXTGSEarch_TextChanged(object sender, EventArgs e)
        {

            //  FGridDoldur();
        }

        protected void BTNTemizle_Click(object sender, EventArgs e)
        {
            GridItem.SettingsText.Title = "";
            GridItem.FilterExpression = "";

            FGridDoldur();

        }
        protected void TXTGSEarchCode_TextChanged(object sender, EventArgs e)
        {
            FGridDoldur();
        }











    }
}