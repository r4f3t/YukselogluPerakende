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
    public partial class FRMVades : Form
    {
        public FRMVades()
        {
            InitializeComponent();
        }
        private void SVeriGetir() {
            string SqlAra = "";
            //if (TXTVadeAdi.Text!="")
            //{
            //    SqlAra = " and NAME like '%" + TXTVadeAdi.Text + "%'";
            //}
            GridVade.DataSource = baglanti.TabloAl("select NAME,LOGICALREF from A_Vade where LOGICALREF>0 "+SqlAra+" order by NAME asc");
            GridVade.Columns[0].Width = GridVade.Width;
        }
        private void FRMVades_Load(object sender, EventArgs e)
        {
            SVeriGetir();
        }
        private void BTNADD_Click(object sender, EventArgs e)
        {
            string Tarih = DateTime.Now.ToString("MM/dd/yyyy");
            baglanti.VeriIslemler("INSERT INTO [A_Vade]([NAME],ADDDATE)VALUES" +
       "('" + TXTVadeAdi.Text + "','" + Tarih + "')");
            SVeriGetir();
        }

        private void BTNVadeSil_Click(object sender, EventArgs e)
        {
            //kontrol
            SqlDataReader oku = baglanti.DataReaderAl("select VADEREF from A_CMPGNLine where VADEREF="+HFVADEREF.Text+"");
            if (oku.Read()) { MessageBox.Show("Vade Kampanyalarda Kullanılıyor.\n Silme İşlemi İptal Edildi!!!"); return; }
            baglanti.VeriIslemler("delete from A_Vade where LOGICALREF=" + HFVADEREF.Text + "");
            baglanti.VeriIslemler("delete from A_VadeLine where VREF=" + HFVADEREF.Text + "");
            TXTVadeAdi.Text = "";
            SVeriGetir();
        }
        private void GridVade_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            TXTVadeAdi.Text = GridVade.CurrentRow.Cells[0].Value.ToString();
            HFVADEREF.Text = GridVade.CurrentRow.Cells[1].Value.ToString();
            BTNVadeSil.Visible = true;
        }
        public static string GVadeAdi, GVREF;
        private void GridVade_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            GVadeAdi = GridVade.CurrentRow.Cells[0].Value.ToString();
            GVREF = GridVade.CurrentRow.Cells[1].Value.ToString();
            FRMVadeAdd fva = new FRMVadeAdd();
            fva.Show();
        }
    }
}
