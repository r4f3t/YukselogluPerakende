using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Telerik.WinControls;
using System.Data.SqlClient;


namespace B2BAdmin
{
    public partial class ZZAlternate : Telerik.WinControls.UI.RadForm
    {
        public ZZAlternate()
        {
            InitializeComponent();
        }
        private void ItemGetir() {
            string SQLStr = "";
            if (TXTItem.Text != "") { SQLStr += "  and REPLACE(I.CODE,' ','')+REPLACE(I.NAME,' ','') like '%" + TXTItem.Text.Replace(" ", "") + "%'"; }
            if (TXTSPECODE.Text != "") { SQLStr += " and I.SPECODE='" + TXTSPECODE.Text + "'"; }
            if (CMBSPE2.Text != "") { SQLStr += " and I.SPECODE2='" + CMBSPE2.Text + "'"; }
            if (CMBSPE3.Text != "") { SQLStr += " and I.SPECODE3='" + CMBSPE3.Text + "'"; }
            if (CMBSPE4.Text != "") { SQLStr += " and I.SPECODE4='" + CMBSPE4.Text + "'"; }
            if (CMBSPE5.Text != "") { SQLStr += " and I.SPECODE5='" + CMBSPE5.Text + "'"; }

            GridItems.DataSource = baglanti.TabloAl("select I.STGRPCODE,I.CODE,I.SPECODE,I.NAME,I.NAME3,I.DOMINANTREFS5,I.LOGICALREF,X.STOK,(case when X.STOKID is null then '' else 'Var' END) as  Hareket from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS as I left outer join " + baglanti.INITIAL2 + "..XX_STOK_" + baglanti.GFirma + " as X on I.LOGICALREF=X.STOKID and X.AMBAR=0 where I.LOGICALREF>0 " + SQLStr + " order by I.CODE asc");
        
        }
        private void radButton1_Click(object sender, EventArgs e)
        {
            ItemGetir();
        }

        private void GridItems_CellClick(object sender, Telerik.WinControls.UI.GridViewCellEventArgs e)
        {
            string SQLStr = "";
            SQLStr += " and C.STOCKREF="+GridItems.CurrentRow.Cells["LOGICALREF"].Value.ToString()+"";
            //if (CKBGRUP.Checked == true) { SQLStr += "and (CASE WHEN LOWLEVELREF>0 then 'VAR' else 'YOK' END)='VAR' "; } else { SQLStr = "and (CASE WHEN LOWLEVELREF>0 then 'VAR' else 'YOK' END)='YOK'"; }
            //if (TXTURUN2.Text != "") { SQLStr += "  and REPLACE(I.CODE,' ','')+REPLACE(I.NAME,' ','') like '%" + TXTURUN2.Text.Replace(" ", "") + "%'"; }
            GridUrun2.DataSource = baglanti.TabloAl("select I.STGRPCODE,I.CODE,I.NAME,C.LOGICALREF from A_CROSSITEM as C inner join " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS as I on C.YANURUN=I.LOGICALREF where 1=1 " + SQLStr + " order by I.CODE asc");
         
        }
        private void CMBCEK()
        {
            string SQLStr = "";
            if (TXTSPECODE.Text != "") { SQLStr += " and SPECODE='" + TXTSPECODE.Text + "'"; }
            if (CMBSPE2.Text != "") { SQLStr += " and SPECODE2='" + CMBSPE2.Text + "'"; }
            if (CMBSPE3.Text != "") { SQLStr += " and SPECODE3='" + CMBSPE3.Text + "'"; }
            if (CMBSPE4.Text != "") { SQLStr += " and SPECODE4='" + CMBSPE4.Text + "'"; }
            if (CMBSPE5.Text != "") { SQLStr += " and SPECODE5='" + CMBSPE5.Text + "'"; }
            CMBSPE2.Items.Clear();
            SqlDataReader oku = baglanti.DataReaderAl("select SPECODE2 from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS where LOGICALREF>0 " + SQLStr + " group by SPECODE2");
            while (oku.Read())
            {
                CMBSPE2.Items.Add(oku[0].ToString());
            }

            CMBSPE3.Items.Clear();
            SqlDataReader oku2 = baglanti.DataReaderAl("select SPECODE3 from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS where LOGICALREF>0 " + SQLStr + " group by SPECODE3");
            while (oku2.Read())
            {
                CMBSPE3.Items.Add(oku2[0].ToString());
            }

            CMBSPE4.Items.Clear();
            SqlDataReader oku3 = baglanti.DataReaderAl("select SPECODE4 from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS where LOGICALREF>0 " + SQLStr + " group by SPECODE4");
            while (oku3.Read())
            {
                CMBSPE4.Items.Add(oku3[0].ToString());
            }

            CMBSPE5.Items.Clear();
            SqlDataReader oku4 = baglanti.DataReaderAl("select SPECODE5 from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS where LOGICALREF>0 " + SQLStr + " group by SPECODE5");
            while (oku4.Read())
            {
                CMBSPE5.Items.Add(oku4[0].ToString());
            }
        }
        private void BTNClear_Click(object sender, EventArgs e)
        {
            TXTItem.Text = "";
            TXTSPECODE.Text = "";
            CMBSPE2.Text = "";
            CMBSPE3.Text = "";
            CMBSPE4.Text = "";
            CMBSPE5.Text = "";
           
        }
        public static string GALTSTOCKREF;
        private void GridItems_CellDoubleClick(object sender, Telerik.WinControls.UI.GridViewCellEventArgs e)
        {
            GALTSTOCKREF = GridItems.CurrentRow.Cells["LOGICALREF"].Value.ToString();
            ZZAltmini zza = new ZZAltmini();
            zza.Text = GridItems.CurrentRow.Cells[1].Value.ToString();
            zza.Show();
        }

        private void ZZAlternate_Load(object sender, EventArgs e)
        {
            CMBCEK();
        }

        private void TXTItem_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar==13)
            {
                ItemGetir();   
            }
        }
    }
}
