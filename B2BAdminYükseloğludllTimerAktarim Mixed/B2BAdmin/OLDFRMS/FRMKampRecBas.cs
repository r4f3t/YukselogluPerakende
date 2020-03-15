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
    public partial class FRMKampRecBas : Form
    {
        public FRMKampRecBas()
        {
            InitializeComponent();
        }
        private void SVeriGetir()
        {
            string SQLStr = "";
            if (TXTMikAdi.Text != "")
            {
                SQLStr = "and RecTanim like '%" + TXTMikAdi.Text + "%'";
            }
            GridVade.DataSource = baglanti.TabloAl("select RecTanim from A_CMPGNLineRec where LOGICALREF>0 " + SQLStr + " group by RecTanim");
            GridVade.Columns[0].Width = GridVade.Width;
            //GridVade.Columns[1].Visible = false;
        }
        private void BTNADD_Click(object sender, EventArgs e)
        {
            FRMKampRecBas.GISTR = "";
            FrmKampRec fkr = new FrmKampRec();
            fkr.Show();
       //     string Tarih = DateTime.Now.ToString("MM/dd/yyyy");
       //     baglanti.VeriIslemler("INSERT INTO [A_INDSART]([NAME],ADDDATE)VALUES" +
       //"('" + TXTMikAdi.Text + "','" + Tarih + "')");
       //     SVeriGetir();
        }

        private void FrmQueryBas_Load(object sender, EventArgs e)
        {
            SVeriGetir();
        }

        private void GridVade_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            TXTMikAdi.Text = GridVade.CurrentRow.Cells[0].Value.ToString();
       
            BTNMikSil.Visible = true;
        }

        private void BTNMikSil_Click(object sender, EventArgs e)
        {
            SqlDataReader oku = baglanti.DataReaderAl("SELECT LOGICALREF from A_CMPGNLineRec where RecTanim='"+TXTMikAdi.Text+"'");
            while (oku.Read())
            {
                string RecRef = oku[0].ToString();
                SqlDataReader oku2 = baglanti.DataReaderAl("SELECT LOGICALREF from A_CMPGNLine where CAMPAIGNREF='"+RecRef+"'");
                if (oku2.Read()) { MessageBox.Show("Bu Kampanyanın Tanımlı Olduğu Cariler Var!!! Silemezsiniz!!!"); return; }
            }
            DialogResult dialogResult = MessageBox.Show("Kayıt Silinecektir?", "Uyarı!!!", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                if (TXTMikAdi.Text != "")
                {
                    baglanti.VeriIslemler("delete from A_CMPGNLineRec where RecTanim='" + TXTMikAdi.Text + "'");
                }
                else
                {
                    MessageBox.Show("Satır Seçmediniz!!!");
                }
            }           
            TXTMikAdi.Text = "";
            SVeriGetir();
        }
        public static string GIREF,GISTR;
        private void GridVade_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
         
            GISTR = GridVade.CurrentRow.Cells[0].Value.ToString();
            FrmKampRec fma = new FrmKampRec();
            fma.Show();
            BTNMikSil.Visible = true;
        }

        private void TXTMikAdi_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar==13)
            {
                SVeriGetir();
            }
        }
    }
}
