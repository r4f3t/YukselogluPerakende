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
    public partial class stok1 : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection("Password='';User ID='Alpay';Initial Catalog=MY2;Data Source=95.9.67.14");

        SqlCommand cmd = new SqlCommand();
        SqlCommand cmd2 = new SqlCommand();
        SqlCommand cmd3 = new SqlCommand();
        DataTable tablo = new DataTable();
        string sqlara;
        protected void stokcek()
        {
            if (urunkod.Value!="" && urunadi.Value!="")
            {
                 sqlara = "and(ITM.CODE Like '" + urunkod.Value + "%" + "' and ITM.NAME Like '" + urunadi.Value + "%" + "') ";
            }
            else if (urunkod.Value!="" && urunadi.Value=="")
            {
               sqlara = "and(ITM.CODE Like '" + urunkod.Value + "%" + "' ) "; 
            }
            else if (urunkod.Value=="" && urunadi.Value!="")
            {
               sqlara = "and(ITM.NAME  Like '" + urunadi.Value + "%" + "') "; 
            }
           
            HttpCookie user = Request.Cookies["myCerez"];
            HttpCookie giris = Request.Cookies["giris"];
            string yıl = login.yıl;
            cnn.Open();
            SqlDataAdapter kyt = new SqlDataAdapter("SELECT ITM.LOGICALREF, ITM.CODE AS Ürün_Kodu,ITM.NAME as Ürün_Adı,ITM.SPecode as Urun_Ozel,ISNULL(SAF.OAT,0) AS SAFiyatı,SAF.TARIH as SATarihi,ISNULL(PR1.PRICE,0)AS SatisFiyati,isnull(st.onhand,0)as G_Stok,isnull(st.RESERVED,0)AS F_Stok,ISNULL(SATILAN,0)AS Top_Satıs FROM (SELECT LOGICALREF,CODE,NAME,SPECODE,PRODUCERCODE FROM LG_015_ITEMS WHERE ACTIVE=0 AND CLASSTYPE = 0) as ITM left outer join (SELECT STOCKREF,SUM(ONHAND)AS ONHAND,SUM(RESERVED) AS RESERVED,SUM(SALAMNT) AS SATILAN FROM       LG_0" + yıl + "_01_STINVTOT WHERE INVENNO=-1 GROUP BY STOCKREF) as ST ON ITM.LOGICALREF=ST.STOCKREF LEFT OUTER JOIN ASRG_SONALISFIYATI AS SAF ON ITM.LOGICALREF=SAF.STOCKREF LEFT OUTER JOIN dbo.LG_0" + yıl + "_PRCLIST AS PR1 ON ITM.LOGICALREF=PR1.CARDREF AND PR1.PTYPE=2 AND PR1.BEGDATE<=GETDATE() AND PR1.ENDDATE>=GETDATE() AND LEN(PR1.CLIENTCODE)=0 where ITM.LOGICALREF>0 "+sqlara+" ", cnn);
            kyt.Fill(tablo);
            grid.DataSource = tablo;
            grid.DataBind();
            cnn.Close();
        }
        DataTable tablo2 = new DataTable();
        protected void caricek()
        {
            string yıl = login.yıl;
            HttpCookie user = Request.Cookies["myCerez"];
            HttpCookie giris = Request.Cookies["giris"];
            cnn.Open();
            cmd3.Connection = cnn;
            cmd3.CommandText = "SELECT LOGICALREF,DEFINITION_ as CariAd,CITY as Sehir,SPECODE as Özel_kodu,SUM(PBAKIYE)AS Peşin,SUM(VBAKIYE)AS Vadeli,SUM(SBAKIYE)AS Sezon,SUM(DBAKIYE)AS Sorunlu FROM( SELECT LOGICALREF,DEFINITION_,CITY,SPECODE,ROUND(DEBIT-CREDIT,2) AS PBAKIYE,0 AS VBAKIYE,0 AS SBAKIYE,0 AS DBAKIYE FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,SPECODE FROM LG_0" + yıl + "_CLCARD WHERE ACTIVE=0) AS C INNER JOIN(SELECT CARDREF,TOTTYP,DEBIT,CREDIT FROM LG_0" + yıl + "_01_GNTOTCL) AS CL ON C.LOGICALREF=CL.CARDREF WHERE LEFT(RIGHT(C.CODE,3),1)='P' Union All SELECT LOGICALREF,DEFINITION_,CITY,SPECODE,0 AS PBAKIYE,ROUND(DEBIT-CREDIT,2) AS VBAKIYE,0 AS SBAKIYE,0 AS DBAKIYE FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,SPECODE FROM LG_0" + yıl + "_CLCARD WHERE ACTIVE=0) AS C INNER JOIN(SELECT CARDREF,TOTTYP,DEBIT,CREDIT FROM LG_0" + yıl + "_01_GNTOTCL) AS CL ON C.LOGICALREF=CL.CARDREF WHERE LEFT(RIGHT(C.CODE,3),1)='V' Union All SELECT LOGICALREF,DEFINITION_,CITY,SPECODE,0 AS PBAKIYE,0 AS VBAKIYE,0 AS SBAKIYE,ROUND(DEBIT-CREDIT,2) AS DBAKIYE FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,SPECODE FROM LG_0" + yıl + "_CLCARD WHERE ACTIVE=0) AS C INNER JOIN(SELECT CARDREF,TOTTYP,DEBIT,CREDIT FROM LG_0" + yıl + "_01_GNTOTCL) AS CL ON C.LOGICALREF=CL.CARDREF WHERE LEFT(RIGHT(C.CODE,3),1)='*' Union All SELECT LOGICALREF,DEFINITION_,CITY,SPECODE,0 AS PBAKIYE,0 AS VBAKIYE,ROUND(DEBIT-CREDIT,2) AS SBAKIYE,0 AS DBAKIYE FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,SPECODE FROM LG_0" + yıl + "_CLCARD WHERE ACTIVE=0) AS C INNER JOIN(SELECT CARDREF,TOTTYP,DEBIT,CREDIT FROM LG_0" + yıl + "_01_GNTOTCL) AS CL ON C.LOGICALREF=CL.CARDREF WHERE  LEFT(RIGHT(C.CODE,3),1)='S') AS Y where LOGICALREF='" + user["LOGICALREF"] + "' GROUP BY DEFINITION_,CITY,SPECODE,LOGICALREF";

            oku = cmd3.ExecuteReader();
            while (oku.Read())
            {
                Label1.Text = oku[0].ToString();
                Label2.Text = oku[1].ToString();
            }

            cnn.Close();
        }
        DataTable tablo3 = new DataTable();
        SqlDataReader oku2;
        string yıl = login.yıl;
        protected void sepetcek() {
           
            HttpCookie user = Request.Cookies["myCerez"];
            HttpCookie giris = Request.Cookies["giris"];
            HttpCookie cari = Request.Cookies["cari"];
            cnn.Open();
           
            SqlDataAdapter kyt = new SqlDataAdapter("select S.LogicalREF,U.NAME as UrunAd,S.Miktar as Miktar,S.BFiyat as Bfiyat  from ZTbL_Siparisler as S left outer join LG_015_ITEMS as U on S.UrunId=U.LOGICALREF where S.CariID='" + cari["cariref"] + "'", cnn);
            kyt.Fill(tablo3);
          /*  sepgrid.DataSource = tablo3;
            sepgrid.DataBind();*/
           
            cmd3.Connection = cnn;
            cmd3.CommandText = "select * from ZTbL_Siparisler where CariId='" + cari["cariref"] + "'";
            oku2=cmd3.ExecuteReader();
            if (oku2.Read())
            {
                sepgrid.Visible = true;
            }
            else
            {
                sepgrid.Visible = false;    
            }
            cnn.Close();
          
        
        
        }
        protected void rpeaterbilgicek()
        {
            HttpCookie user = Request.Cookies["myCerez"];
            HttpCookie giris = Request.Cookies["giris"];
            HttpCookie cari = Request.Cookies["cari"];
            cnn.Open();
            SqlDataAdapter kyt = new SqlDataAdapter("SELECT LOGICALREF,DEFINITION_ as CariAd,CITY as Sehir,SPECODE as Özel_kodu,SUM(PBAKIYE)AS Peşin,SUM(VBAKIYE)AS Vadeli,SUM(SBAKIYE)AS Sezon,SUM(DBAKIYE)AS Sorunlu FROM( SELECT LOGICALREF,DEFINITION_,CITY,SPECODE,ROUND(DEBIT-CREDIT,2) AS PBAKIYE,0 AS VBAKIYE,0 AS SBAKIYE,0 AS DBAKIYE FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,SPECODE FROM LG_0" + yıl + "_CLCARD WHERE ACTIVE=0) AS C INNER JOIN(SELECT CARDREF,TOTTYP,DEBIT,CREDIT FROM LG_0" + yıl + "_01_GNTOTCL) AS CL ON C.LOGICALREF=CL.CARDREF WHERE LEFT(RIGHT(C.CODE,3),1)='P' Union All SELECT LOGICALREF,DEFINITION_,CITY,SPECODE,0 AS PBAKIYE,ROUND(DEBIT-CREDIT,2) AS VBAKIYE,0 AS SBAKIYE,0 AS DBAKIYE FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,SPECODE FROM LG_0" + yıl + "_CLCARD WHERE ACTIVE=0) AS C INNER JOIN(SELECT CARDREF,TOTTYP,DEBIT,CREDIT FROM LG_0" + yıl + "_01_GNTOTCL) AS CL ON C.LOGICALREF=CL.CARDREF WHERE LEFT(RIGHT(C.CODE,3),1)='V' Union All SELECT LOGICALREF,DEFINITION_,CITY,SPECODE,0 AS PBAKIYE,0 AS VBAKIYE,0 AS SBAKIYE,ROUND(DEBIT-CREDIT,2) AS DBAKIYE FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,SPECODE FROM LG_0" + yıl + "_CLCARD WHERE ACTIVE=0) AS C INNER JOIN(SELECT CARDREF,TOTTYP,DEBIT,CREDIT FROM LG_0" + yıl + "_01_GNTOTCL) AS CL ON C.LOGICALREF=CL.CARDREF WHERE LEFT(RIGHT(C.CODE,3),1)='*' Union All SELECT LOGICALREF,DEFINITION_,CITY,SPECODE,0 AS PBAKIYE,0 AS VBAKIYE,ROUND(DEBIT-CREDIT,2) AS SBAKIYE,0 AS DBAKIYE FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,SPECODE FROM LG_0" + yıl + "_CLCARD WHERE ACTIVE=0) AS C INNER JOIN(SELECT CARDREF,TOTTYP,DEBIT,CREDIT FROM LG_0" + yıl + "_01_GNTOTCL) AS CL ON C.LOGICALREF=CL.CARDREF WHERE  LEFT(RIGHT(C.CODE,3),1)='S') AS Y where LOGICALREF='" + user["LOGICALREF"] + "' GROUP BY DEFINITION_,CITY,SPECODE,LOGICALREF", cnn);
            kyt.Fill(tablo3);
            Repeater1.DataSource = tablo3;
            Repeater1.DataBind();
            cnn.Close();

         

        }
        protected void cookiecontrol() {
            HttpCookie cari = Request.Cookies["cari"];
            if (cari["search"]=="P")
            {
                  Button3.BackColor = Color.Bisque;
                  Label3.Text = "Peşin Hesabı";
            }
            if (cari["search"] == "V")
            {
                Button4.BackColor = Color.Bisque;
                Label3.Text = "Vadeli Hesabı";
            }
            if (cari["search"] == "S")
            {
                Button5.BackColor = Color.Bisque;
                Label3.Text = "Sezonluk Hesabı";
            }
            if (cari["search"] == "*")
            {
                Button6.BackColor = Color.Bisque;
                Label3.Text = "Protesto Hesabı";
            }
        
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            caricek();
          /*  if (!IsPostBack)
            {
              sepetcek();  
            }*/
            cookiecontrol();
            rpeaterbilgicek();
            HttpCookie cari = Request.Cookies["cari"];
            Label5.Text=cari["cariref"];

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            grid.Visible = true;
            stokcek();
            Button2.Visible = true;
        }

        protected void grid_PageIndexChanged(object sender, EventArgs e)
        {
            stokcek();
        }
        SqlDataReader oku;
        protected void uruncek()
        {

        
            string yıl = login.yıl;
            cnn.Open();
            cmd2.Connection = cnn;
            cmd2.CommandText = "select PR.PRICE from LG_015_ITEMS as ITM left outer join  LG_015_PRCLIST as PR on ITM.LOGICALREF=PR.CARDREF where ITM.LOGICALREF='"+ASPxTextBox1.Text+"' ";
            oku = cmd2.ExecuteReader();
            while (oku.Read())
            {

                ASPxTextBox2.Text = oku["PRICE"].ToString();
            }


            cnn.Close();


        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            uruncek();
   HttpCookie user = Request.Cookies["myCerez"];
            HttpCookie cari = Request.Cookies["cari"];
            HttpCookie giris = Request.Cookies["giris"];
        
            int urunref = Convert.ToInt32(ASPxTextBox1.Text);
            double sayi=Convert.ToDouble(ASPxTextBox2.Text);
           
            cnn.Open();
            cmd.Connection = cnn;
            cmd.CommandText = "insert into ztbl_siparisler(sipId,CariId,UrunId,SipNo,Miktar,UserId,Tarih,AddDate,Kampanya,BFiyat) values(1000,'" + cari["cariref"] + "','" + urunref + "',1000,1,'" + giris["cariref"] + "','" + DateTime.Now.ToString("MM/dd/yy") + "','" + DateTime.Now.ToString("MM/dd/yy hh:mm:ss") + "',0,'" + sayi.ToString().Replace(",",".") + "')";
            cmd.ExecuteNonQuery();
            cnn.Close();
           // sepetcek();
            
           sepgrid.DataBind();
      
        }
        DataTable siptablo = new DataTable();
        protected void sepgrid_CustomCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCustomCallbackEventArgs e)
        {
        }
          string caristr = "SELECT DEFINITION_,LOGICALREF,CODE FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,SPECODE FROM LG_015_CLCARD WHERE ACTIVE=0) AS C ";
        string tooltipbtn;
       
        string kodbul = "and LEFT(RIGHT(C.CODE,3),1)=";
        protected void carial()
        {
            cnn.Open();
            cmd2.Connection = cnn;
            cmd2.CommandText = "SELECT DEFINITION_,LOGICALREF,CODE FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,SPECODE FROM LG_015_CLCARD WHERE ACTIVE=0) AS C " + " WHERE DEFINITION_='" + Label2.Text + "' and LEFT(RIGHT(C.CODE,3),1)='" + tooltipbtn + "' ";
            oku2 = cmd2.ExecuteReader();
            while (oku2.Read())
            {
                Label5.Text=oku2["LOGICALREF"].ToString();
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
            cmd.CommandText = "SELECT Count(DEFINITION_) FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,SPECODE FROM LG_015_CLCARD WHERE ACTIVE=0) AS C " + " WHERE DEFINITION_='" + Label2.Text + "' and LEFT(RIGHT(C.CODE,3),1)='" + tooltipbtn + "' ";
            oku = cmd.ExecuteReader();
            while (oku.Read())
            {
                carisayi = Convert.ToInt32(oku[0].ToString());
            }
            
            cnn.Close();


        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            tooltipbtn = "P";
            Button3.BackColor = Color.Bisque;

            carial();
            Label3.Text = "Peşin Hesap";
            Button4.BackColor = Color.FromName("");
            Button5.BackColor = Color.FromName("");
            Button6.BackColor = Color.FromName("");
            carivarmi();
            if (carisayi != 0)
            {
                Button8.Visible = true;
                Button9.Visible = true;
                Button10.Visible = true;
                Button11.Visible = true;
            }
            else
            {
                Button8.Visible = false;
                Button9.Visible = false;
                Button10.Visible = false;
                Button11.Visible = false;
            }
            sepgrid.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            tooltipbtn = "V";
            Button4.BackColor = Color.Bisque;

            carial();
            Label3.Text = "Vadeli Hesap";
            Button3.BackColor = Color.FromName("");
            Button5.BackColor = Color.FromName("");
            Button6.BackColor = Color.FromName("");
            carivarmi();
            if (carisayi != 0)
            {
                Button8.Visible = true;
                Button9.Visible = true;
                Button10.Visible = true;
                Button11.Visible = true;
            }
            else
            {
                Button8.Visible = false;
                Button9.Visible = false;
                Button10.Visible = false;
                Button11.Visible = false;
            }
            sepgrid.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            tooltipbtn = "S";
            Button5.BackColor = Color.Bisque;

            carial();
            Label3.Text = "Sezonluk Hesap";
            Button4.BackColor = Color.FromName("");
            Button3.BackColor = Color.FromName("");
            Button6.BackColor = Color.FromName("");
            carivarmi();
            if (carisayi != 0)
            {
                Button8.Visible = true;
                Button9.Visible = true;
                Button10.Visible = true;
                Button11.Visible = true;
            }
            else
            {
                Button8.Visible = false;
                Button9.Visible = false;
                Button10.Visible = false;
                Button11.Visible = false;
            }
            sepgrid.DataBind();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            tooltipbtn = "*";
            Button6.BackColor = Color.Bisque;

            carial();
            Label3.Text = "Protesto Hesabı";
            Button4.BackColor = Color.FromName("");
            Button5.BackColor = Color.FromName("");
            Button3.BackColor = Color.FromName("");
            carivarmi();
            if (carisayi != 0)
            {
                Button8.Visible = true;
                Button9.Visible = true;
                Button10.Visible = true;
                Button11.Visible = true;
            }
            else
            {
                Button8.Visible = false;
                Button9.Visible = false;
                Button10.Visible = false;
                Button11.Visible = false;
            }
            sepgrid.DataBind();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("main.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("stok.aspx"); 
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("cariextre.aspx");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("xsip.aspx");
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            if (sepgrid.Visible==true)
            {
              sepgrid.Visible = false;  
            }
            else
            {
                sepgrid.Visible = true;
                sepgrid.DataBind();
            }
            }
          
    }
}