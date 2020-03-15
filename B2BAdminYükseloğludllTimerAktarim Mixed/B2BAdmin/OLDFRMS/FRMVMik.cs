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
    public partial class FRMVMik : Form
    {
        public FRMVMik()
        {
            InitializeComponent();
        }
        private void GridGetir() {
            if (CBOXVAD.Checked==true)
            {
                GridLineEks.DataSource = baglanti.TabloAl("SELECT [LOGICALREF],[VADESTR],[INDORAN],[ADDDATE],[EDITDATE],[CAMPAIGNREF] FROM [LOGOKAMP].[dbo].[A_VadeLine] where CAMPAIGNREF=" + HFCMPGNREF.Text + ""); 
            }
            if (CBOXMik.Checked == true)
            {
                GridLineEks.DataSource = baglanti.TabloAl("SELECT [LOGICALREF],[MIKSTR],[INDORAN],[ADDDATE],[EDITDATE],[CAMPAIGNREF] FROM [LOGOKAMP].[dbo].[A_MikLine] where CAMPAIGNREF=" + HFCMPGNREF.Text + "");
            }
           
        }
        private void FRMVMik_Load(object sender, EventArgs e)
        {
            PNLGrid.Height = this.Height - panel1.Height-42;
            TXTCMPName.Text = FRMKAMPADD.GKAMPNAME;
            HFCMPGNREF.Text = FRMKAMPADD.GCMPGNREF;
        }

        private void BTNCMPGNADD_Click(object sender, EventArgs e)
        {
       
        }

        private void CBOXVAD_CheckedChanged(object sender, EventArgs e)
        {
            if (CBOXVAD.Checked==true)
            {
                GRPBVADE.Visible = true;
            }
            else
            {
                GRPBVADE.Visible = false;
            }
            GridGetir();
        }

        private void CBOXMik_CheckedChanged(object sender, EventArgs e)
        {
            if (CBOXMik.Checked == true)
            {
                GRPBMik.Visible = true;
            }
            else
            {
                GRPBMik.Visible = false;
            }
            GridGetir();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            
        }
        
        private void BTNVADD_Click(object sender, EventArgs e)
        {
            string Tarih = DateTime.Now.ToString("MM/dd/yyyy");
            baglanti.VeriIslemler("INSERT INTO [LOGOKAMP].[dbo].[A_VadeLine]([VADESTR],[INDORAN],[ADDDATE],[EDITDATE],CAMPAIGNREF)VALUES"+
                "('"+TXTVade.Text+"','"+TXTViND.Text.Replace(",",".")+"','"+Tarih+"','"+Tarih+"',"+HFCMPGNREF.Text+")");
            GridGetir();
        }

        private void BTNMADD_Click(object sender, EventArgs e)
        {
            string Tarih = DateTime.Now.ToString("MM/dd/yyyy");
            baglanti.VeriIslemler("INSERT INTO [LOGOKAMP].[dbo].[A_MikLine]([MIKSTR],[INDORAN],[ADDDATE],[EDITDATE],CAMPAIGNREF)VALUES" +
                "('" + TXTMiktar.Text + "','" + TXTMiND.Text.Replace(",", ".") + "','" + Tarih + "','" + Tarih + "'," + HFCMPGNREF.Text + ")");
            GridGetir();
        }

        private void GridLineEks_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (CBOXVAD.Checked == true)
            {
                GRPBVADE.Visible = true;
            }
            else
            {
                GRPBVADE.Visible = false;
            }
        }
        
        private void BTNKayit_Click(object sender, EventArgs e)
        {
            string[] CODES = new string[30000];
            string[] CLIENTREF=new string[3000];
            int i = 0;
            SqlDataReader oku = baglanti.DataReaderAl("select LOGICALREF,CODE from "+baglanti.INITIAL2+"..LG_"+baglanti.GFirma+"_CLCARD where CODE like '"+TXTCKod.Text+"%'");
            while (oku.Read())
            {
                CODES[i] = oku[1].ToString();
                CLIENTREF[i]=oku[0].ToString();
                string Tarih = DateTime.Now.ToString("MM/dd/yyyy");
                baglanti.VeriIslemler("INSERT INTO [A_CMPGNLine]([CAMPAIGNREF],[CLIENTREF],[SQLSTR],[INDORAN],[ADDDATE],[EDITDATE])VALUES"+
                    "("+HFCMPGNREF.Text+","+CLIENTREF[i]+",'"+TXTFormul.Text+"',"+TXTCIndOr.Text+",'"+Tarih+"','"+Tarih+"')");
                i++;
            }
            string mesaj = "";
            while (i>0)
            {
                i--;
                mesaj += CODES[i]+"\n";
               
            }
            MessageBox.Show(mesaj);
        }
    }
}
