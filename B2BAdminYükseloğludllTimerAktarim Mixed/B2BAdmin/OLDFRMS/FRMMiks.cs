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
    public partial class FRMMiks : Form
    {
        public FRMMiks()
        {
            InitializeComponent();
        }
        private void SVeriGetir() {
            string SQLStr = "";
            //if (TXTMikAdi.Text!="")
            //{
            //    SQLStr = "and NAME like '%" + TXTMikAdi.Text + "%'";
            //}
            GridVade.DataSource = baglanti.TabloAl("select NAME,LOGICALREF from A_Mik where LOGICALREF>0 "+SQLStr+" order by NAME asc");
            GridVade.Columns[0].Width = GridVade.Width;
            GridVade.Columns[1].Visible = false;
        }
        private void FRMMiks_Load(object sender, EventArgs e)
        {
            SVeriGetir();
        }

        private void BTNADD_Click(object sender, EventArgs e)
        {
            string Tarih = DateTime.Now.ToString("MM/dd/yyyy");
         
            baglanti.VeriIslemler("INSERT INTO [A_Mik]([NAME],ADDDATE)VALUES" +
       "('" + TXTMikAdi.Text + "','" + Tarih + "')");
            SVeriGetir();
        }
        private void BTNMikSil_Click(object sender, EventArgs e)
        {
            //kontrol
            SqlDataReader oku = baglanti.DataReaderAl("select MIKREF from A_CMPGNLine where MIKREF="+HFVADEREF.Text+"");
            if (oku.Read()) { MessageBox.Show("Miktar Grubu Kampanyalarda Kullanılıyor.\n Silme İşlemi İptal Edildi!!!"); return; }
            baglanti.VeriIslemler("delete from A_Mik where LOGICALREF=" + HFVADEREF.Text + "");
            TXTMikAdi.Text = "";
            SVeriGetir();
        }
        public static string GMikAdi, GMikRef;
        private void GridVade_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            GMikAdi = GridVade.CurrentRow.Cells[0].Value.ToString();
            GMikRef= GridVade.CurrentRow.Cells[1].Value.ToString();
            FRMMikAdd fma = new FRMMikAdd();
            fma.Show();
            BTNMikSil.Visible = true;
        }

        private void GridVade_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            TXTMikAdi.Text = GridVade.CurrentRow.Cells[0].Value.ToString();
            HFVADEREF.Text = GridVade.CurrentRow.Cells[1].Value.ToString();
            BTNMikSil.Visible = true;
        }
    }
}
