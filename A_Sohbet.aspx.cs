using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace seyhandagitim
{
    public partial class A_Sohbet : System.Web.UI.Page
    {

        protected void FillMessages() {
            HttpCookie giris = Request.Cookies["giris"];
            string KimdenID = giris["userid"];
            string KimdenSTR = giris["CariAdi"];
            string KimeID = Request.QueryString["kime"];
            string KimeSTR = Request.QueryString["kimeSTR"];
            SqlDataReader oku = baglantiChat.DataReaderAl("select KIMDENSTR,KIMESTR,KIMDEN,KIME,ADDDATE,MESAJ," +
"(CASE WHEN KIMDEN="+KimdenID+" THEN 'pull-right' else 'pull-left' end) as BoxFloat,"+
"(CASE WHEN KIMDEN=" + KimdenID + " THEN 'success' else 'info' end) as BoxBColor," +
"(CASE WHEN KIMDEN=" + KimdenID + " THEN 'green' else 'blue' end) as BoxHeadColor" +
" from ZZ_MSGLine where (KIME=" + KimdenID + " or KIMDEN="+KimdenID+")  order by ADDDATE ");
            RPTMessages.DataSource = oku;
            RPTMessages.DataBind();
            TXTMesaj.Attributes["onfocus"] = "var value = this.value; this.value = ''; this.value = value; onfocus = null;";
            TXTMesaj.Focus();
            baglanti.VeriIslemler("update ZZ_MSGLine set OKUNDU=1 where (KIME=" + KimdenID + " )");
        }
        protected void SesCal() {
            HttpCookie giris = Request.Cookies["giris"];
            string KimdenID = giris["userid"];
            string KimdenSTR = giris["CariAdi"];
            string KimeID = Request.QueryString["kime"];
            string KimeSTR = Request.QueryString["kimeSTR"];
            HttpCookie MyCookieObject = Request.Cookies["MyCookie"];
            string CerezSayi = MyCookieObject.ToString();
            SqlDataReader oku = baglantiChat.DataReaderAl("select count(LOGICALREF) as sayi from ZZ_MSGLine where (KIME=" + KimdenID + " or KIMDEN=" + KimdenID + ") ");
            if (oku.Read())
            {
                string LSayi = oku[0].ToString();
                if (LSayi != CerezSayi) {
                //ses çal


                }
                HttpCookie c = new HttpCookie("MyCookie", LSayi);  
            }
            
        
        
        
        } 
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void BTNSend_Click(object sender, EventArgs e)
        {
            HttpCookie giris=Request.Cookies["giris"];
            string KimdenID=giris["userid"];
            string KimdenSTR = giris["CariAdi"];
            string KimeID=Request.QueryString["kime"];
            string KimeSTR = Request.QueryString["kimeSTR"];
            baglantiChat.VeriIslemler("insert into ZZ_MSGLine (KIMDEN,KIMDENSTR,ADDDATE,MESAJ)values" +
                " ("+KimdenID+",'"+KimdenSTR+"','"+DateTime.Now.ToString("MM/dd/yyyy HH:mm:ss")+"','"+TXTMesaj.Value+"')");
            TXTMesaj.Value = "";
            UPDPanelTXT.Update();
            FillMessages();
        }

        protected void UpdateTimer_Tick(object sender, EventArgs e)
        {
            //HttpCookie giris = Request.Cookies["giris"];
            //string KimdenID = giris["userid"];
            //string KimdenSTR = giris["CariAdi"];
            //string KimeID = Request.QueryString["kime"];
            //string KimeSTR = Request.QueryString["kimeSTR"];
            //SqlDataReader oku = baglanti.DataReaderAl("select count(LOGICALREF) as Sayi from ZZ_MSGLine where (KIME=" + KimdenID + " and KIMDEN=" + KimeID + ") or (KIMDEN=" + KimdenID + " and KIME=" + KimeID + ")");
            //if (oku.Read())
            //{
            //    HttpCookie Sohbet = new HttpCookie();
            //    string LSohbetSayi=
            //}
            FillMessages();
           
        }
    }
}