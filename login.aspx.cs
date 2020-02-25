using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using seyhandagitim;

namespace seyhandagitim
{
    
    public partial class login : System.Web.UI.Page
    {
      
        //Global Değişkenlerimiz G...
        public static string yıl = "17", GDFirma = "01", GEFirma = "", GDDonem = "002", GEDonem = "017";
        baglanti bag = new baglanti();
        
        SqlCommand cmd = new SqlCommand();
        SqlCommand cmd2 = new SqlCommand();
        SqlCommand cmd3 = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            text1.Focus();
            HttpCookie cookie = new HttpCookie("giris");
            if (cookie["giris"] == null)
            {

            }
            else
            {
                Response.Redirect("default.aspx");
            }
        }
       
         int yetki;
         string zaman;
        protected void Button1_Click(object sender, EventArgs e)
        {
            zaman = DateTime.Now.ToString("MM/dd/yyyy");
          //  if (DateTime.Now >= Convert.ToDateTime("2016-10-01")) { return; }
            bag.acik();
            cmd.Connection = bag.Gcnn;
          //  cmd.CommandText = "select * from ZTbLUseR where Adi=@User and Sifresi=@Pass and CONVERT(VARCHAR(12),STIME,114)<'" + zaman + "' and  CONVERT(VARCHAR(12),FTIME,114)>'" + zaman + "'";
            cmd.CommandText = "select * from ZTbLUseR where Adi=@User and Sifresi=@Pass and FLAG=0 ";
            cmd.Parameters.AddWithValue("@User",text1.Value);
            cmd.Parameters.AddWithValue("@Pass", text2.Value);
            SqlDataReader oku;
            oku = cmd.ExecuteReader();
            
            if (oku.Read())
            {
                if (oku["UserId"].ToString() != "860" || oku["UserId"].ToString() != "861")
                {
                    return;
                }
                HttpCookie cookie = new HttpCookie("giris");
                cookie["user"] = text1.Value;
                cookie["pass"] = oku["Sifresi"].ToString();
                cookie["flag"] = oku["Yetkisi"].ToString();
                cookie["cariref"] = oku["CariSTR"].ToString();
                cookie["userid"] = oku["UserId"].ToString();
                cookie["yetki"] = oku["Yetkisi"].ToString();
                cookie["sipstr"] = oku["SipSTR"].ToString();
                cookie["PLCODE"] = oku["PLCODE"].ToString();
                cookie["LFiyatg"] = oku["LFiyat"].ToString();
                yetki = Convert.ToInt32(oku["Yetkisi"].ToString());
                cookie["yil"] = "15";
                cookie["CariAdi"] = oku["CariAdi"].ToString();
                Session["CariAdi"] = oku["CariAdi"].ToString();
                cookie["SOHBET"] = oku["SOHBET"].ToString();
                cookie.Expires = DateTime.Now.AddDays(1);
               
               
                Response.Cookies.Add(cookie);
                HttpCookie cari = new HttpCookie("cari");
                cari["cariref"] = "";
                cari.Expires = DateTime.Now.AddDays(1);

                Response.Cookies.Add(cari);
                HttpCookie rft = new HttpCookie("hesap");
                rft["btn"] = "";
                rft.Expires = DateTime.Now.AddDays(1);

                Response.Cookies.Add(rft);
              
                    HttpCookie musteri = new HttpCookie("myCerez");
                    musteri["CLIENTREF"] = oku["CLIENTREF"].ToString();

                    if (yetki == 2)
                    {
                        string GFirmaKodu = "";
                        SqlDataReader oku2 = baglanti.DataReaderAl("select CODE,SPECODE FROM LG_" + baglanti.GFirma + "_CLCARD where LOGICALREF=" + oku["CLIENTREF"].ToString() + "");
                        if (oku2.Read())
                        {
                            GFirmaKodu = oku2["CODE"].ToString();
                            if (GFirmaKodu.Substring(GFirmaKodu.Length - 2, 2) == " 9")
                            {
                                musteri["DIVISION"] = "1";
                                musteri["TRADINGGRP"] = "02 MAVi";
                                musteri["KDVVAR"] = "1";
                            }
                            else 
                            {
                                musteri["TRADINGGRP"] = "01 SİYAH";
                                musteri["KDVVAR"] = "0";
                            }
                        }
                        else
                        {
                            return;
                        }
                    }
                    musteri.Expires = DateTime.Now.AddDays(1);
                    Response.Cookies.Add(musteri);
                bag.kapali();
                //string ZiyaretciIPsi = "";
                //if (HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"] != null)
                //{
                //    ZiyaretciIPsi = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"].ToString();
                //}
                //else if (HttpContext.Current.Request.UserHostAddress.Length != 0)
                //{
                //    ZiyaretciIPsi = HttpContext.Current.Request.UserHostAddress;
                //}
                ////bag.acik();
                ////cmd2.Connection = bag.Gcnn;
                ////cmd2.CommandText = "insert into ZTbL_Userlog (UserName,UserIP,Tarih) values ('" + text1.Value + "','" + ZiyaretciIPsi + "','" + DateTime.Now.ToString("MM/dd/yy hh:mm:ss") + "')";
                ////cmd2.ExecuteNonQuery();
                ////bag.kapali();

                HttpCookie giris = Request.Cookies["giris"];
                if (yetki == 1 || yetki==4)
                {
                    Response.Redirect("ZZplmain.aspx");
                }
                if (yetki == 2)
                {
                    Response.Redirect("gsipSimple.aspx");
                }
              
              
              
               

            }
            else
            {
              //  label.InnerText= "Kullanıcı Adı Yada Şifre Hatalı...";
            }


            bag.kapali();
        }
        FacebookIslemleri Face = new FacebookIslemleri();

        protected void Button2_Click(object sender, EventArgs e)
        {

            HttpCookie cookie = new HttpCookie("giris");
            cookie["user"] = "Alpay";
            cookie["pass"] = "1679";
            cookie["flag"] = "1";
            cookie["cariref"] = "120.%";
            cookie["userid"] = "1";
            cookie["yetki"] = "1";
            cookie["sipstr"] ="ALP";
           // yetki = Convert.ToInt32(oku["Yetkisi"].ToString());
            cookie["yil"] = "15";
            cookie.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(cookie);  
            var Link = Face.CrateLoginUrl().ToString();
            Response.Redirect(Link);
        }
    }
}