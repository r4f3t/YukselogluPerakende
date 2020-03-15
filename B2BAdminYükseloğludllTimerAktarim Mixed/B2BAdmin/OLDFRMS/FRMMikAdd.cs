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
    public partial class FRMMikAdd : Form
    {
        public FRMMikAdd()
        {
            InitializeComponent();
        }
        private void GridGetir()
        {
            GridLineEks.DataSource = baglanti.TabloAl("SELECT [LOGICALREF],[MIKSTR],[INDORAN],[ADDDATE],[EDITDATE] FROM [A_MikLine] where MREF='" +HFVADEREF.Text+ "' order by TRIMSTR asc");
            GridLineEks.Columns[0].Visible = false;
            GridLineEks.Columns[4].Visible = false;
        }



        private void BTNVADD_Click(object sender, EventArgs e)
        {
            string Tarih = DateTime.Now.ToString("MM/dd/yyyy");
            
                baglanti.VeriIslemler("INSERT INTO [A_MikLine](TRIMSTR,MREF,[MIKSTR],[INDORAN],[ADDDATE],[EDITDATE],MIKAD)VALUES" +
              "(" + TXTMiktar.Text.Split('-')[0] + TXTMiktar.Text.Split('-')[1] + "," + HFVADEREF.Text + ",'" + TXTMiktar.Text + "','" + TXTMiND.Text.Replace(",", ".") + "','" + Tarih + "','" + Tarih + "','" + TXTMikAdi.Text + "')"); 
       
            GridGetir();
            //kampanya güncelle LOGODAKi
            MessageBox.Show("Tüm Sistemlere Değişiklik Uygulanacaktır!!!");
            SqlDataReader oku = baglanti.DataReaderAl("select C.CLIENTREF from A_MikLine as M inner join A_CMPGNLine as C on M.MREF=C.MIKREF where M.MREF='"+HFVADEREF.Text+"' group by CLIENTREF ");
            while (oku.Read())
            {
                string CLIENTREF = oku[0].ToString();
                LOGOKampanya.LOGOCampYap(CLIENTREF);
            }
            MessageBox.Show("KAyıt Başarılı");
            HFLREF.Text = "0";
            BTNMADD.Text = "Kaydet";
        }
        private void FRMMikAdd_Load(object sender, EventArgs e)
        {
            TXTMikAdi.Text = FRMMiks.GMikAdi;
            HFVADEREF.Text = FRMMiks.GMikRef;
            GridGetir();
        }

        private void TXTMikAdi_TextChanged(object sender, EventArgs e)
        {
            if (TXTMikAdi.Text != "")
            {
                GRPBMik.Visible = true;
            }
            else
            {
                GRPBMik.Visible = false;
            }
        }

        private void BTNADD_Click(object sender, EventArgs e)
        {
            string Tarih = DateTime.Now.ToString("MM/dd/yyyy");
            baglanti.VeriIslemler("update [A_Mik] set [NAME]='" + TXTMikAdi.Text + "' where LOGICALREF='" + HFVADEREF.Text + "' ");
            baglanti.VeriIslemler("update A_CMPGNLine set MIKAD='" + TXTMikAdi.Text + "-" + HFVADEREF.Text + "' where MIKREF=" + HFVADEREF.Text + "");
            baglanti.VeriIslemler("update A_CMPGNLineRec set MIKAD='" + TXTMikAdi.Text + "-" + HFVADEREF.Text + "' where MIKREF=" + HFVADEREF.Text + "");
            MessageBox.Show("Güncelleme Başarılı.");
        }

        private void TXTMikAdi_DoubleClick(object sender, EventArgs e)
        {
            PNLVade.Location = new Point(122, 55); PNLVade.Visible = true;
            GridVade.DataSource = baglanti.TabloAl("select NAME,LOGICALREF from A_Mik where NAME like '%" + TXTMikAdi.Text + "%' order by NAME asc");
            GridVade.Columns[0].Width = GridVade.Width;
            GridVade.Columns[1].Visible = false;

        }

        private void GridVade_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            TXTMikAdi.Text = GridVade.CurrentRow.Cells[0].Value.ToString();
            HFVADEREF.Text = GridVade.CurrentRow.Cells[1].Value.ToString();
            PNLVade.Visible = false;
            GRPBMik.Visible = true;
            BTNMikSil.Visible = true;
            GridGetir();
        }

        private void GridVade_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            TXTMikAdi.Text = GridVade.CurrentRow.Cells[0].Value.ToString();
            HFVADEREF.Text = GridVade.CurrentRow.Cells[1].Value.ToString();
            GridGetir();
        }

        private void BTNMSil_Click(object sender, EventArgs e)
        {
            DialogResult dialogResult2 = MessageBox.Show("LOGODA \n Cariler Üzerinde Güncelleme Yapılacaktır ?", "", MessageBoxButtons.YesNo);
            if (dialogResult2 == DialogResult.No) { return; }

            baglanti.VeriIslemler("delete from A_MikLine where LOGICALREF=" + HFLREF.Text + "");
            SqlDataReader oku = baglanti.DataReaderAl("select C.CLIENTREF from A_MikLine as M inner join A_CMPGNLine as C on M.MREF=C.MIKREF where M.MREF='" + HFVADEREF.Text + "' group by CLIENTREF ");
            while (oku.Read())
            {
                string CLIENTREF = oku[0].ToString();
                LOGOKampanya.LOGOCampYap(CLIENTREF);
            }
            MessageBox.Show("KAyıt Başarılı");
            GridGetir();
        }

        private void GridLineEks_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            HFLREF.Text = GridLineEks.CurrentRow.Cells[0].Value.ToString();
            BTNMSil.Visible = true;
        }

        private void BTNMikSil_Click(object sender, EventArgs e)
        {
            baglanti.VeriIslemler("delete from A_Mik where LOGICALREF=" + HFVADEREF.Text + "");
            this.Close();
        }

        private void GridLineEks_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            HFLREF.Text = GridLineEks.CurrentRow.Cells[0].Value.ToString();
       
            BTNMSil.Visible = true;
        }

        private void GRPBMik_Enter(object sender, EventArgs e)
        {

        }
    }
}
