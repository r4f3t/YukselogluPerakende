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
using DevExpress.Web.ASPxThemes;
namespace seyhandagitim
{
    public partial class fatura : System.Web.UI.Page
    {

        SqlConnection cnn = new SqlConnection("Password='" + baglanti.PASSWORD + "';User ID='" + baglanti.USER + "';Initial Catalog=" + baglanti.INITIAL + ";Data Source=" + baglanti.IPS + "");

        SqlCommand cmd = new SqlCommand();
        SqlCommand cmd2 = new SqlCommand();
        SqlCommand cmd3 = new SqlCommand();
        DataTable tablo = new DataTable();

        DataTable tablo2 = new DataTable();
        SqlDataReader oku;
        DataTable tablo3 = new DataTable();
        protected void theme()
        {
           
            RadMenu1.Skin = plmain.themes;
            RadPanelBar1.Skin = plmain.themes;
              
            RadDatePicker1.Skin = plmain.themes;
            RadDatePicker2.Skin = plmain.themes;
            RadButton1.Skin = plmain.themes;
            if (plmain.themes == "Black")
            {
                grid.Theme = "BlackGlass";
            }
            if (plmain.themes == "Telerik")
            {
                grid.Theme = "DevEx";
            }

        }
        string yıl = login.yıl;
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
                Label2.Text = rft["search"];


            }

            cnn.Close();
        }

     
        protected void stokcek()
        { string sqlds;
            int yil;
          
                SqlDataSource3 = SqlDataSource1;
                yil = Convert.ToInt32(RadDatePicker2.SelectedDate.Value.Year.ToString()) - 2000;
                HttpCookie user = Request.Cookies["myCerez"];
                HttpCookie giris = Request.Cookies["giris"];
                tablo.Clear();
                cnn.Open();
                SqlDataAdapter kyt = new SqlDataAdapter("select LOGICALREF,DATE_,DRMX,FICHENO,YEKUN,MASRAF,INDIRIM,(NETTOTAL - (YEKUN - INDIRIM + MASRAF * 0.18))as KDV,NETTOTAL from ISRG_Faturalar_" + login.GDDonem + " Where CariREF='" + user["LOGICALREF"] + "' and DATE_ >='" + RadDatePicker1.SelectedDate.Value.ToString("MM/dd/yy") + "' and DATE_ <='" + RadDatePicker2.SelectedDate.Value.ToString("MM/dd/yy") + "' order by Date_", cnn);
                kyt.Fill(tablo);
                grid.DataSource = tablo;
             
                if (yil == 15)
                {
                    SqlDataSource1.SelectCommand = "SELECT *,CASE WHEN VATMATRAH <>0 THEN ((SATIRTUTARI/VATMATRAH)-1)*100 END AS INDOR FROM [ISRG_FaturaDetaY_" + login.GDDonem + "] WHERE ([INVOICEREF] = @INVOICEREF) AND VATMATRAH<>0";
                    SqlDataSource1.DataBind();
                  
                }
                grid.DataBind();
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
           //     Button5.Text = "Çıkış";
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
       
        protected void Page_Load(object sender, EventArgs e)
        {
            RadPanelBar1.Items.FindItemByText("Geri", true).Attributes.Add("onClick", "javascript:history.back(); return false;");
             menucontrol();
         
            caricek();
         
            if (!IsPostBack)
            {
                theme();
                RadDatePicker1.SelectedDate = Convert.ToDateTime("01.01.2016");
                RadDatePicker2.SelectedDate = DateTime.Now;
             
            }
            stokcek();
           
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
            Response.Redirect("fatura.aspx");
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
     
        protected void Button10_Click(object sender, EventArgs e)
        {
            stokcek();
        }

        protected void detailGrid_BeforePerformDataSelect(object sender, EventArgs e)
        {

            Session["LOGICALREF"] = (sender as ASPxGridView).GetMasterRowKeyValue();
        }

        protected void Button11_Click(object sender, EventArgs e)
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

        protected void RadMenu1_ItemClick(object sender, Telerik.Web.UI.RadMenuEventArgs e)
        {
            if (RadMenu1.SelectedItem.Text == "Peşin")
            {
                tooltipbtn = "P";
                // Button1.BackColor = Color.Bisque;

                carial();
                HttpCookie rft = new HttpCookie("hesap");
                rft["btn"] = tooltipbtn;
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
                rft["btn"] = tooltipbtn;
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
                rft["btn"] = tooltipbtn;
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

        protected void RadDatePicker2_SelectedDateChanged(object sender, Telerik.Web.UI.Calendar.SelectedDateChangedEventArgs e)
        {
            stokcek();
        }
    }
}