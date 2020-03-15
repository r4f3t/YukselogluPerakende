using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace B2BAdmin
{
    public partial class FrmQueryBas : Form
    {
        public FrmQueryBas()
        {
            InitializeComponent();
        }
        private void SVeriGetir()
        {
            string SQLStr = "";
            //if (TXTMikAdi.Text!="")
            //{
            //    SQLStr = "and NAME like '%" + TXTMikAdi.Text + "%'";
            //}
            GridVade.DataSource = baglanti.TabloAl("select NAME,LOGICALREF from A_INDSART where LOGICALREF>0 " + SQLStr + " order by NAME asc");
            GridVade.Columns[0].Width = GridVade.Width;
            GridVade.Columns[1].Visible = false;
        }
        private void BTNADD_Click(object sender, EventArgs e)
        {
            string Tarih = DateTime.Now.ToString("MM/dd/yyyy");
            baglanti.VeriIslemler("INSERT INTO [A_INDSART]([NAME],ADDDATE)VALUES" +
       "('" + TXTMikAdi.Text + "','" + Tarih + "')");
            SVeriGetir();
        }

        private void FrmQueryBas_Load(object sender, EventArgs e)
        {
            SVeriGetir();
        }

        private void GridVade_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            TXTMikAdi.Text = GridVade.CurrentRow.Cells[0].Value.ToString();
            HFVADEREF.Text = GridVade.CurrentRow.Cells[1].Value.ToString();
            BTNMikSil.Visible = true;
        }

        private void BTNMikSil_Click(object sender, EventArgs e)
        {
            baglanti.VeriIslemler("delete from A_INDSART where LOGICALREF=" + HFVADEREF.Text + "");
            TXTMikAdi.Text = "";
            SVeriGetir();
        }
        public static string GIREF;
        private void GridVade_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            GIREF = GridVade.CurrentRow.Cells[1].Value.ToString();
            FrmQueryLine fma = new FrmQueryLine();
            fma.Show();
            BTNMikSil.Visible = true;
        }
    }
}
