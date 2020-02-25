using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using DevExpress.Web.ASPxGridView;
using DevExpress.Web;
using System.Collections;
using DevExpress.XtraExport;
using DevExpress.Web.ASPxGridView;
using DevExpress.XtraPrinting;
using DevExpress.Web.ASPxEditors;
using Telerik.Web.UI;
namespace seyhandagitim
{
    public partial class nsip : System.Web.UI.Page
    {

        SqlConnection cnn = new SqlConnection("Password='"+baglanti.PASSWORD+"';User ID='"+baglanti.USER+"';Initial Catalog="+baglanti.INITIAL+";Data Source="+baglanti.IPS+"");

        SqlCommand cmd = new SqlCommand();
        SqlCommand cmd2 = new SqlCommand();
        SqlCommand cmd3 = new SqlCommand();
        DataTable tablo = new DataTable();

        DataTable tablo2 = new DataTable();
        SqlDataReader oku;
        DataTable tablo3 = new DataTable();
        string yıl = login.yıl;




        protected void theme()
        {
            RadMenu1.Skin = plmain.themes;
            RadPanelBar1.Skin = plmain.themes;
            Button13.Skin = plmain.themes;
            TextBox1.Skin = plmain.themes;
            TextBox2.Skin = plmain.themes;
            RadGrid1.Skin = plmain.themes;
        }

        string sqlara;
        int AmbarNo = -1;
        protected void stokcek()
        {
            if (TextBox2.Text != "" && TextBox1.Text != "")
            {
                sqlara = "and(ITM.CODE Like '%" + TextBox2.Text + "%" + "' and ITM.NAME Like '%" + TextBox1.Text + "%" + "') ";
            }
            else if (TextBox2.Text != "" && TextBox1.Text == "")
            {
                sqlara = "and(ITM.CODE Like '%" + TextBox2.Text + "%" + "' ) ";
            }
            else if (TextBox2.Text == "" && TextBox1.Text != "")
            {
                sqlara = "and(ITM.NAME  Like '%" + TextBox1.Text + "%" + "') ";
            }

            HttpCookie user = Request.Cookies["myCerez"];
            HttpCookie giris = Request.Cookies["giris"];
            string yıl = login.yıl;
            cnn.Open();
            SqlDataAdapter kyt = new SqlDataAdapter("SELECT ITM.LOGICALREF, ITM.CODE AS Ürün_Kodu,ITM.NAME as Ürün_Adı,ITM.SPecode as Urun_Ozel,ISNULL(SAF.OAT,0) AS SAFiyatı,SAF.TARIH as SATarihi,ISNULL(PR1.PRICE,0)AS SatisFiyati,isnull(st.onhand,0)as G_Stok,(isnull(st.onhand,0)-isnull(st.RESERVED,0))AS F_Stok,ISNULL(SATILAN,0)AS Top_Satıs,R.CODE,R.UREF,ITM.VAT,R.SETREF " +
"FROM (SELECT LOGICALREF,CODE,NAME,SPECODE,PRODUCERCODE,VAT,UNITSETREF FROM LG_" + login.GDDonem + "_ITEMS WHERE ACTIVE=0 AND CLASSTYPE = 0) as ITM left outer join (SELECT STOCKREF,SUM(ONHAND)AS ONHAND,SUM(RESERVED) AS RESERVED,SUM(SALAMNT) AS SATILAN FROM       LG_" + login.GDDonem + "_" + login.GDFirma + "_STINVTOT WHERE INVENNO=-1 GROUP BY STOCKREF) as ST ON ITM.LOGICALREF=ST.STOCKREF LEFT OUTER JOIN ASRG_SONALISFIYATI AS SAF ON ITM.LOGICALREF=SAF.STOCKREF LEFT OUTER JOIN " +
"(SELECT PRICE,CARDREF,PTYPE,BEGDATE,ENDDATE,UOMREF,CLIENTCODE FROM dbo.LG_" + login.GDDonem + "_PRCLIST) AS PR1 ON ITM.LOGICALREF=PR1.CARDREF AND PR1.PTYPE=2 AND PR1.BEGDATE<=GETDATE() AND PR1.ENDDATE>=GETDATE() AND LEN(PR1.CLIENTCODE)=0 " +
"left outer JOIN (SELECT isnull(LOGICALREF,0) AS UREF,CODE, NAME AS BIRIM,UNITSETREF AS SETREF  FROM LG_" + login.GDDonem + "_UNITSETL where MAINUNIT=1) as R " +
"ON ITM.UNITSETREF=R.SETREF " +
"where ITM.LOGICALREF>0 " + sqlara + " ", cnn);
            kyt.Fill(tablo);

            RadGrid1.DataSource = tablo;
            RadGrid1.DataBind();
            cnn.Close();
        }
        protected void menucontrol()
        {
            HttpCookie user = Request.Cookies["cari"];
            HttpCookie giris = Request.Cookies["giris"];
            if (giris["Yetki"] == "1")
            {

            }
            if (giris["Yetki"] == "2")
            {
              //  Button5.Text = "Çıkış";
            }

        }
        protected void menuyonlendir()
        {
            HttpCookie user = Request.Cookies["cari"];
            HttpCookie giris = Request.Cookies["giris"];
            if (giris["Yetki"] == "1")
            {
                Response.Redirect("plmain.aspx");
            }
            if (giris["Yetki"] == "2")
            {
                Response.Redirect("default.aspx");
            }

        }
     
        protected void caricek()
        {

            HttpCookie user = Request.Cookies["myCerez"];
            HttpCookie giris = Request.Cookies["giris"];
            HttpCookie rft = Request.Cookies["cari"];
            cnn.Open();
            cmd.Connection = cnn;
            cmd.CommandText = "select DEFINITION_ from LG_" + login.GDDonem + "_CLCARD where LOGICALREF='" + user["LOGICALREF"] + "'";
            oku = cmd.ExecuteReader();
            while (oku.Read())
            {
                Label1.Text = oku[0].ToString();
                Label3.Text = rft["search"];

            }

            cnn.Close();


        }
        string miktar;
        string urunId, fiyat;
        string urunAd, Birim, stok;
        string @Kdv, @USRef, @UOMRef;
        protected void birimcek() {
            RadComboBox1.Items.Clear();
            cnn.Open();
            cmd.Connection = cnn;
            cmd.CommandText = "select CODE from LG_" + login.GDDonem + "_UNITSETL where UNITSETREF="+ @USRef +"   order by LINENR";
            oku = cmd.ExecuteReader();
            while (oku.Read())
            {
              
                RadComboBoxItem rci = new RadComboBoxItem();
              
                rci.Text = oku[0].ToString();
               
                RadComboBox1.Items.Add(rci);
            }

            cnn.Close();
        
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            RadPanelBar1.Items.FindItemByText("Geri", true).Attributes.Add("onClick", "javascript:history.back(); return false;");
            HttpCookie user = Request.Cookies["cari"];
            HttpCookie giris = Request.Cookies["giris"];
            caricek();
            if (!IsPostBack)
            {
                caricek();
                theme();
             
            }
         
            menucontrol();
          

        }
        string caristr = "SELECT DEFINITION_,LOGICALREF,CODE FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,SPECODE FROM LG_"+login.GDDonem+"_CLCARD WHERE ACTIVE=0) AS C ";
        string tooltipbtn;
        SqlDataReader oku2;
        string kodbul = "and LEFT(RIGHT(C.CODE,3),1)=";
        protected void carial()
        {
            cnn.Open();
            cmd2.Connection = cnn;
            cmd2.CommandText = "SELECT DEFINITION_,LOGICALREF,CODE FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,SPECODE FROM LG_"+login.GDDonem+"_CLCARD WHERE ACTIVE=0) AS C " + " WHERE DEFINITION_='" + Label1.Text + "' and LEFT(RIGHT(C.CODE,3),1)='" + tooltipbtn + "' ";
            oku2 = cmd2.ExecuteReader();
            while (oku2.Read())
            {
                HttpCookie cookie = new HttpCookie("cari");
                cookie["cariref"] = oku2[1].ToString();
                if (tooltipbtn == "P")
                {
                    cookie["label"] = "Peşin Hesap";
                    cookie["search"] = "P";
                     
                }
                else if (tooltipbtn == "V")
                {
                    cookie["label"] = "Vadeli Hesap";
                    cookie["search"] = "V";
                }
                else if (tooltipbtn == "S")
                {
                    cookie["label"] = "Sezonluk Hesap";
                    cookie["search"] = "S";
                }
                else if (tooltipbtn == "*")
                {
                    cookie["label"] = "Protesto Hesap";
                    cookie["search"] = "*";
                }
                cookie.Expires = DateTime.Now.AddDays(1);

                Response.Cookies.Add(cookie);
            }
            cnn.Close();
            Response.Redirect("nsip.aspx");
        }
        int carisayi = 0;
        protected void carivarmi()
        {
            cnn.Open();
            cmd.Connection = cnn;
            cmd.CommandText = "SELECT Count(DEFINITION_) FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,SPECODE FROM LG_"+login.GDDonem+"_CLCARD WHERE ACTIVE=0) AS C " + " WHERE DEFINITION_='" + Label1.Text + "' and LEFT(RIGHT(C.CODE,3),1)='" + tooltipbtn + "' ";
            oku = cmd.ExecuteReader();
            while (oku.Read())
            {
                carisayi = Convert.ToInt32(oku[0].ToString());
            }

            cnn.Close();


        }
       

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("nsip.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("cariextre1.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("fatura.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("xsip1.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            menuyonlendir();
        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            menuyonlendir();
        }

        protected void Button12_Click(object sender, EventArgs e)
        {

            Response.Redirect("sepet.aspx");
        }

        protected void grid_FilterControlParseValue(object sender, DevExpress.Web.ASPxEditors.FilterControlParseValueEventArgs e)
        {

        }

        protected void grid_RowCommand(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewRowCommandEventArgs e)
        {

        }

        protected void grid_CustomCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCustomCallbackEventArgs e)
        {

        }

        protected void grid_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {

        }

        protected void grid_CustomCallback1(object sender, ASPxGridViewCustomCallbackEventArgs e)
        {


        }
        protected void uruncek()
        {
           // ASPxTextBox2.Text = "0";

            string yıl = login.yıl;
            //cnn.Open();
            //cmd2.Connection = cnn;
            //cmd2.CommandText = "SELECT ITM.LOGICALREF, ITM.CODE AS Ürün_Kodu,ITM.NAME as Ürün_Adı,ITM.SPecode as Urun_Ozel,ISNULL(SAF.OAT,0) AS SAFiyatı,SAF.TARIH as SATarihi,ISNULL(PR1.PRICE,0)AS SatisFiyati,isnull(st.onhand,0)as G_Stok,isnull(st.RESERVED,0)AS F_Stok,ISNULL(SATILAN,0)AS Top_Satıs FROM (SELECT LOGICALREF,CODE,NAME,SPECODE,PRODUCERCODE FROM LG_" + login.GDDonem + "_ITEMS WHERE ACTIVE=0 AND CLASSTYPE = 0) as ITM left outer join (SELECT STOCKREF,SUM(ONHAND)AS ONHAND,SUM(RESERVED) AS RESERVED,SUM(SALAMNT) AS SATILAN FROM       LG_0" + yıl + "_" + login.GDFirma + "_STINVTOT WHERE INVENNO=-1 GROUP BY STOCKREF) as ST ON ITM.LOGICALREF=ST.STOCKREF LEFT OUTER JOIN ASRG_SONALISFIYATI AS SAF ON ITM.LOGICALREF=SAF.STOCKREF LEFT OUTER JOIN dbo.LG_0" + yıl + "_PRCLIST AS PR1 ON ITM.LOGICALREF=PR1.CARDREF AND PR1.PTYPE=2 AND PR1.BEGDATE<=GETDATE() AND PR1.ENDDATE>=GETDATE() AND LEN(PR1.CLIENTCODE)=0 where ITM.LOGICALREF='" + ASPxTextBox1.Text + "' ";
            //oku = cmd2.ExecuteReader();
            //while (oku.Read())
            //{

            //    ASPxTextBox2.Text = oku["SatisFiyati"].ToString();
            //}


            //cnn.Close();
        }
        long ASipId;
        string GSipId;
        protected void sipıdyap()
        {
            HttpCookie cari = Request.Cookies["cari"];
            HttpCookie giris = Request.Cookies["giris"];

            cnn.Open();
            cmd.Connection = cnn;
            cmd.CommandText = "select SipStr,SipID from ZTbLUseR where UserId='" + giris["userid"] + "'";
            oku = cmd.ExecuteReader();
            while (oku.Read())
            {
                ASipId = Convert.ToInt64(oku[1].ToString());
                GSipId =  oku[0].ToString()+"-"+(ASipId+1).ToString();
                sipId.Value = GSipId;

            }
            cnn.Close();


        }
        SqlCommand cmds = new SqlCommand();
        SqlCommand cmdc = new SqlCommand();
        SqlCommand cmdu = new SqlCommand();
        SqlDataReader oku3, oku4;
        protected void grid_CustomButtonCallback(object sender, ASPxGridViewCustomButtonCallbackEventArgs e)
        {
            if (e.ButtonID == "ekle")
            {
                RadWindow1.Visible = true;
                
            }
        }

        protected void grid_BeforeHeaderFilterFillItems(object sender, ASPxGridViewBeforeHeaderFilterFillItemsEventArgs e)
        {

        }

        protected void grid_ProcessColumnAutoFilter(object sender, ASPxGridViewAutoFilterEventArgs e)
        {

        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            stokcek();
         //   grid.Visible = true;
           // RadWindow1.VisibleOnPageLoad = true;
            RadGrid1.Visible = true;
           
        }

        protected void grid_PageIndexChanged(object sender, EventArgs e)
        {
            stokcek();
        }

        protected void Button10_Click(object sender, EventArgs e)
        {

        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("ceksenet.aspx");
        }

        protected void RadMenu1_ItemClick(object sender, Telerik.Web.UI.RadMenuEventArgs e)
        {
            if (RadMenu1.SelectedItem.Text == "Peşin")
            {
                tooltipbtn = "P";
                // Button1.BackColor = Color.Bisque;

                carial();
                HttpCookie rft = new HttpCookie("hesap");
                rft["btn"] = "P";
                rft.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(rft);

                carivarmi();
                if (carisayi != 0)
                {
                    RadPanelBar1.Visible = true;
                }
                else
                {

                    RadPanelBar1.Visible = false;
                }
         
            }
            if (RadMenu1.SelectedItem.Text == "Vadeli")
            {
                tooltipbtn = "V";
                carivarmi();
                HttpCookie rft = new HttpCookie("hesap");
                rft["btn"] = "V";
                rft.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(rft);
                if (carisayi != 0)
                {
                    RadPanelBar1.Visible = true;
                }
                else
                {
                    RadPanelBar1.Visible = false;
                }
                carial();
          
            }
            if (RadMenu1.SelectedItem.Text == "Sezonluk")
            {
                tooltipbtn = "S";
                carivarmi();
                HttpCookie rft = new HttpCookie("hesap");
                rft["btn"] = "S";
                rft.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(rft);
                if (carisayi != 0)
                {
                    RadPanelBar1.Visible = true;
                }
                else
                {
                    RadPanelBar1.Visible = false;
                }
                carial();
             
            }
            if (RadMenu1.SelectedItem.Text == "Protesto")
            {
                tooltipbtn = "*";
                carivarmi();
                HttpCookie rft = new HttpCookie("hesap");
                rft["btn"] = "Pro";
                rft.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(rft);
                if (carisayi != 0)
                {
                    RadPanelBar1.Visible = true;
                }
                else
                {
                    RadPanelBar1.Visible = false;
                }
                carial();
             
            }
        }

        protected void RadPanelBar1_ItemClick(object sender, Telerik.Web.UI.RadPanelBarEventArgs e)
        {
            HttpCookie cari = Request.Cookies["myCerez"];
            HttpCookie giris = Request.Cookies["giris"];
            if (RadPanelBar1.SelectedItem.Text == "Sipariş Oluştur")
            {
                string CariIDS = "";
                oku = baglanti.DataReaderAl("select CariId from ZTbL_Siparisler where UserID=" + giris["userid"] + " and Durum<>2");
                while (oku.Read())
                {
                    CariIDS = oku[0].ToString();
                }
                if (CariIDS == "" || CariIDS == cari["LOGICALREF"])
                {
                    Response.Redirect("nsip.aspx");
                }
                else
                {
                    return;
                }
            }
        }

        protected void Button13_Click1(object sender, EventArgs e)
        {

        }

        protected void grid_Init(object sender, EventArgs e)
        {
            
        }

        protected void grid_Load(object sender, EventArgs e)
        {
          
        }

        protected void RadGrid1_Load(object sender, EventArgs e)
        {
          
        }

        protected void RadGrid1_ItemCommand(object sender, Telerik.Web.UI.GridCommandEventArgs e)
        {
            if (e.CommandName=="")
            {
                
            }
        }
      
        protected void RadGrid1_ItemCommand1(object sender, Telerik.Web.UI.GridCommandEventArgs e)
        {
            LastPrice2.Text = "";
            RadNumericTextBox2.Text = "0,0";
            if (e.CommandName == "AC")
            {
             
                foreach (GridDataItem selectedItem in RadGrid1.SelectedItems)
                {
                    urunAd = selectedItem["Urun_Adi"].Text;
                    urunId = selectedItem["LOGICALREF"].Text;
                    fiyat = selectedItem["SatisFiyati"].Text;
                    stok= selectedItem["G_Stok"].Text;
                    @Kdv = selectedItem["VAT"].Text;
                    @USRef = selectedItem["SETREF"].Text;
                    @UOMRef = selectedItem["UREF"].Text;
                 //   Birim = selectedItem["SatisFiyati"].Text;
                }
                birimcek();
                ASPxTextBox1.Text = urunId;
                ASPxTextBox2.Text =fiyat;
                Label2.Text = urunAd;
                G_STOK.Value = stok;
               VAT.Value =@Kdv;
               // USREF1.Value = "0";
                //UOMREF1.Value = "0";
                HttpCookie user = Request.Cookies["myCerez"];
                oku = baglanti.DataReaderAl("SELECT TOP (1) LINENET / AMOUNT FROM LG_002_01_STLINE where CLIENTREF=" + user["LOGICALREF"] + " and STOCKREF=" + urunId + " and TRCODE=8 ORDER BY DATE_ DESC ");
                while (oku.Read())
                {
                    LastPrice2.Text = "Son Fiyat:"+oku[0].ToString().Replace(",",".");
                    RadNumericTextBox2.Text = oku[0].ToString().Replace(",", ".");
                }
                try
                {
                    if (Convert.ToInt16(@UOMRef) > 0)
                    {

                        oku = baglanti.DataReaderAl("select CODE from  LG_" + login.GDDonem + "_UNITSETL where LOGICALRef=" + @UOMRef + "");
                        while (oku.Read())
                        {
                            RadComboBox1.SelectedItem.Text = oku[0].ToString();
                            BirimTXT.Text = oku[0].ToString();
                        }

                    }
                }
                catch (Exception)
                {
                    
                
                }
           
               RadNumericTextBox2.Text = fiyat.Replace(",",".");
            //  RadNumericTextBox2.MinValue = Convert.ToDouble(fiyat);
               
                RadWindow1.VisibleOnPageLoad = true;
            }
        }
        protected void RadButton1_Click(object sender, EventArgs e)
        {
            if (RadNumericTextBox1.Text=="")
            {
                string message = "Miktar Giriniz.";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
            else
            {

         /*   ASPxSpinEdit se = grid.FindHeaderTemplateControl(grid.Columns[0], "ASPxSpinEdit1") as ASPxSpinEdit;
            int koruma = Convert.ToInt32(se.Text);
            if (se.Text == "" && koruma <= 0)
            {
                miktar = "1";
            }
            else
            {
                miktar = se.Text;
            }*/
            foreach (GridDataItem selectedItem in RadGrid1.SelectedItems)
            {
               
            }   
            miktar = RadNumericTextBox1.Text;
          
                HttpCookie user = Request.Cookies["myCerez"];
                HttpCookie cari = Request.Cookies["cari"];
                HttpCookie giris = Request.Cookies["giris"];
                /*sip kontrol*/
                sipıdyap();
                cnn.Open();
                cmdc.Connection = cnn;

                cmdc.CommandText = "select * from ZTbl_Siparisler where UrunId='" +ASPxTextBox1.Text + "' and SipNo='" + GSipId + "' and Durum<>2";
                oku4 = cmdc.ExecuteReader();
                if (oku4.Read())
                {
                    cnn.Close();
                    cnn.Open();
                    cmdu.Connection = cnn;

                    cmdu.CommandText = "update ZTbL_Siparisler set Miktar=Miktar+" + miktar + " where UrunId='" + urunId+ "' and SipNo='" + GSipId + "' and Durum<>2";
                    cmdu.ExecuteNonQuery();
                //    se.Text = "1";
                    /* mesaj verme*/
                  RadNumericTextBox1.Text = "1";
                    RadWindow1.VisibleOnPageLoad = false;
               
                }
                else
                {
                    
                    /** Ürün gstoğu hesapla ona göre yürü*/
                    cnn.Close();
                 
                  //   if (Convert.ToInt32(G_STOK.Value)>0)
                        {
                        
                         

                            uruncek();

                            Birim = BirimTXT.Text;
                            cnn.Open();
                            cmd.Connection = cnn;
                            cmd.CommandText = "insert into ztbl_siparisler(sipId,CariId,UrunId,SipNo,Miktar,UserId,Tarih,AddDate,Kampanya,BFiyat,FirmaNo,Aciklama,Birim,KdvOrani) values('" + (ASipId + 1).ToString() + "','" + user["LOGICALREF"] + "','" + ASPxTextBox1.Text + "','" + GSipId + "'," + miktar + ",'" + giris["userid"] + "','" + DateTime.Now.ToString("MM/dd/yy") + "','" + DateTime.Now.ToString("MM/dd/yy hh:mm:ss") + "',0," + RadNumericTextBox2.Text.Replace(",", ".") + ",'" + login.GDDonem + "','" + RadTextBox1.Text + "','" + Birim+ "',"+VAT.Value.ToString().Replace(",",".")+")";
                            cmd.ExecuteNonQuery();
                            cnn.Close();
                            // sepetcek();
                          //  se.Text = "1";
                           RadNumericTextBox1.Text = "1";
                            RadWindow1.VisibleOnPageLoad = false;
/* mesaj verme*/        
                       }
                     

               

                }


            }




            }
    

        protected void RadGrid1_Load1(object sender, EventArgs e)
        {
           
        }

        protected void RadGrid1_SelectedIndexChanged(object sender, EventArgs e)
        {
         
        }

        protected void RadGrid1_PageIndexChanged(object sender, GridPageChangedEventArgs e)
        {
            stokcek();
        }

        protected void RadDropDownList1_SelectedIndexChanged(object sender, DropDownListEventArgs e)
        {
      
        
        }

        protected void RadDropDownList1_SelectedIndexChanged1(object sender, DropDownListEventArgs e)
        {

        }

        protected void RadComboBox1_SelectedIndexChanged(object sender, RadComboBoxSelectedIndexChangedEventArgs e)
        {
            BirimTXT.Text = RadComboBox1.Text;
        }

        protected void RadWindow1_Load(object sender, EventArgs e)
        {

        }

        protected void ClearBtn_Click(object sender, EventArgs e)
        {

        }

        protected void RadButton2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }



    }
}