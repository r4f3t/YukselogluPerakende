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
    public partial class FRMCari : Form
    {
        public FRMCari()
        {
            InitializeComponent();
        }
        private void SVeriGetir() {
            string SQLAra = "";
            if (FRMAna.FrmCariTur=="kampanya")
            {
            if (TXTGSearch.Text!="")
            {
                SQLAra = " and C.DEFINITION_+C.CODE like '%"+TXTGSearch.Text+"%'";
            }
            GridCari.DataSource = baglanti.TabloAl("select C.DEFINITION_ as [Cari Adı],C.CODE as [Cari Kodu],count(L.LOGICALREF) as KampSayi,L.CLIENTREF from A_CMPGNLine as L inner join (select DEFINITION_,CODE,LOGICALREF from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CLCARD) as C on L.CLIENTREF=C.LOGICALREF where C.LOGICALREF>0 "+SQLAra+" group by C.DEFINITION_,C.CODE,L.CLIENTREF ");
            GridCari.Columns["CLIENTREF"].Visible=false;
            GridCari.Columns[0].Width = GridCari.Width / 3;
            GridCari.Columns[1].Width = GridCari.Width / 3;
            GridCari.Columns[2].Width = GridCari.Width / 3;
            }
            if (FRMAna.FrmCariTur == "üyelik")
            {
                if (TXTGSearch.Text != "")
                {
                    SQLAra = " and C.DEFINITION_+C.CODE like '%" + TXTGSearch.Text + "%'";
                }
                GridCari.DataSource = baglanti.TabloAl("select C.DEFINITION_ as [Cari Adı],C.CODE as [Cari Kodu],C.LOGICALREF,(Case when L.CLIENTREF is not null then 'Var' else  'Yok' END) as Durum,L.Adi,L.Sifresi from " + baglanti.INITIAL2 + "..ZTbLUseR as L right outer join (select DEFINITION_,CODE,LOGICALREF from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CLCARD where CARDTYPE<>22) as C on L.CLIENTREF=C.LOGICALREF where C.LOGICALREF>0 " + SQLAra + " ");
                GridCari.Columns["LOGICALREF"].Visible = false;
                GridCari.Columns[0].Width = GridCari.Width / 5;
                GridCari.Columns[1].Width = GridCari.Width / 5;
                GridCari.Columns[2].Width = GridCari.Width / 5;
                GridCari.Columns[3].Width = GridCari.Width / 5;
                GridCari.Columns[4].Width = GridCari.Width / 5;
            }
        }
        private void FRMCari_Load(object sender, EventArgs e)
        {
            GridCari.Height = this.Height - panelControl1.Height - 50;
            SVeriGetir();
        }
        public static string GFCad, GFCKod,GUUSer,GUPass;
        private void GridCari_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (FRMAna.FrmCariTur=="kampanya")
            {
                baglanti.GCariId = Convert.ToInt64(GridCari.CurrentRow.Cells[3].Value.ToString());
                GFCad = GridCari.CurrentRow.Cells[0].Value.ToString();
                GFCKod = GridCari.CurrentRow.Cells[1].Value.ToString();
                Form1 gr = new Form1();
                gr.Show();    
            }
            if (FRMAna.FrmCariTur=="üyelik")
            {
                baglanti.GCariId = Convert.ToInt64(GridCari.CurrentRow.Cells["LOGICALREF"].Value.ToString());
                GFCad = GridCari.CurrentRow.Cells[0].Value.ToString();
                GFCKod = GridCari.CurrentRow.Cells[1].Value.ToString();
                GUUSer = GridCari.CurrentRow.Cells[4].Value.ToString();
                GUPass = GridCari.CurrentRow.Cells[5].Value.ToString();
                FRMUye fu = new FRMUye();
                fu.Show();    
            }
            
        }

        private void BTNCMPGNADD_Click(object sender, EventArgs e)
        {
            SVeriGetir();
        }
    }
}
