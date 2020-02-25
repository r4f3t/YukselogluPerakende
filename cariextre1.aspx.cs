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
    public partial class cariextre1 : System.Web.UI.Page
    {
        baglanti bag = new baglanti();


        SqlConnection cnn = new SqlConnection("Password='" + baglanti.PASSWORD + "';User ID='" + baglanti.USER + "';Initial Catalog=" + baglanti.INITIAL + ";Data Source=" + baglanti.IPS + "");


        SqlCommand cmd = new SqlCommand();
        SqlCommand cmd2 = new SqlCommand();
        SqlCommand cmd3 = new SqlCommand();
        DataTable tablo = new DataTable();

        DataTable tablo2 = new DataTable();
        SqlDataReader oku;
        DataTable tablo3 = new DataTable();
        public static string themes;
        protected void theme()
        {
            RadMenu1.Skin = plmain.themes;
            RadPanelBar1.Skin = plmain.themes;
            grid.Skin = plmain.themes;
            RadDatePicker1.Skin = plmain.themes;
            RadDatePicker2.Skin = plmain.themes;
            RadButton1.Skin = plmain.themes;

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

     
     
        protected void cbilgcek()
        {
            string yıl = login.yıl;
            HttpCookie user = Request.Cookies["myCerez"];
            HttpCookie giris = Request.Cookies["giris"];
            bag.acik();

            SqlDataAdapter kyt = new SqlDataAdapter("SELECT *,(SELECT SUM(b.TTUTAR)AS BAKIYE FROM ISRG_Hesap_Extresi_" + login.GDDonem + " AS b Where b.ISLEMTARIHI<=K.ISLEMTARIHI  AND CLIENTREF='" + user["LOGICALREF"] + "')AS BAKIYE  FROM(select LOGICALREF,ISLEMTARIHI,ISLEMTURU,TRANNO, (CASE WHEN BORC_ALACAK=0 THEN TUTAR ELSE 0 END) AS ALACAK,(CASE WHEN BORC_ALACAK=1 THEN TUTAR ELSE 0 END) AS BORC,VADE,ISLEMACIKLAMASI from ISRG_Hesap_Extresi_" + login.GDDonem + " Where CLIENTREF='" + user["cariref"] + "') AS K ORDER BY ISLEMTARIHI,TRANNO", bag.Gcnn);
                kyt.Fill(tablo);
                grid.DataSource = tablo;
                grid.DataBind();
           
           
           
         

            bag.kapali();
        }
        protected void cbilarama()
        {  int yil;
        
            yil = Convert.ToInt32(RadDatePicker2.SelectedDate.Value.Year.ToString()) - 2000;

            HttpCookie user = Request.Cookies["myCerez"];
            HttpCookie giris = Request.Cookies["giris"];
            bag.acik();
            tablo.Clear();

            SqlDataAdapter kyt = new SqlDataAdapter("SELECT *,(SELECT SUM(b.TTUTAR)AS BAKIYE FROM ISRG_Hesap_Extresi_" + login.GDDonem + " AS b Where b.ISLEMTARIHI<=K.ISLEMTARIHI AND CLIENTREF='" + user["LOGICALREF"] + "')AS BAKIYE  FROM(select LOGICALREF,ISLEMTARIHI,ISLEMTURU,TRANNO, (CASE WHEN BORC_ALACAK=0 THEN TUTAR ELSE 0 END) AS ALACAK,(CASE WHEN BORC_ALACAK=1 THEN TUTAR ELSE 0 END) AS BORC,VADE,LEFT(ISLEMACIKLAMASI,20) AS ISLEMACIKLAMASI from ISRG_Hesap_Extresi_" + login.GDDonem + " Where CLIENTREF='" + user["LOGICALREF"] + "' and ISLEMTARIHI>='" + RadDatePicker1.SelectedDate.Value.ToString("MM/dd/yy") + "' and ISLEMTARIHI<='" + RadDatePicker2.SelectedDate.Value.ToString("MM/dd/yy") + "') AS K ORDER BY ISLEMTARIHI,TRANNO", bag.Gcnn);
            kyt.Fill(tablo);
            grid.DataSource = tablo;
            grid.DataBind();
            bag.kapali();
        
     
        }
        protected void cbilAlacakToplam() {
            int yil;
            yil = Convert.ToInt32(RadDatePicker2.SelectedDate.Value.Year.ToString()) - 2000;
            HttpCookie user = Request.Cookies["myCerez"];
            HttpCookie giris = Request.Cookies["giris"];
            oku = baglanti.DataReaderAl("SELECT sum(TUTAR)as TOPTAHSIL from ISRG_Hesap_Extresi_"+login.GDDonem+" Where BORC_ALACAK=1 CLIENTREF='" + user["LOGICALREF"] + "' and ISLEMTARIHI>='" + RadDatePicker1.SelectedDate.Value.ToString("MM/dd/yy") + "' and ISLEMTARIHI<='" + RadDatePicker2.SelectedDate.Value.ToString("MM/dd/yy") + "'");
            while (oku.Read())
            {
                
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
            caricek();
          
            if (!IsPostBack)
            {
                RadDatePicker1.SelectedDate = Convert.ToDateTime("01.01.2015");
                RadDatePicker2.SelectedDate = DateTime.Now;
            
                
                    theme();
            }
            cbilarama();
           
          
        }
        string caristr = "SELECT DEFINITION_,LOGICALREF,CODE FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,SPECODE FROM LG_"+login.GDFirma+"5_CLCARD WHERE ACTIVE=0) AS C ";
        string tooltipbtn;
        SqlDataReader oku2;
        string kodbul = "and LEFT(RIGHT(C.CODE,3),1)=";
        protected void carial()
        {
            bag.acik();
            cmd2.Connection = bag.Gcnn;
            cmd2.CommandText = "SELECT DEFINITION_,LOGICALREF,CODE FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,SPECODE FROM LG_"+login.GDFirma+"5_CLCARD WHERE ACTIVE=0) AS C " + " WHERE DEFINITION_='" + Label1.Text + "' and LEFT(RIGHT(C.CODE,3),1)='" + tooltipbtn + "' ";
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
            bag.kapali();
            Response.Redirect("cariextre1.aspx");
        }
        int carisayi = 0;
        protected void carivarmi()
        {
            bag.acik();
            cmd.Connection = bag.Gcnn;
            cmd.CommandText = "SELECT Count(DEFINITION_) FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,SPECODE FROM LG_"+login.GDFirma+"5_CLCARD WHERE ACTIVE=0) AS C " + " WHERE DEFINITION_='" + Label1.Text + "' and LEFT(RIGHT(C.CODE,3),1)='" + tooltipbtn + "' ";
            oku = cmd.ExecuteReader();
            while (oku.Read())
            {
                carisayi = Convert.ToInt32(oku[0].ToString());
            }

            bag.kapali();


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
            cbilarama();
           
        }

        protected void grid_PageIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grid_CustomCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCustomCallbackEventArgs e)
        {
          
        }

        protected void Button11_Click(object sender, EventArgs e)
        {

        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Redirect("ceksenet.aspx");
        }

        protected void Button14_Click(object sender, EventArgs e)
        {

         
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
           
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

        protected void grid_Load(object sender, EventArgs e)
        {
            cbilarama();
        }

        protected void RadDatePicker2_SelectedDateChanged(object sender, Telerik.Web.UI.Calendar.SelectedDateChangedEventArgs e)
        {
            cbilarama();
        }

        protected void RadDatePicker1_SelectedDateChanged(object sender, Telerik.Web.UI.Calendar.SelectedDateChangedEventArgs e)
        {
            cbilarama();
        }
    }
}