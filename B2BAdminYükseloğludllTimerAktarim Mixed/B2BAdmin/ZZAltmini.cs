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
    public partial class ZZAltmini : Telerik.WinControls.UI.RadForm
    {
        public ZZAltmini()
        {
            InitializeComponent();
        }
        private void ItemGetir()
        {
            string SQLStr = "";
            if (TXTItem.Text != "") { SQLStr += "  and REPLACE(I.CODE,' ','')+REPLACE(I.NAME,' ','') like '%" + TXTItem.Text.Replace(" ", "") + "%'"; }
          

            GridItems.DataSource = baglanti.TabloAl("select I.STGRPCODE,I.CODE,I.SPECODE,I.NAME,I.NAME3,I.DOMINANTREFS5,I.LOGICALREF,X.STOK,(case when X.STOKID is null then '' else 'Var' END) as  Hareket from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS as I left outer join " + baglanti.INITIAL2 + "..XX_STOK_" + baglanti.GFirma + " as X on I.LOGICALREF=X.STOKID and X.AMBAR=0 where I.LOGICALREF>0 " + SQLStr + " order by I.CODE asc");

        }
        private void BTNSearch_Click(object sender, EventArgs e)
        {
            string SQLStr = "";
            if (TXTItem.Text != "") { SQLStr += "  and REPLACE(I.CODE,' ','')+REPLACE(I.NAME,' ','') like '%" + TXTItem.Text.Replace(" ", "") + "%'"; }
            GridItems.DataSource = baglanti.TabloAl("select I.STGRPCODE,I.CODE,I.SPECODE,I.NAME,I.NAME3,I.DOMINANTREFS5,I.LOGICALREF,X.STOK,(case when X.STOKID is null then '' else 'Var' END) as  Hareket from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS as I left outer join " + baglanti.INITIAL2 + "..XX_STOK_" + baglanti.GFirma + " as X on I.LOGICALREF=X.STOKID and X.AMBAR=0 where I.LOGICALREF>0 " + SQLStr + "");
        }

        private void GridItems_CellDoubleClick(object sender, Telerik.WinControls.UI.GridViewCellEventArgs e)
        {
            string LOGICALREF=GridItems.CurrentRow.Cells["LOGICALREF"].Value.ToString();
            string Stockref = ZZAlternate.GALTSTOCKREF;
            SqlDataReader oku3 = baglanti.DataReaderAl("select * from A_CROSSITEM where STOCKREF=" +Stockref+ " and YANURUN=" +LOGICALREF + "");
            if (!oku3.Read())
            {
            baglanti.VeriIslemler("insert into A_CROSSITEM (STOCKREF,YANURUN) values(" + Stockref + "," + LOGICALREF + ")  " +
              "insert into A_CROSSITEM (STOCKREF,YANURUN) values(" + LOGICALREF + "," + Stockref + ")");
            }
            SqlDataReader oku = baglanti.DataReaderAl("select YANURUN,STOCKREF from A_CROSSITEM where STOCKREF="+Stockref+"");
            while (oku.Read())
            {
                string LStockref = oku[0].ToString();
                SqlDataReader oku2 = baglanti.DataReaderAl("select * from A_CROSSITEM where STOCKREF=" + LStockref + " and YANURUN=" + LOGICALREF + "");
                if (!oku2.Read())
                {
                    if (LStockref != LOGICALREF)
                    {
                        baglanti.VeriIslemler("insert into A_CROSSITEM (STOCKREF,YANURUN) values(" + LStockref+ "," + LOGICALREF + ")"+
                        "  insert into A_CROSSITEM (STOCKREF,YANURUN) values(" + LOGICALREF + "," + LStockref + ")");
                    }
                }
            }


            SqlDataReader oku4 = baglanti.DataReaderAl("select YANURUN,STOCKREF from A_CROSSITEM where STOCKREF=" + LOGICALREF + "");
            while (oku4.Read())
            {
                string LStockref = oku4[0].ToString();
                SqlDataReader oku5 = baglanti.DataReaderAl("select * from A_CROSSITEM where STOCKREF=" + Stockref + " and YANURUN=" + LStockref + "");
                if (!oku5.Read())
                {
                    if (LStockref != Stockref)
                    {
                        baglanti.VeriIslemler("insert into A_CROSSITEM (STOCKREF,YANURUN) values(" + LStockref + "," + Stockref + ")" +
                        "  insert into A_CROSSITEM (STOCKREF,YANURUN) values(" + Stockref + "," + LStockref + ")");
                    }
                }
            }


            Urun2List();
            TXTItem.Text = "";
            TXTItem.Focus();

        }
        private void Urun2List() {
            string SQLStr = "";
            SQLStr += " and C.STOCKREF=" + ZZAlternate.GALTSTOCKREF + "";
            //if (CKBGRUP.Checked == true) { SQLStr += "and (CASE WHEN LOWLEVELREF>0 then 'VAR' else 'YOK' END)='VAR' "; } else { SQLStr = "and (CASE WHEN LOWLEVELREF>0 then 'VAR' else 'YOK' END)='YOK'"; }
            //if (TXTURUN2.Text != "") { SQLStr += "  and REPLACE(I.CODE,' ','')+REPLACE(I.NAME,' ','') like '%" + TXTURUN2.Text.Replace(" ", "") + "%'"; }
            GridUrun2.DataSource = baglanti.TabloAl("select I.STGRPCODE,I.CODE,I.NAME,I.LOGICALREF from A_CROSSITEM as C inner join " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS as I on C.YANURUN=I.LOGICALREF where 1=1 " + SQLStr);
        
        }
        private void ZZAltmini_Load(object sender, EventArgs e)
        {
            Urun2List();
        }

        private void GridUrun2_CellDoubleClick(object sender, Telerik.WinControls.UI.GridViewCellEventArgs e)
        {
            string LOGICALREF=GridUrun2.CurrentRow.Cells["LOGICALREF"].Value.ToString();
            baglanti.VeriIslemler("delete from A_CROSSITEM where (STOCKREF=" + ZZAlternate.GALTSTOCKREF + " and YANURUN=" + LOGICALREF + ") or (STOCKREF=" + LOGICALREF + " and YANURUN=" + ZZAlternate.GALTSTOCKREF + ")");
            Urun2List();
        }

        private void TXTItem_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13)
            {
                ItemGetir();
            }
        }

        private void BTNClear_Click(object sender, EventArgs e)
        {
            TXTItem.Text = "";
            TXTItem.Focus();
        }
    }
}
