using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace B2BAdmin
{
    public partial class FRMUye : Form
    {
        public FRMUye()
        {
            InitializeComponent();
        }

        private void FRMUye_Load(object sender, EventArgs e)
        {
            LBLCAd.Text=FRMCari.GFCad;
            HFCLIENTREF.Text = baglanti.GCariId.ToString();
            TXTUName.Text = FRMCari.GUUSer;
            TXTUPass.Text = FRMCari.GUPass;
        }

        private void BTNCMPGNADD_Click(object sender, EventArgs e)
        {
            SqlDataReader oku = baglanti.DataReaderAl("select USERID from " + baglanti.INITIAL2 + "..[ZTbLUseR] where Adi='"+TXTUName.Text+"' and CLIENTREF<>"+HFCLIENTREF.Text+"  ");
            if (oku.Read()) { MessageBox.Show("Kullanıcı Adı Başka Bir CAride Kullanılmakta!!!"); return; }
            SqlDataReader oku2 = baglanti.DataReaderAl("select CLIENTREF from " + baglanti.INITIAL2 + "..[ZTbLUseR] where CLIENTREF="+HFCLIENTREF.Text+"");
            if (oku2.Read())
            {
                baglanti.VeriIslemler("update "+baglanti.INITIAL2+"..[ZTbLUseR] set Adi='"+TXTUName.Text+"',Sifresi='"+TXTUPass.Text+"',SipSTR='"+TXTSipStr.Text+"' where CLIENTREF="+HFCLIENTREF.Text+"");
            }
            else
            {
                baglanti.VeriIslemler("INSERT INTO " + baglanti.INITIAL2 + "..[ZTbLUseR]  (Adi,Sifresi,SipSTR,SipID,CLIENTREF,Yetkisi) " +
            "values ('" + TXTUName.Text + "','" + TXTUPass.Text + "','" + TXTSipStr.Text + "',1000," + HFCLIENTREF.Text + ",2)");
            }
            MessageBox.Show("Kayıt İşlemi Başarılı...");
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            baglanti.VeriIslemler("delete from " + baglanti.INITIAL2 + "..[ZTbLUseR] where CLIENTREF="+HFCLIENTREF.Text+"");
            MessageBox.Show("Kayıt Silindi!!!");
            this.Close();
        }
    }
}
