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
    public partial class FrmQueryLine : Form
    {
        public FrmQueryLine()
        {
            InitializeComponent();
        }
        private string SQLSTRYap()
        {
            string SQLStr = "", ARAStr = "", BitSTR = "";
            if (TXTNAME.Text != "")
            {
                if (CMBA10.Text == "%") { ARAStr = " like "; BitSTR = "%"; }
                if (CMBA10.Text == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA10.Text == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA10.Text == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA10.Text == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA10.Text == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA10.Text == ">=") { ARAStr = ">="; BitSTR = ""; }
                SQLStr += " and NAME " + ARAStr + " ''" + TXTNAME.Text + "" + BitSTR + "''";
            }
            if (TXTCODE.Text != "")
            {
                if (CMBA11.Text == "%") { ARAStr = " like "; BitSTR = "%"; }
                if (CMBA11.Text == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA11.Text == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA11.Text == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA11.Text == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA11.Text == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA11.Text == ">=") { ARAStr = ">="; BitSTR = ""; }
                SQLStr += " and CODE " + ARAStr + " ''" + TXTCODE.Text + "" + BitSTR + "''";
            }
            if (TXTPRODUCERCODE.Text != "")
            {
                if (CMBA12.Text == "%") { ARAStr = " like "; BitSTR = "%"; }
                if (CMBA12.Text == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA12.Text == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA12.Text == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA12.Text == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA12.Text == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA12.Text == ">=") { ARAStr = ">="; BitSTR = ""; }
                SQLStr += " and PRODUCERCODE " + ARAStr + " ''" + TXTPRODUCERCODE.Text + "" + BitSTR + "''";
            }
            if (TXTSTGRPCODE.Text != "")
            {
                if (CMBA13.Text == "%") { ARAStr = " like "; BitSTR = "%"; }
                if (CMBA13.Text == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA13.Text == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA13.Text == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA13.Text == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA13.Text == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA13.Text == ">=") { ARAStr = ">="; BitSTR = ""; }
                SQLStr += " and STGRPCODE " + ARAStr + " ''" + TXTSTGRPCODE.Text + "" + BitSTR + "''";
            }
            if (TXTSPECODE2.Text != "")
            {
                if (CMBA14.Text == "%") { ARAStr = " like "; BitSTR = "%"; }
                if (CMBA14.Text == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA14.Text == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA14.Text == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA14.Text == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA14.Text == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA14.Text == ">=") { ARAStr = ">="; BitSTR = ""; }
                SQLStr += " and SPECODE2 " + ARAStr + " ''" + TXTSPECODE2.Text + "" + BitSTR + "''";
            }
            if (TXTSPECODE3.Text != "")
            {
                if (CMBA15.Text == "%") { ARAStr = " like "; BitSTR = "%"; }
                if (CMBA15.Text == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA15.Text == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA15.Text == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA15.Text == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA15.Text == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA15.Text == ">=") { ARAStr = ">="; BitSTR = ""; }
                SQLStr += " and SPECODE3 " + ARAStr + " ''" + TXTSPECODE3.Text + "" + BitSTR + "''";
            }
            if (TXTSPECODE4.Text != "")
            {
                if (CMBA16.Text == "%") { ARAStr = " like "; BitSTR = "%"; }
                if (CMBA16.Text == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA16.Text == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA16.Text == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA16.Text == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA16.Text == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA16.Text == ">=") { ARAStr = ">="; BitSTR = ""; }
                SQLStr += " and SPECODE4  " + ARAStr + " ''" + TXTSPECODE4.Text + "" + BitSTR + "''";
            }
            if (TXTSPECODE5.Text != "")
            {
                if (CMBA17.Text == "%") { ARAStr = " like "; BitSTR = "%"; }
                if (CMBA17.Text == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA17.Text == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA17.Text == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA17.Text == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA17.Text == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA17.Text == ">=") { ARAStr = ">="; BitSTR = ""; }
                SQLStr += " and SPECODE5 " + ARAStr + " ''" + TXTSPECODE5.Text + "" + BitSTR + "''";
            }
            if (TXTSPECODE.Text != "")
            {
                if (CMBA18.Text == "%") { ARAStr = " like "; BitSTR = "%"; }
                if (CMBA18.Text == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA18.Text == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA18.Text == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA18.Text == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA18.Text == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA18.Text == ">=") { ARAStr = ">="; BitSTR = ""; }
                SQLStr += " and SPECODE " + ARAStr + " ''" + TXTSPECODE.Text + "" + BitSTR + "''";
            }
            if (CMBYetki.Text != "")
            {
                if (CMBA19.Text == "%") { ARAStr = " like "; BitSTR = "%"; }
                if (CMBA19.Text == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA19.Text == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA19.Text == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA19.Text == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA19.Text == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA19.Text == ">=") { ARAStr = ">="; BitSTR = ""; }
                SQLStr += " and CYPHCODE " + ARAStr + " ''" + CMBYetki.Text + "" + BitSTR + "''";
            }
            return SQLStr;
        }
        private void GezVeriGetir(string LNesne, string LAlan, Point GridLoc, string Caption)
        {
            // if (LNesne == "") { return; }
            panel1.Visible = true;
            GRidGezgin.DataSource = baglanti.TabloAl("select * from (select " + LAlan + " from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS where " + LAlan + " like '%" + LNesne + "%' and ACTIVE=0 and CARDTYPE<>22 group by " + LAlan + ") as K order by K." + LAlan + " asc ");
            GRidGezgin.Columns[0].Width = GRidGezgin.Width - 10;
            GRidGezgin.Columns[0].HeaderText = Caption;
            //  panel1.Location = GridLoc;
            GRidGezgin.AccessibleName = LAlan;
        }
      
        private void BTNCMPGNADD_Click(object sender, EventArgs e)
        {
            string IREF = FrmQueryBas.GIREF;
            string Sqlstr = SQLSTRYap();
            //ındsart kontrol
            SqlDataReader oku = baglanti.DataReaderAl("select LOGICALREF from A_INDSARTLINE where SQLSTR='"+Sqlstr+"' and IREF="+IREF+"");
            if (oku.Read())
            {
                MessageBox.Show("Aynı Şarttan Ürün Grubu İçerisinde Bulunmaktadır. ");
                return;
            }
                baglanti.VeriIslemler("INSERT INTO [A_INDSARTLINE](SQLSTR,IREF,A10,A11,A12,A13,A14,A15,A16,A17,CMBA10,CMBA11,CMBA12,CMBA13,CMBA14,CMBA15,CMBA16,CMBA17,A18,CMBA18,A19,CMBA19)VALUES" +
                    "('" + Sqlstr + "'," + IREF + ",'" + TXTNAME.Text + "','" + TXTCODE.Text + "','" + TXTPRODUCERCODE.Text + "','" + TXTSTGRPCODE.Text + "','" + TXTSPECODE2.Text + "','" + TXTSPECODE3.Text + "','" + TXTSPECODE4.Text + "','" + TXTSPECODE5.Text + "','" + CMBA10.Text + "','" + CMBA11.Text + "','" + CMBA12.Text + "','" + CMBA13.Text + "','" + CMBA14.Text + "','" + CMBA15.Text + "','" + CMBA16.Text + "','" + CMBA17.Text + "','"+TXTSPECODE.Text+"','"+CMBA18.Text+"','"+CMBYetki.Text+"','"+CMBA19.Text+"')");
                MessageBox.Show("Kayıt Başarılı.");
          
            GridQCek();
        }
        private void GRidGezgin_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (GRidGezgin.AccessibleName == "NAME") { TXTNAME.Text = GRidGezgin.CurrentRow.Cells[0].Value.ToString(); }
            if (GRidGezgin.AccessibleName == "CODE") { TXTCODE.Text = GRidGezgin.CurrentRow.Cells[0].Value.ToString(); }
            if (GRidGezgin.AccessibleName == "PRODUCERCODE") { TXTPRODUCERCODE.Text = GRidGezgin.CurrentRow.Cells[0].Value.ToString(); }
            if (GRidGezgin.AccessibleName == "STGRPCODE") { TXTSTGRPCODE.Text = GRidGezgin.CurrentRow.Cells[0].Value.ToString(); }
            if (GRidGezgin.AccessibleName == "SPECODE") { TXTSPECODE.Text = GRidGezgin.CurrentRow.Cells[0].Value.ToString(); }
            if (GRidGezgin.AccessibleName == "SPECODE2") { TXTSPECODE2.Text = GRidGezgin.CurrentRow.Cells[0].Value.ToString(); }
            if (GRidGezgin.AccessibleName == "SPECODE3") { TXTSPECODE3.Text = GRidGezgin.CurrentRow.Cells[0].Value.ToString(); }
            if (GRidGezgin.AccessibleName == "SPECODE4") { TXTSPECODE4.Text = GRidGezgin.CurrentRow.Cells[0].Value.ToString(); }
            if (GRidGezgin.AccessibleName == "SPECODE5") { TXTSPECODE5.Text = GRidGezgin.CurrentRow.Cells[0].Value.ToString(); }
            if (GRidGezgin.AccessibleName == "CYPHCODE")
            {
                CMBYetki.Text = GRidGezgin.CurrentRow.Cells[0].Value.ToString();
                TXTYINDor.Text = GRidGezgin.CurrentRow.Cells[1].Value.ToString();
            }
        }

        private void TXTNAME_DoubleClick(object sender, EventArgs e)
        {
            GezVeriGetir(TXTNAME.Text, "NAME", new Point(193, 47), "Ürün Adı");
        }

        private void TXTCODE_DoubleClick(object sender, EventArgs e)
        {
            GezVeriGetir(TXTCODE.Text, "CODE", new Point(193, 71), "Ürün Kodu");
        }

        private void TXTPRODUCERCODE_DoubleClick(object sender, EventArgs e)
        {
            GezVeriGetir(TXTPRODUCERCODE.Text, "PRODUCERCODE", new Point(193, 95), "Üretici Kodu");
        }

        private void TXTSTGRPCODE_DoubleClick(object sender, EventArgs e)
        {
            GezVeriGetir(TXTSTGRPCODE.Text, "STGRPCODE", new Point(193, 119), "Grup Kodu");
        }

        private void TXTSPECODE_DoubleClick(object sender, EventArgs e)
        {
            GezVeriGetir(TXTSPECODE.Text, "SPECODE", new Point(193, 143), "Özel Kod");

        }

        private void TXTSPECODE2_DoubleClick(object sender, EventArgs e)
        {
            GezVeriGetir(TXTSPECODE2.Text, "SPECODE2", new Point(499, 46), "Özel Kod 2");
        }

        private void TXTSPECODE3_DoubleClick(object sender, EventArgs e)
        {
            GezVeriGetir(TXTSPECODE3.Text, "SPECODE3", new Point(499, 70), "Özel Kod 3");
        }

        private void TXTSPECODE4_DoubleClick(object sender, EventArgs e)
        {
            GezVeriGetir(TXTSPECODE4.Text, "SPECODE4", new Point(499, 94), "Özel Kod 4");
        }

        private void TXTSPECODE5_DoubleClick(object sender, EventArgs e)
        {
            GezVeriGetir(TXTSPECODE5.Text, "SPECODE5", new Point(499, 118), "Özel Kod 5");
        }

        private void TXTNAME_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13) { GezVeriGetir(TXTNAME.Text, "NAME", new Point(193, 47), "Ürün Adı"); }
        }

        private void TXTCODE_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13) { GezVeriGetir(TXTCODE.Text, "CODE", new Point(193, 71), "Ürün Kodu"); }
        }

        private void TXTPRODUCERCODE_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13) { GezVeriGetir(TXTPRODUCERCODE.Text, "PRODUCERCODE", new Point(193, 95), "Üretici Kodu"); }
        }

        private void TXTSTGRPCODE_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13) { GezVeriGetir(TXTSTGRPCODE.Text, "STGRPCODE", new Point(193, 119), "Grup Kodu"); }
        }

        private void TXTSPECODE_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13) { GezVeriGetir(TXTSPECODE.Text, "SPECODE", new Point(193, 143), "Özel Kod"); }
        }

        private void TXTSPECODE2_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13) { GezVeriGetir(TXTSPECODE2.Text, "SPECODE2", new Point(193, 143), "Özel Kod 2"); }
        }

        private void TXTSPECODE3_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13) { GezVeriGetir(TXTSPECODE3.Text, "SPECODE3", new Point(193, 143), "Özel Kod 3"); }
        }

        private void TXTSPECODE4_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13) { GezVeriGetir(TXTSPECODE4.Text, "SPECODE4", new Point(193, 143), "Özel Kod 4"); }
        }

        private void TXTSPECODE5_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13) { GezVeriGetir(TXTSPECODE5.Text, "SPECODE5", new Point(193, 143), "Özel Kod 5"); }
        }

        private void GridQCek() {
            string IREF = FrmQueryBas.GIREF;
            GridQline.DataSource = baglanti.TabloAl("select A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,CMBA10,CMBA11,CMBA12,CMBA13,CMBA14,CMBA15,CMBA16,CMBA17,CMBA18,CMBA19,LOGICALREF,SQLSTR from A_INDSARTLINE where IREF=" + IREF + "");
        
        }
        private void YetkicekCMB()
        {
            CMBYetki.Items.Clear();
            CMBYetki.Items.Add("YOK-0");
            SqlDataReader oku = baglanti.DataReaderAl("select NAME,LOGICALREF from A_CYPHCODES order by NAME");
            while (oku.Read())
            {
                CMBYetki.Items.Add(oku[0].ToString() + "-" + oku[1].ToString());
            }
        }
        private void FrmQueryLine_Load(object sender, EventArgs e)
        {
            YetkicekCMB();
            GridQCek();
           // TXTVEriCek();
        }
        public static string GSQLSTR;
        private void GridQline_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            TXTNAME.Text = GridQline.CurrentRow.Cells["A10"].Value.ToString();
            TXTCODE.Text = GridQline.CurrentRow.Cells["A11"].Value.ToString();
            TXTPRODUCERCODE.Text = GridQline.CurrentRow.Cells["A12"].Value.ToString();
            TXTSTGRPCODE.Text = GridQline.CurrentRow.Cells["A13"].Value.ToString();
            TXTSPECODE2.Text = GridQline.CurrentRow.Cells["A14"].Value.ToString();
            TXTSPECODE3.Text = GridQline.CurrentRow.Cells["A15"].Value.ToString();
            TXTSPECODE4.Text = GridQline.CurrentRow.Cells["A16"].Value.ToString();
            TXTSPECODE5.Text = GridQline.CurrentRow.Cells["A17"].Value.ToString();
            TXTSPECODE.Text = GridQline.CurrentRow.Cells["A18"].Value.ToString();
            CMBYetki.Text = GridQline.CurrentRow.Cells["A19"].Value.ToString();
            CMBA10.Text = GridQline.CurrentRow.Cells["CMBA10"].Value.ToString();
            CMBA11.Text = GridQline.CurrentRow.Cells["CMBA11"].Value.ToString();
            CMBA12.Text = GridQline.CurrentRow.Cells["CMBA12"].Value.ToString();
            CMBA13.Text = GridQline.CurrentRow.Cells["CMBA13"].Value.ToString();
            CMBA14.Text = GridQline.CurrentRow.Cells["CMBA14"].Value.ToString();
            CMBA15.Text = GridQline.CurrentRow.Cells["CMBA15"].Value.ToString();
            CMBA16.Text = GridQline.CurrentRow.Cells["CMBA16"].Value.ToString();
            CMBA17.Text = GridQline.CurrentRow.Cells["CMBA17"].Value.ToString();
            CMBA18.Text = GridQline.CurrentRow.Cells["CMBA18"].Value.ToString();
            CMBA19.Text = GridQline.CurrentRow.Cells["CMBA19"].Value.ToString();
            HFQRef.Text = GridQline.CurrentRow.Cells["LOGICALREF"].Value.ToString();
            GSQLSTR= GridQline.CurrentRow.Cells["SQLSTR"].Value.ToString();
            FRMAraItem fi = new FRMAraItem();
            fi.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (HFQRef.Text == "") { MessageBox.Show("Satır Seçmediniz!!!"); }
            string IREF = HFQRef.Text;
            string Sqlstr = SQLSTRYap();
            DialogResult dialogResult = MessageBox.Show("KAyıt Güncellenecektir", "Uyarı!!!", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
         
            SqlDataReader oku = baglanti.DataReaderAl("select LOGICALREF from A_INDSARTLINE where LOGICALREF="+IREF+"");
            if (oku.Read())
            {
                baglanti.VeriIslemler("UPDATE [A_INDSARTLINE]SET [SQLSTR] = '" + Sqlstr + "'" +
          ",[A10] ='" + TXTNAME.Text + "'" +
          ",[A11] ='" + TXTCODE.Text + "'" +
          ",[A12] ='" + TXTPRODUCERCODE.Text + "'" +
          ",[A13] ='" + TXTSTGRPCODE.Text + "'" +
          ",[A14] ='" + TXTSPECODE2.Text + "'" +
          ",[A15] ='" + TXTSPECODE3.Text + "'" +
          ",[A16] ='" + TXTSPECODE4.Text + "'" +
          ",[A17] ='" + TXTSPECODE5.Text + "'" +
          ",[A18] ='" + TXTSPECODE.Text + "'" +
          ",[A19] ='" + CMBYetki.Text + "'" +
          ",[CMBA10] ='" + CMBA10.Text + "'" +
          ",[CMBA11] ='" + CMBA11.Text + "'" +
          ",[CMBA12] ='" + CMBA12.Text + "'" +
          ",[CMBA13] ='" + CMBA13.Text + "'" +
          ",[CMBA14] ='" + CMBA14.Text + "'" +
          ",[CMBA15] ='" + CMBA15.Text + "'" +
          ",[CMBA16] ='" + CMBA16.Text + "'" +
          ",[CMBA17] ='" + CMBA17.Text + "'" +
          ",[CMBA18] ='" + CMBA18.Text + "'" +
          ",[CMBA19] ='" + CMBA19.Text + "'" +
     "WHERE LOGICALREF=" + HFQRef.Text + "");
                MessageBox.Show("Güncelleme İşlemi Başarılı");
                GridQCek();

            }
               
            else
            {
                MessageBox.Show("Kayıt Seçmediniz!!!");
            }
           }
            else if (dialogResult == DialogResult.No)
            {
                return;
            }
          
        }

        private void button2_Click(object sender, EventArgs e)
        {
             DialogResult dialogResult = MessageBox.Show("KAyıt Silinecektir?", "Uyarı!!!", MessageBoxButtons.YesNo);
             if (dialogResult == DialogResult.Yes)
             {
                 if (HFQRef.Text != "")
                 {
                     baglanti.VeriIslemler("delete from A_INDSARTLINE where LOGICALREF=" + HFQRef.Text + "");
                     GridQCek();
                 }
                 else
                 {
                     MessageBox.Show("Satır Seçmediniz!!!");
                 }
             }
             else
             {
                 return;
             }
        }

        private void GridQline_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            TXTNAME.Text = GridQline.CurrentRow.Cells["A10"].Value.ToString();
            TXTCODE.Text = GridQline.CurrentRow.Cells["A11"].Value.ToString();
            TXTPRODUCERCODE.Text = GridQline.CurrentRow.Cells["A12"].Value.ToString();
            TXTSTGRPCODE.Text = GridQline.CurrentRow.Cells["A13"].Value.ToString();
            TXTSPECODE2.Text = GridQline.CurrentRow.Cells["A14"].Value.ToString();
            TXTSPECODE3.Text = GridQline.CurrentRow.Cells["A15"].Value.ToString();
            TXTSPECODE4.Text = GridQline.CurrentRow.Cells["A16"].Value.ToString();
            TXTSPECODE5.Text = GridQline.CurrentRow.Cells["A17"].Value.ToString();
            TXTSPECODE.Text = GridQline.CurrentRow.Cells["A18"].Value.ToString();
            CMBYetki.Text = GridQline.CurrentRow.Cells["A19"].Value.ToString();
            CMBA10.Text = GridQline.CurrentRow.Cells["CMBA10"].Value.ToString();
            CMBA11.Text = GridQline.CurrentRow.Cells["CMBA11"].Value.ToString();
            CMBA12.Text = GridQline.CurrentRow.Cells["CMBA12"].Value.ToString();
            CMBA13.Text = GridQline.CurrentRow.Cells["CMBA13"].Value.ToString();
            CMBA14.Text = GridQline.CurrentRow.Cells["CMBA14"].Value.ToString();
            CMBA15.Text = GridQline.CurrentRow.Cells["CMBA15"].Value.ToString();
            CMBA16.Text = GridQline.CurrentRow.Cells["CMBA16"].Value.ToString();
            CMBA17.Text = GridQline.CurrentRow.Cells["CMBA17"].Value.ToString();
            CMBA18.Text = GridQline.CurrentRow.Cells["CMBA18"].Value.ToString();
            CMBA19.Text = GridQline.CurrentRow.Cells["CMBA19"].Value.ToString();
            HFQRef.Text = GridQline.CurrentRow.Cells["LOGICALREF"].Value.ToString();
            GSQLSTR = GridQline.CurrentRow.Cells["SQLSTR"].Value.ToString();
        }

    
        private void groupControl1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void CMBYetki_SelectedIndexChanged(object sender, EventArgs e)
        {
            panel1.Visible = true;
            GRidGezgin.DataSource = baglanti.TabloAl("select VADESTR,INDORAN from A_CYPHCODELine where FLAG=0 and VREF='" + CMBYetki.Text.Split('-')[1] + "'");
            GRidGezgin.Columns[0].Width = GRidGezgin.Width / 2 - 10;
            GRidGezgin.Columns[0].HeaderText = "Yetki Kodu";
            //  panel1.Location = GridLoc;
            GRidGezgin.AccessibleName = "CYPHCODE";
        }

        private void TXTPRODUCERCODE_TextChanged(object sender, EventArgs e)
        {

        }

        private void TXTNAME_TextChanged(object sender, EventArgs e)
        {

        }

        private void TXTNAME_Click(object sender, EventArgs e)
        {

        }

    }
}
