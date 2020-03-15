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
    public partial class FRMKAMPADD : Form
    {
        public FRMKAMPADD()
        {
            InitializeComponent();
        }

        private void FRMKAMPADD_Load(object sender, EventArgs e)
        {
            PNLGrid.Height =this.Height-panel1.Height-30;
            GridGetir();
        }
        private void GridGetir() {
            GridKamp.DataSource = baglanti.TabloAl("select * from A_CAMPAGNS order by LOGICALREF desc");
        }
        private void BTNCMPGNADD_Click(object sender, EventArgs e)
        {
            string Tarih = DateTime.Now.ToString("MM/dd/yyyy");
            string STarih = Convert.ToDateTime(DTPBas.Text).ToString("MM/dd/yyyy");
            string ETarih = Convert.ToDateTime(DTPBit.Text).ToString("MM/dd/yyyy");
            baglanti.VeriIslemler("INSERT INTO [LOGOKAMP].[dbo].[A_CAMPAGNS]([KAMPNAME],[ADDDATE],[EDITDATE],[FIRMNO],[BEGDATE],[ENDDATE]) VALUES" +
                "('" + TXTCMPName.Text + "','" + Tarih + "','" + Tarih + "'," + baglanti.GFirma + ",'" + STarih + "','" + ETarih + "')");
            GridGetir();
            TXTCMPName.Text = "";
            
        }
        public static string GCMPGNREF, GKAMPNAME,ISNEW;
        private void GridKamp_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            GCMPGNREF = GridKamp.CurrentRow.Cells[0].Value.ToString();
            GKAMPNAME = GridKamp.CurrentRow.Cells[1].Value.ToString();
            ISNEW = "0";
            FRMVMik fv = new FRMVMik();
            fv.Show();
        }
    }
}
