using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Media;
using System.Data.SqlClient;

namespace B2BAdmin
{
    public partial class FRMAna : Form
    {
        public FRMAna()
        {
            InitializeComponent();
        }

        private void vadeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FRMVades fvad = new FRMVades();
            fvad.MdiParent = this;
            fvad.Show();
        }

        private void miktarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FRMMiks fmad = new FRMMiks();
            fmad.MdiParent = this;
            fmad.Show();
        }
        public static string ISNEW;
        private void kampanyaTanımlaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ISNEW = "1";
            FRMCari.GFCad = null;
            FRMCari.GFCKod = null;
            baglanti.GCariId = 0;
            Form1 fr = new Form1();
            fr.MdiParent = this;
            fr.Show();            
        }
        public static string FrmCariTur;
        private void tanımlıCarilerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmCariTur = "kampanya";
            FRMCari fc = new FRMCari();
            fc.MdiParent = this;
            fc.Show();
        }

        private void cariListesiToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmCariTur = "üyelik";
            FRMCari fc = new FRMCari();
            fc.MdiParent = this;
            fc.Show();
        }

        private void FRMAna_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }

        private void indirimŞartıTanımlaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmQueryBas fq = new FrmQueryBas();
            fq.Show();
        }

        private void tanımlıKampanyalarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FRMKampRecBas fmk = new FRMKampRecBas();
            fmk.Show();
        }

        private void genelSepetToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmSepet fs = new FrmSepet();
            fs.Show();
        }
        int[] GSSayi=new int[3];
        
        private void TMRSEPSong_Tick(object sender, EventArgs e)
        {
            SqlDataReader oku = baglanti.DataReaderAl("select count(LOGICALREF) as LREF from Z_SipLine where DURUM=1");
            if (oku.Read())
            {
                GSSayi[1] = Convert.ToInt32(oku[0].ToString());
                if (GSSayi[2] == 0) { GSSayi[0] = GSSayi[1]; }
            }
            if (GSSayi[1] > GSSayi[0] ) {
                SoundPlayer player = new SoundPlayer(B2BAdmin.Properties.Resources.CaisseEnregistreuse);
                player.Load();
                player.Play();
                SystemSounds.Exclamation.Play();
                GSSayi[0] = GSSayi[1];
                this.TopMost = true;
                this.TopMost = false;
            }
            GSSayi[2]++;
        }

        private void yetkiKoduTanımıAnaKayıtToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FRMYetkis fy = new FRMYetkis();
            fy.Show();
        }

        private void malzemeYönetimiToolStripMenuItem_Click(object sender, EventArgs e)
        {
          
        }

        private void yönetimToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FRMItems fi = new FRMItems();
            fi.Show();
        }

        private void alternatifToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ZZAlternate fi = new ZZAlternate();
            fi.Show();
        }

        private void ürünAçıklamaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ZFRMItemName fi = new ZFRMItemName();
            fi.Show();
        }
    }
}
