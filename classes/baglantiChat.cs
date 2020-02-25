using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace seyhandagitim
{
    public class baglantiChat
    {

        public static string IPS = "192.11.200.1";//78.187.91.134
        public static string USER = "mental";//
        public static string PASSWORD = "kamerun";//1Qaz2wsx
        public static string INITIAL = "LOGOKAMP";//
        public static SqlConnection Connection() {
            SqlConnection.ClearAllPools();
            SqlConnection con = new SqlConnection("Password='" + PASSWORD + "';User ID='" + USER + "';Initial Catalog=" + INITIAL + ";Data Source=" + IPS + "");
            return con;
        
        }
        public SqlConnection Gcnn = new SqlConnection("Password='" + PASSWORD + "';User ID='" + USER + "';Initial Catalog=" + INITIAL + ";Data Source=" + IPS + "");
        
       
        public void acik() {
       
                Gcnn.Open();
       }
        public void kapali()
        {
            
         Gcnn.Close();
        }


       
        public static DataTable TabloAl(string sqlstr) {
            SqlConnection con = Connection();
            SqlCommand cmd = new SqlCommand(sqlstr,con);
            SqlDataAdapter kyt = new SqlDataAdapter(cmd);
            DataTable tablo = new DataTable();
            kyt.Fill(tablo);
            return tablo;
        }
        public static SqlDataReader DataReaderAl(string sqlstr) {
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
            catch (Exception)
            {
                return false;
            }
          
        }
        public static int KayitSayisi(string tabloAdı,string AlanAdı,string Kosul)
        {
            string sqlara="";
            SqlConnection con = Connection();
            con.Open();
            if (Kosul!="")
            {
                sqlara ="where"+ Kosul;
            }
            SqlCommand cmd = new SqlCommand("select count("+AlanAdı+") from "+tabloAdı+" "+sqlara+" ", con);
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
        public static bool VeriSil(string TabloAd,string Kosul) {
            string sqlara = "";
            SqlConnection con = Connection();
            con.Open();
            if (Kosul != "")
            {
                sqlara = "where" + Kosul;
            }
            SqlCommand cmd = new SqlCommand("delete from "+TabloAd+" " + sqlara + " ", con);
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

        //public static void GridColGenislik(DataGridView dv,int col,int gen) {
        //    dv.Columns[col].Width = gen;
        
        //}

        //public static void GridColEsitGenislik(DataGridView dv, int colsayi)
        //{
        //    for (int i = 0; i < colsayi; i++)
        //    {
        //    dv.Columns[i].Width = dv.Width/colsayi;
        //    }

        //}
        //public static void ListWColGenislik(ListView dv, int col, int gen)
        //{
        //    dv.Columns[col].Width = gen;

        //}

        //public static void ListWColEsitGenislik(ListView dv, int colsayi)
        //{
        //    for (int i = 0; i < colsayi; i++)
        //    {
        //        dv.Columns[i].Width = dv.Width / colsayi;
        //    }

        //}
     

    }

}