using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace seyhandagitim
{
    public partial class cbilg1 : System.Web.UI.Page
    {

        SqlConnection cnn = new SqlConnection("Password='" + baglanti.PASSWORD + "';User ID='" + baglanti.USER + "';Initial Catalog="+baglanti.INITIAL+";Data Source="+baglanti.IPS+"");

        SqlCommand cmd = new SqlCommand();
        SqlCommand cmd2 = new SqlCommand();
        SqlCommand cmd3 = new SqlCommand();
        DataTable tablo = new DataTable();
       
        DataTable tablo2 = new DataTable();
        SqlDataReader oku;
        DataTable tablo3 = new DataTable();
        string yıl = login.yıl;
        string def;
        public static string DEFINITION_;
        protected void caricek()
        {


            HttpCookie user = Request.Cookies["myCerez"];
            CariLogref.Value=user["LOGICALREF"];
            HttpCookie giris = Request.Cookies["giris"];
            HttpCookie rft = Request.Cookies["cari"];
            cnn.Open();
            cmd.Connection = cnn;
            cmd.CommandText = "select DEFINITION_,CODE from LG_"+login.GDDonem+"_CLCARD where LOGICALREF='"+user["LOGICALREF"]+"'";
            oku = cmd.ExecuteReader();
            while (oku.Read())
            {
                Label1.Text = oku[0].ToString();
                DEFINITION_ = Label1.Text;

                Label8.Text = rft["search"];

            }

            cnn.Close();
                              
           
        }

        protected void cookiecontrol()
        {
            HttpCookie cari = Request.Cookies["cari"];

            if (cari["search"] == "P")
            {
                Label3.ForeColor = Color.FromName("#fff");
                Label2.Text = "Peşin Hesabı";
               
            }
            if (cari["search"] == "V")
            {
                Label2.Text = "Vadeli Hesabı";
                Label4.ForeColor = Color.FromName("#fff");
            }
            if (cari["search"] == "S")
            {
               //Button3.BackColor = Color.Bisque;
                Label2.Text = "Sezonluk Hesabı";
                Label5.ForeColor = Color.FromName("#fff");
            }
            if (cari["search"] == "*")
            {
                  //Button4.BackColor = Color.Bisque;
                Label2.Text = "Protesto Hesabı";
                Label6.ForeColor = Color.FromName("#fff");
            }
        }
     
        protected void theme()
        {
          
            RadPanelBar1.Skin = plmain.themes;
            grid1.Skin = plmain.themes;
            grid2.Skin = plmain.themes;
            RadMenu1.Skin = plmain.themes;

        }
     
     
        protected void cirocek() {
            cnn.Open();
            cmd.Connection = cnn;
            cmd.CommandText = "SELECT     isnull(SUM(dbo.LG_" + login.GDDonem + "_" + login.GDFirma + "_INVOICE.NETTOTAL),0) FROM  dbo.LG_" + login.GDDonem + "_" + login.GDFirma + "_INVOICE  inner join (select LOGICALREF,DEFINITION_ from LG_" + login.GDDonem + "_CLCARD) as CL on CL.LOGICALREF= dbo.LG_" + login.GDDonem + "_" + login.GDFirma + "_INVOICE.CLIENTREF WHERE     (dbo.LG_" + login.GDDonem + "_" + login.GDFirma + "_INVOICE.TRCODE IN (8)) AND (dbo.LG_" + login.GDDonem + "_" + login.GDFirma + "_INVOICE.CANCELLED = 0) and CL.DEFINITION_='" + Label1.Text + "'";
            oku = cmd.ExecuteReader();
            while (oku.Read())
            {
                decimal sayı = Convert.ToDecimal(oku[0].ToString());
                Label9.Text=sayı.ToString("c");
            }
            cnn.Close();
        
        }
        protected void eatarih()
        {

            cnn.Open();
            cmd.Connection = cnn;
            cmd.CommandText = "SELECT   MAX(dbo.LG_" + login.GDDonem + "_" + login.GDFirma + "_INVOICE.DATE_) FROM          dbo.LG_" + login.GDDonem + "_" + login.GDFirma + "_INVOICE  inner join (select LOGICALREF,DEFINITION_ from LG_" + login.GDDonem + "_CLCARD) as CL on CL.LOGICALREF=LG_" + login.GDDonem + "_" + login.GDFirma + "_INVOICE.CLIENTREF WHERE     (dbo.LG_" + login.GDDonem + "_" + login.GDFirma + "_INVOICE.TRCODE IN (8,3)) AND (dbo.LG_" + login.GDDonem + "_" + login.GDFirma + "_INVOICE.CANCELLED = 0) and CL.DEFINITION_='" + Label1.Text + "'";
            oku = cmd.ExecuteReader();
            while (oku.Read())
            {
                try
                {
                    DateTime taym = Convert.ToDateTime(oku[0].ToString());

                    Label13.Text = taym.ToString("dd/MM/yyyy");
                }
                catch (Exception)
                {
                    Label13.Text = "Yok";
                
                }
               
            }
            cnn.Close();

        }
        protected void carik()
        {


            HttpCookie user = Request.Cookies["myCerez"];
            HttpCookie giris = Request.Cookies["giris"];
            cnn.Open();
            cmd.Connection = cnn;
            cmd.CommandText = "select DEFINITION_ from ZTbLUseR where UserId='"+giris["userid"]+"'";
            oku = cmd.ExecuteReader();
            while (oku.Read())
            {
                Label1.Text = oku[0].ToString();
                DEFINITION_ = Label1.Text;
            }

            cnn.Close();


        }
        protected void yetkicontrol() {
           
            HttpCookie giris = Request.Cookies["giris"];
            if (giris["Yetki"] == "1" || giris["Yetki"] == "3")
            {
                caricek();  
            }
            if (giris["Yetki"] == "2")
            {
                carik();
            }

        
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
                RadPanelBar1.Items.FindItemByText("Menu", true).Text = "Çıkış";
            }

        }
        protected void menuyonlendir()
        {
            HttpCookie user = Request.Cookies["cari"];
            HttpCookie giris = Request.Cookies["giris"];
            if (giris["Yetki"] == "1" || giris["Yetki"] == "3")
            {
                Response.Redirect("plmain.aspx");
            }
            if (giris["Yetki"] == "2")
            {
                Response.Redirect("default.aspx");
            }

        }
        //top10la
        private void top10cek (){
            cnn.Open();
            tablo.Clear();
            SqlDataAdapter kyt = new SqlDataAdapter("SELECT     TOP(10) dbo.LG_"+login.GDDonem+"_"+login.GDFirma+"_STLINE.LOGICALREF, dbo.LG_"+login.GDDonem+"_ITEMS.CODE AS URUNKODU, dbo.LG_"+login.GDDonem+"_ITEMS.NAME AS URUNADI,"+ 
                      "dbo.LG_"+login.GDDonem+"_"+login.GDFirma+"_STLINE.AMOUNT AS URUNMIKTARI, dbo.LG_"+login.GDDonem+"_"+login.GDFirma+"_STLINE.PRICE AS BIRIMFIYAT, dbo.LG_"+login.GDDonem+"_"+login.GDFirma+"_STLINE.TOTAL AS SATIRTUTARI, "+
                      "dbo.LG_"+login.GDDonem+"_"+login.GDFirma+"_STLINE.DISTDISC, dbo.LG_"+login.GDDonem+"_"+login.GDFirma+"_STLINE.VATAMNT, dbo.LG_"+login.GDDonem+"_"+login.GDFirma+"_STLINE.VATMATRAH, dbo.LG_"+login.GDDonem+"_"+login.GDFirma+"_STLINE.INVOICEREF"+
"FROM         dbo.LG_"+login.GDDonem+"_"+login.GDFirma+"_STLINE INNER JOIN"+
                   "   dbo.LG_"+login.GDDonem+"_ITEMS ON dbo.LG_"+login.GDDonem+"_"+login.GDFirma+"_STLINE.STOCKREF = dbo.LG_"+login.GDDonem+"_ITEMS.LOGICALREF"+
"INNER JOIN (SELECT  LOGICALREF,DEFINITION_ FROM LG_"+login.GDDonem+"_CLCARD) AS C ON LG_"+login.GDDonem+"_"+login.GDFirma+"_STLINE.CLIENTREF=C.LOGICALREF"+
"WHERE     (dbo.LG_"+login.GDDonem+"_"+login.GDFirma+"_STLINE.CANCELLED = 0) and (C.DEFINITION_ ='"+DEFINITION_+"')"+
"ORDER BY dbo.LG_"+login.GDDonem+"_"+login.GDFirma+"_STLINE.DATE_ DESC",cnn);
            kyt.Fill(tablo);
            grid1.DataSource = tablo;
            grid1.DataBind();
            cnn.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            RadPanelBar1.Items.FindItemByText("Geri", true).Attributes.Add("onClick", "javascript:history.back(); return false;");
            RadMenu1.Items.FindItemByText("Geri", true).Attributes.Add("onClick", "javascript:history.back(); return false;");
            //Button10.Attributes.Add("onClick", "javascript:history.back(); return false;");
            menucontrol();
            yetkicontrol();
            cookiecontrol();

            if (!IsPostBack)
            {
                yetkicontrol();
              
                theme();
            }
          
            cirocek();
            eatarih();
          
        }
        string caristr = "SELECT DEFINITION_,LOGICALREF,CODE FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,SPECODE FROM LG_"+login.GDFirma+"_CLCARD WHERE ACTIVE=0) AS C ";
        string tooltipbtn;
        SqlDataReader oku2;
        string kodbul = "and LEFT(RIGHT(C.CODE,3),1)=";
        protected void carial()
        {
            cnn.Open();
            cmd2.Connection = cnn;
            cmd2.CommandText = "SELECT DEFINITION_,LOGICALREF,CODE FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,SPECODE FROM LG_" + login.GDDonem + "_CLCARD WHERE ACTIVE=0) AS C " + " WHERE DEFINITION_='" + Label1.Text + "' and LEFT(RIGHT(C.CODE,3),1)='" + tooltipbtn + "' ";
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

        }
        int carisayi = 0;
        protected void carivarmi()
        {
            cnn.Open();
            cmd.Connection = cnn;
            cmd.CommandText = "SELECT Count(DEFINITION_) FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,SPECODE FROM LG_" + login.GDDonem + "_CLCARD WHERE ACTIVE=0) AS C " + " WHERE DEFINITION_='" + Label1.Text + "' and LEFT(RIGHT(C.CODE,3),1)='" + tooltipbtn + "' ";
            oku = cmd.ExecuteReader();
            while (oku.Read())
            {
                carisayi = Convert.ToInt32(oku[0].ToString());
            }

            cnn.Close();


        }
        protected void Button1_Click(object sender, EventArgs e)
        {

          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
         
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
           

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

        protected void Button10_Click(object sender, EventArgs e)
        {

        }

        protected void Button10_Click1(object sender, EventArgs e)
        {

        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Redirect("ceksenet.aspx");
        }

    

        protected void RadPanelBar1_ItemClick(object sender, Telerik.Web.UI.RadPanelBarEventArgs e)
        {
            HttpCookie cari = Request.Cookies["myCerez"];
            HttpCookie giris = Request.Cookies["giris"];
            if (RadPanelBar1.SelectedItem.Text == "Sipariş Oluştur")
            {
                string CariIDS = "";
                oku=baglanti.DataReaderAl("select CariId from ZTbL_Siparisler where UserID="+giris["userid"]+" and Durum<>2");
                while (oku.Read())
                {
                    CariIDS = oku[0].ToString();
                }
                if (CariIDS=="" || CariIDS==cari["LOGICALREF"])
                {
                    Response.Redirect("nsip.aspx");
                }
                else
                {
                    return;
                }
            }
        
        }    
    } 
}
