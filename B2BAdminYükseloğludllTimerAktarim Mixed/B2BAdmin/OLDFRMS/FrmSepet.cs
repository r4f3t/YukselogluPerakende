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
    public partial class FrmSepet : Form
    {
        public FrmSepet()
        {
            InitializeComponent();
        }
        string GSQLStr;
        private void SVeriGetir() {
            string SQLAra = "";
            if (DTPBas.Text != "") { SQLAra += "and DATE_>='" + DTPBas.DateTime.ToString("MM/dd/yyyy") + "' "; }
            if (DTPBit.Text != "") { SQLAra += "and DATE_<='" + DTPBit.DateTime.ToString("MM/dd/yyyy") + "'"; }
            GridSepet.DataSource = baglanti.TabloAl("select S.FICHENO,C.DEFINITION_,S.DATE_,ROUND(SUM(AMOUNT*PRICE),2)as LineTutar,ROUND(isnull(SUM(PRICE*(GENELIORAN/100)*AMOUNT),0),2)as GenelI,ROUND(isnull(SUM(PRICE*(VADORAN/100)*AMOUNT),0),2)as VADI,ROUND(isnull(SUM(PRICE*(MIKORAN/100)*AMOUNT),0),2)as MIKI,S.CLIENTREF from Z_SipLine as S inner join (select LOGICALREF,DEFINITION_ from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CLCARD) as C on S.CLIENTREF=C.LOGICALREF left outer join "+baglanti.INITIAL2+"..LG_"+baglanti.GFirma+"_"+baglanti.GDONEM+"_ORFICHE as O on S.AKTARIM=O.LOGICALREF where S.LOGICALREF>0 and Durum>0  and Durum<>4 " + SQLAra + " "+GSQLStr+"   group by SIPID,S.FICHENO,C.DEFINITION_,S.DATE_,S.CLIENTREF");
        }

        private void FrmSepet_Load(object sender, EventArgs e)
        {
            groupControl1.Width = this.Width;
            SVeriGetir();
        }

        private void groupControl1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void BTNTum_Click(object sender, EventArgs e)
        {
            BTNTum.BackColor = Color.GhostWhite;
            BTNAkt.BackColor = Color.WhiteSmoke;
            BTNNoAkt.BackColor = Color.WhiteSmoke;
            BTNNoTI.BackColor = Color.WhiteSmoke;
            GSQLStr = " ";
            SVeriGetir();
        }

        private void BTNNoAkt_Click(object sender, EventArgs e)
        {
            BTNTum.BackColor = Color.WhiteSmoke;
            BTNAkt.BackColor = Color.WhiteSmoke;
            BTNNoAkt.BackColor = Color.GhostWhite;
            BTNNoTI.BackColor = Color.WhiteSmoke;
            GSQLStr = " and DURUM=1";
            SVeriGetir();
        }

        private void BTNAkt_Click(object sender, EventArgs e)
        {
            BTNTum.BackColor = Color.WhiteSmoke;
            BTNAkt.BackColor = Color.GhostWhite;
            BTNNoAkt.BackColor = Color.WhiteSmoke;
            BTNNoTI.BackColor = Color.WhiteSmoke;
            GSQLStr = " and DURUM=2";
            SVeriGetir();
        }

        private void BTNNoTI_Click(object sender, EventArgs e)
        {
            BTNTum.BackColor = Color.WhiteSmoke;
            BTNAkt.BackColor = Color.WhiteSmoke;
            BTNNoAkt.BackColor = Color.WhiteSmoke;
            BTNNoTI.BackColor = Color.GhostWhite;
            GSQLStr = " and O.LOGICALREF is null and AKTARIM>0";
            SVeriGetir();
        }

        private void BTNCMPGNADD_Click(object sender, EventArgs e)
        {
            SVeriGetir();
        }

        private void FrmSepet_Resize(object sender, EventArgs e)
        {
            panelControl1.Height = this.Height - 135;
            groupControl1.Width = this.Width;
        }
        public static string GSipId,GCLIENTREF;
        public static double GGenelI, GVadI, GMikI, GLTutar;
        private void GridSepet_CellDoubleClick(object sender, Telerik.WinControls.UI.GridViewCellEventArgs e)
        {
            GSipId=GridSepet.CurrentRow.Cells[0].Value.ToString();
            GCLIENTREF = GridSepet.CurrentRow.Cells["CLIENTREF"].Value.ToString();
            GGenelI = Convert.ToDouble(GridSepet.CurrentRow.Cells["GENELI"].Value.ToString());
            GVadI = Convert.ToDouble(GridSepet.CurrentRow.Cells["VADI"].Value.ToString());
            GMikI = Convert.ToDouble(GridSepet.CurrentRow.Cells["MIKI"].Value.ToString());
            GLTutar = Convert.ToDouble(GridSepet.CurrentRow.Cells["LineTutar"].Value.ToString());
            FrmSipLine fs = new FrmSipLine();
            fs.Show();
        }
    }
}
