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
    public partial class FRMVadeAdd : Form
    {
        public FRMVadeAdd()
        {
            InitializeComponent();
        }
        private void GridGetir()
        {
            GridLineEks.DataSource = baglanti.TabloAl("SELECT [LOGICALREF],[VADESTR],[INDORAN],[ADDDATE],[EDITDATE] FROM [A_VadeLine] where VREF="+HFVADEREF.Text+" order by TRIMSTR");
            GridLineEks.Columns[0].Visible = false;
            GridLineEks.Columns[4].Visible = false;
        }
        private void BTNVADD_Click(object sender, EventArgs e)
        {
            string Tarih = DateTime.Now.ToString("MM/dd/yyyy");
            baglanti.VeriIslemler("INSERT INTO [A_VadeLine](TRIMSTR,VREF,[VADESTR],[INDORAN],[ADDDATE],[EDITDATE],VADEAD)VALUES" +
                "("+TXTVade.Text+","+HFVADEREF.Text+",'" + TXTVade.Text + "','" + TXTViND.Text.Replace(",", ".") + "','" + Tarih + "','" + Tarih + "','"+TXTVadeAdi.Text+"')");
            MessageBox.Show("Tüm Sistemlere Değişiklik Uygulanacaktır!!!");
            SqlDataReader oku = baglanti.DataReaderAl("select C.CLIENTREF from A_VadeLine as V inner join A_CMPGNLine as C on V.VREF=C.VADEREF where V.VREF='" + HFVADEREF.Text + "' group by CLIENTREF ");
            while (oku.Read())
            {
                string CLIENTREF = oku[0].ToString();
                LOGOKampanya.LOGOCampYap(CLIENTREF);
            }
            MessageBox.Show("KAyıt Başarılı");
            GridGetir();
        }

        private void FRMVadeAdd_Load(object sender, EventArgs e)
        {
            TXTVadeAdi.Text = FRMVades.GVadeAdi;
            HFVADEREF.Text = FRMVades.GVREF;
            GridGetir();
        }

        private void TXTVadeAdi_TextChanged(object sender, EventArgs e)
        {
           
        }

        private void TXTVadeAdi_DoubleClick(object sender, EventArgs e)
        {
            PNLVade.Location = new Point(122, 56); PNLVade.Visible = true;
            GridVade.DataSource = baglanti.TabloAl("select NAME,LOGICALREF from A_Vade where NAME like '%"+TXTVadeAdi.Text+"%' order by NAME asc");
            GridVade.Columns[0].Width = GridVade.Width;
        }

        private void GridVade_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            TXTVadeAdi.Text = GridVade.CurrentRow.Cells[0].Value.ToString();
            HFVADEREF.Text = GridVade.CurrentRow.Cells[1].Value.ToString();
            PNLVade.Visible = false;
            GRPBVade.Visible = true;
            BTNVadeSil.Visible = true;
            GridGetir();
            
        }

        private void BTNADD_Click(object sender, EventArgs e)
        {
            string Tarih = DateTime.Now.ToString("MM/dd/yyyy");
            baglanti.VeriIslemler("update [A_VADE] set [NAME]='" + TXTVadeAdi.Text + "' where LOGICALREF='" + HFVADEREF.Text + "' ");
            baglanti.VeriIslemler("update A_CMPGNLine set VADEAD='"+TXTVadeAdi.Text+"-"+HFVADEREF.Text+"' where VADEREF="+HFVADEREF.Text+"" );
            baglanti.VeriIslemler("update A_CMPGNLineRec set VADEAD='" + TXTVadeAdi.Text + "-" + HFVADEREF.Text + "' where VADEREF=" + HFVADEREF.Text + "");
            MessageBox.Show("Güncelleme Başarılı.");
            this.Close();
        }

        private void BTNVadeSil_Click(object sender, EventArgs e)
        {
            baglanti.VeriIslemler("delete from A_Vade where LOGICALREF="+HFVADEREF.Text+"");
            this.Close();
        }

        private void GridLineEks_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            HFLREF.Text = GridLineEks.CurrentRow.Cells[0].Value.ToString();
            BTNVSil.Visible = true;
        }

        private void GridVade_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            TXTVadeAdi.Text = GridVade.CurrentRow.Cells[0].Value.ToString();
            HFVADEREF.Text = GridVade.CurrentRow.Cells[1].Value.ToString();
            GridGetir();
        }

        private void BTNVSil_Click(object sender, EventArgs e)
        {
            DialogResult dialogResult2 = MessageBox.Show("LOGODA \n Cariler Üzerinde Güncelleme Yapılacaktır ?", "", MessageBoxButtons.YesNo);
            if (dialogResult2 == DialogResult.No) { return; }
            baglanti.VeriIslemler("delete from A_VadeLine where LOGICALREF=" + HFLREF.Text + "");

            SqlDataReader oku = baglanti.DataReaderAl("select C.CLIENTREF from A_VadeLine as V inner join A_CMPGNLine as C on V.VREF=C.VADEREF where V.VREF='" + HFVADEREF.Text + "' group by CLIENTREF ");
            while (oku.Read())
            {
                string CLIENTREF = oku[0].ToString();
                LOGOKampanya.LOGOCampYap(CLIENTREF);
            }
            MessageBox.Show("KAyıt Başarılı");
            GridGetir();
        }
    }
}
