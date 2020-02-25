using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace seyhandagitim
{
    public class baglanti
    {
        //Global Değişkenlerimiz G...


        //Sql Bağlantısı                    
        public string GSQLIP = "192.11.200.5"//78.188.25.84
        , GSQLUSER = "mental"
        , GSQLPASS = "kamerun"
        , GSQLINI = "TIGER";
        public SqlConnection Gcnn = new SqlConnection("Password='" + PASSWORD + "';User ID='" + USER + "';Initial Catalog=" + INITIAL + ";Data Source=" + IPS + "");
        public static string IPS = "192.11.200.5";//78.187.91.134
        public static string USER = "mental";//
        public static string PASSWORD = "kamerun";//1Qaz2wsx
        public static string INITIAL = "TIGER";//
        public static string INITIAL2 = "LOGOKAMP";//
        public static string GFirma = "206", GDONEM = "01";
        public static string ConnectSTR = "Password='" + PASSWORD + "';User ID='" + USER + "';Initial Catalog=" + INITIAL + ";Data Source=" + IPS + "";
        public static SqlConnection Connection()
        {

            SqlConnection con = new SqlConnection("Password='" + PASSWORD + "';User ID='" + USER + "';Initial Catalog=" + INITIAL + ";Data Source=" + IPS + "");
            SqlConnection.ClearAllPools();
            
            return con;
        }
        public void acik()
        {

            Gcnn.Open();
        }
        public void kapali()
        {

            Gcnn.Close();
        }

        //--SQL İŞLEMLERİ-------------------------------------------------------------------------
        public static DataTable TabloAl(string sqlstr)
        {
            SqlConnection con = Connection();
            SqlCommand cmd = new SqlCommand(sqlstr, con);
            cmd.CommandTimeout = 0;
            SqlDataAdapter kyt = new SqlDataAdapter(cmd);
            DataTable tablo = new DataTable();
            kyt.Fill(tablo);
            return tablo;
        }
        public static SqlDataReader DataReaderAl(string sqlstr)
        {
            SqlConnection con = Connection();
            con.Open();
            SqlCommand cmd = new SqlCommand(sqlstr, con);
            SqlDataReader oku;
            oku = cmd.ExecuteReader();
            return oku;
        }
        public static bool VeriIslemler(string sqlstr)
        {
            SqlConnection con = Connection();
            SqlCommand cmd = new SqlCommand(sqlstr, con);
            con.Open();
            try
            {
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
        public static int KayitSayisi(string tabloAdı, string AlanAdı, string Kosul)
        {
            string sqlara = "";
            SqlConnection con = Connection();
            con.Open();
            if (Kosul != "")
            {
                sqlara = "where" + Kosul;
            }
            SqlCommand cmd = new SqlCommand("select count(" + AlanAdı + ") from " + tabloAdı + " " + sqlara + " ", con);
            SqlDataReader oku = cmd.ExecuteReader();
            if (oku.Read())
            {
                return Convert.ToInt32(oku[0].ToString());
            }
            else
            {
                return 0;
            }


        }
        public static bool VeriSil(string TabloAd, string Kosul)
        {
            string sqlara = "";
            SqlConnection con = Connection();
            con.Open();
            if (Kosul != "")
            {
                sqlara = "where" + Kosul;
            }
            SqlCommand cmd = new SqlCommand("delete from " + TabloAd + " " + sqlara + " ", con);
            try
            {
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }


    }
}