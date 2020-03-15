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
    public partial class FRMAraItem : Form
    {
        public FRMAraItem()
        {
            InitializeComponent();
        }
        private void GridGetir() {
            string SqlStr = FrmQueryLine.GSQLSTR;
            string SqlAra = "select * from "+baglanti.INITIAL2+"..LG_" + baglanti.GFirma + "_ITEMS where LOGICALREF>0 " + SqlStr + "";
            SqlDataReader oku = baglanti.DataReaderAl("select count(LOGICALREF) as Sayi from "+baglanti.INITIAL2+"..LG_" + baglanti.GFirma + "_ITEMS where LOGICALREF>0 " + SqlStr + " ");
            if (oku.Read())
            {
                this.Text = oku[0].ToString()+" Adet Ürün Listelenmektedir.";
            }
            GridItems.DataSource = baglanti.TabloAl(SqlAra);
        }
        private void FRMAraItem_Load(object sender, EventArgs e)
        {
            GridGetir();    
        }

        private void GridItems_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

    }
}

