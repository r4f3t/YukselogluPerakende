using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.IO;

namespace B2BAdmin
{
    public partial class ZFRMItemName : Form
    {
        public ZFRMItemName()
        {
            InitializeComponent();
        }
        private void UrunAra() {
            
            if (RBAlt.Checked == true)
            {
                if (TXTItem.Text == "") { return; }
                GridGezgin.DataSource = baglanti.TabloAl("select CODE as Kodu,NAME as Açıklama,DOMINANTREFS5 from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS where REPLACE(CODE,' ','')+REPLACE(NAME,' ','') like '" + TXTItem.Text.Replace(" ", "") + "%'");
                GridGezgin.Visible = true;
                GridGezgin.Location = new Point(121, 55);
                GridGezgin.Columns[2].Visible = false;
                GridGezgin.Columns[0].Width = GridGezgin.Width / 2 - 5;
                GridGezgin.Columns[1].Width = GridGezgin.Width / 2 - 5;
            }
            if (RBNorm.Checked==true)
            {
                NormCek("0");
            }
        }
        private void NormCek(string DomRef)
        {
            string SQLStr = "";
            if (TXTItem.Text != "") { SQLStr += "  and REPLACE(I.CODE,' ','')+REPLACE(I.NAME,' ','') like '%" + TXTItem.Text.Replace(" ", "") + "%'"; }
            if (TXTSPECODE.Text != "") { SQLStr += " and I.SPECODE='" + TXTSPECODE.Text + "'"; }
            if (CMBSPE2.Text != "") { SQLStr += " and I.SPECODE2='" + CMBSPE2.Text + "'"; }
            if (CMBSPE3.Text != "") { SQLStr += " and I.SPECODE3='" + CMBSPE3.Text + "'"; }
            if (CMBSPE4.Text != "") { SQLStr += " and I.SPECODE4='" + CMBSPE4.Text + "'"; }
            if (CMBSPE5.Text != "") { SQLStr += " and I.SPECODE5='" + CMBSPE5.Text + "'"; }
            GridVade.DataSource = baglanti.TabloAl("select I.STGRPCODE,I.CODE,I.SPECODE,I.NAME,I.NAME3,I.DOMINANTREFS5,I.LOGICALREF,X.STOK,(case when X.STOKID is null then '' else 'Var' END) as  Hareket from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS as I left outer join " + baglanti.INITIAL2 + "..XX_STOK_" + baglanti.GFirma + " as X on I.LOGICALREF=X.STOKID and X.AMBAR=0 where I.LOGICALREF>0 " + SQLStr + "");
        }
        private void AltCek(string DomRef) {
            GridVade.DataSource = baglanti.TabloAl("select I.STGRPCODE,I.CODE,I.SPECODE,I.NAME,I.NAME3,I.DOMINANTREFS5,I.LOGICALREF,X.STOK,(case when X.STOKID is null then '' else 'Var' END) as  Hareket from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS as I left outer join "+baglanti.INITIAL2+"..XX_STOK_"+baglanti.GFirma+" as X on I.LOGICALREF=X.STOKID and X.AMBAR=0 where I.DOMINANTREFS5=" + DomRef + "");
        }
        private void BTNADD_Click(object sender, EventArgs e)
        {
            UrunAra();
        }
        string GITemName, GITemCode, GDOMRef;
        private void GridGezgin_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            GITemName = GridGezgin.CurrentRow.Cells[1].Value.ToString();
            GITemCode= GridGezgin.CurrentRow.Cells[0].Value.ToString();
            GDOMRef = GridGezgin.CurrentRow.Cells[2].Value.ToString();
            TXTItem.Text = GITemName;
            if (GITemCode == "") { return; }
            this.Text = GITemCode + " İçin İşlem Yapılacaktır!!!";
            groupControl1.Text = GITemCode;
            MessageBox.Show(GITemCode + " İçin İşlem Yapılacaktır!!!");
            if (RBAlt.Checked == true) { AltCek(GDOMRef); }
            if (RBNorm.Checked == true) { NormCek(GDOMRef); }
            GridGezgin.Visible = false;
        
        }

        private void TXTItem_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (TXTItem.TextLength == 52) { }
            if (e.KeyChar==13)
            {
                UrunAra();
            }
        }

        private void BTNAktar_Click(object sender, EventArgs e)
        {
            if (RBAlt.Checked == true && GDOMRef == "") { return; }
            string UPDSTR = "";
            string UPDSTR3 = "";
            string UPDSTR2 = "";
            DialogResult dialogResult = MessageBox.Show(TXTItem.Text+"\n Aşağıdaki Tüm ürünlere AÇıklama Olarak Girilecektir!!!", "Uyarı!!!", MessageBoxButtons.YesNo);
            if (dialogResult==DialogResult.Yes)
            {
                //cck
                List<string> selectedItem = new List<string>();
                List<string> selectedItem2 = new List<string>();
                DataGridViewRow drow = new DataGridViewRow();
                for (int i = 0; i <= GridVade.Rows.Count - 1; i++)
                {
                    drow = GridVade.Rows[i];
                    if (drow.Cells["CA"].Value == "1") //checkbox seçiliyse 
                    {
                        string id = drow.Cells["LOGICALREF"].Value.ToString();
                        selectedItem.Add(id); //seçiliyse listeye ekle
                    }
                }
                //aciklama 2 için tikler
                for (int i = 0; i <= GridVade.Rows.Count - 1; i++)
                {
                    drow = GridVade.Rows[i];
                    if (drow.Cells["CA2"].Value == "1") //checkbox seçiliyse 
                    {
                        string id = drow.Cells["LOGICALREF"].Value.ToString();
                        selectedItem2.Add(id); //seçiliyse listeye ekle
                    }
                }


                //cck
                string INAME = "",B2BACK5="";
                INAME = TXTItem.Text;
                if (TXTItem.Text.Length >= 51) { INAME = TXTItem.Text.Substring(0, 50); }
                if (CKKNAME.Checked == true) { UPDSTR += ",NAME='" + INAME + "'"; B2BACK5 = TXTItem.Text; }
                if (CKCKNAME2.Checked == true) { UPDSTR3 += ",NAME3='"+TXTNAME2.Text+"'"; }
                if (CKCKB2B1.Checked == true) { UPDSTR2 += ",B2BACK1=B2BACK1+'-'+'" + TXTB2B1.Text + "'"; }
                if (CKCKB2B2.Checked == true) { UPDSTR2 += ",B2BACK2=B2BACK2+'-'+'" + TXTB2B2.Text + "'"; }
                if (CKCKB2B3.Checked == true) { UPDSTR2 += ",B2BACK3=B2BACK3+'-'+'" + TXTB2B3.Text + "'"; }
                if (CKCKB2B4.Checked == true) { UPDSTR2 += ",B2BACK4=B2BACK4+'-'+'" + TXTB2B4.Text + "'"; }
                foreach (string s in selectedItem) //çoklu silme işlemi gerçekleşiyor
                {
                    baglanti.VeriIslemler("update " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS set B2CCODE=B2CCODE" + UPDSTR + " where LOGICALREF=" + s + "");
                    string LOGREF = s;
                    //varsa update yoksa insert
                    SqlDataReader oku = baglanti.DataReaderAl("select LOGREF from " + baglanti.INITIAL2 + "..LG_XT1001_" + baglanti.GFirma + " where PARLOGREF="+s+"");
                    if (oku.Read()) {
                        LOGREF = oku[0].ToString();
                        baglanti.VeriIslemler("update " + baglanti.INITIAL2 + "..LG_XT1001_" + baglanti.GFirma + " set B2BACK5='" + B2BACK5 + "'" + UPDSTR2 + "  where LOGREF=" + LOGREF + "");
                    }
                    else
                    {
                        baglanti.VeriIslemler("insert into  " + baglanti.INITIAL2 + "..LG_XT1001_" + baglanti.GFirma + " (PARLOGREF,B2BACK1,B2BACK2,B2BACK3,B2BACK4,B2BACK5) values " +
                            "(" + s + ",'" + TXTB2B1.Text + "','" + TXTB2B2.Text + "','" + TXTB2B3.Text + "','" + TXTB2B4.Text + "','" + TXTItem.Text + "')");
                    }

                }
                foreach (string s in selectedItem2) 
                {
                    baglanti.VeriIslemler("update " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS set B2CCODE=B2CCODE" + UPDSTR3 + " where LOGICALREF=" + s + "");
                }
                if (RBAlt.Checked == true) { baglanti.VeriIslemler("update " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS set B2CCODE=B2CCODE" + UPDSTR + " where LOGICALREF=" + GDOMRef + ""); }
            }
            if (RBNorm.Checked == true) { NormCek("0"); } else { AltCek(GDOMRef); }
            CKKHepsi.Checked = false;
            CKKHepsi2.Checked = false;
        }

        private void CKCKSPE_CheckedChanged(object sender, EventArgs e)
        {
        
        }

        private void ZFRMItemName_Load(object sender, EventArgs e)
        {
            panel1.Height = this.Height-280;
            CMBCEK();
        }

        private void ZFRMItemName_SizeChanged(object sender, EventArgs e)
        {
            panel1.Height = this.Height - 280;
            GridItems.Height = this.Height - 100;
        }

        private void groupControl1_Paint(object sender, PaintEventArgs e)
        {

        }
        private void CMBCEK() {
            string SQLStr = "";
            if (TXTSPECODE.Text != "") { SQLStr += " and SPECODE='" + TXTSPECODE.Text + "'"; }
            if (CMBSPE2.Text != "") { SQLStr += " and SPECODE2='" + CMBSPE2.Text + "'"; }
            if (CMBSPE3.Text != "") { SQLStr += " and SPECODE3='" + CMBSPE3.Text + "'"; }
            if (CMBSPE4.Text != "") { SQLStr += " and SPECODE4='" + CMBSPE4.Text + "'"; }
            if (CMBSPE5.Text != "") { SQLStr += " and SPECODE5='" + CMBSPE5.Text + "'"; }
            CMBSPE2.Items.Clear();
            SqlDataReader oku = baglanti.DataReaderAl("select SPECODE2 from "+baglanti.INITIAL2+"..LG_"+baglanti.GFirma+"_ITEMS where LOGICALREF>0 "+SQLStr+" group by SPECODE2");
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
        private void KodAraması() {
            CMBCEK();
            string SQLStr = "";
            if (TXTSPECODE.Text != "") { SQLStr += " and SPECODE='"+TXTSPECODE.Text+"'"; }
            if (CMBSPE2.Text != "") { SQLStr += " and SPECODE2='" + CMBSPE2.Text + "'"; }
            if (CMBSPE3.Text != "") { SQLStr += " and SPECODE3='" + CMBSPE3.Text + "'"; }
            if (CMBSPE4.Text != "") { SQLStr += " and SPECODE4='" + CMBSPE4.Text + "'"; }
            if (CMBSPE5.Text != "") { SQLStr += " and SPECODE5='" + CMBSPE5.Text + "'"; }
            GridItems.DataSource = baglanti.TabloAl("select CODE as Kodu,NAME as Açıklama,DOMINANTREFS5,SPECODE2 as [ÖKod2],SPECODE3 as [ÖKod3],SPECODE4 as [ÖKod4],SPECODE5 as [ÖKod5] from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS where LOGICALREF>0 " + SQLStr + "");
            GridItems.Visible = true;
            //      GridGezgin.Location = new Point(121, 55);
            GridItems.Columns[2].Visible = false;
            GridItems.Columns[0].Width = GridGezgin.Width / 4 - 5;
            GridItems.Columns[1].Width = GridGezgin.Width / 4 - 5;
            GridItems.Columns[3].Width = GridGezgin.Width / 4 - 5;
            GridItems.Columns[4].Width = GridGezgin.Width / 4 - 5;  
        }
        private void textBox3_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar==13)
            {
                KodAraması();
            }
        }

        private void GridItems_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            GITemName = GridItems.CurrentRow.Cells[1].Value.ToString();
            GITemCode = GridItems.CurrentRow.Cells[0].Value.ToString();
            GDOMRef = GridItems.CurrentRow.Cells[2].Value.ToString();
            TXTItem.Text = GITemName;
            this.Text = GITemCode + " İçin İşlem Yapılacaktır!!!";
            groupControl1.Text = GITemCode;
            MessageBox.Show(GITemCode + " İçin İşlem Yapılacaktır!!!");
            if (RBAlt.Checked == true) { AltCek(GDOMRef); }
            GridGezgin.Visible = false;
        }

        private void BTNCLEAR_Click(object sender, EventArgs e)
        {
            TXTB2B1.Text = "";
            TXTB2B1.Text = "";
            TXTB2B1.Text = "";
            TXTB2B1.Text = "";
            TXTItem.Text = "";
            TXTNAME2.Text = "";
            TXTSPECODE.Text = "";
            CKCKB2B1.Checked = false;
            CKCKB2B2.Checked = false;
            CKCKB2B3.Checked = false;
            CKCKB2B4.Checked = false;
            CKCKNAME2.Checked = false;
            TXTSPECODE.Text = "";
            GridItems.Visible = false;
            GridGezgin.Visible = false;
            CMBSPE2.Text = "";
            CMBSPE3.Text = "";
            CMBSPE4.Text = "";
            CMBSPE5.Text = "";
            CMBCEK();
            GDOMRef = "";
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            KodAraması();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string SQLStr = "";
            if (TXTSPECODE.Text != "") { SQLStr += " and I.SPECODE='" + TXTSPECODE.Text + "'"; }
            if (CMBSPE2.Text != "") { SQLStr += " and I.SPECODE2='" + CMBSPE2.Text + "'"; }
            if (CMBSPE3.Text != "") { SQLStr += " and I.SPECODE3='" + CMBSPE3.Text + "'"; }
            if (CMBSPE4.Text != "") { SQLStr += " and I.SPECODE4='" + CMBSPE4.Text + "'"; }
            if (CMBSPE5.Text != "") { SQLStr += " and I.SPECODE5='" + CMBSPE5.Text + "'"; }
            GridVade.DataSource = baglanti.TabloAl("select I.STGRPCODE,I.CODE,I.SPECODE,I.NAME,I.NAME3,I.DOMINANTREFS5,I.LOGICALREF,X.STOK,(case when X.STOKID is null then '' else 'Var' END) as  Hareket from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS as I left outer join " + baglanti.INITIAL2 + "..XX_STOK_" + baglanti.GFirma + " as X on I.LOGICALREF=X.STOKID and X.AMBAR=0 where I.LOGICALREF>0 "+SQLStr+" ");
      
         
        }

        private void CKKHepsi_CheckedChanged(object sender, EventArgs e)
        {
            if (CKKHepsi.Checked==true)
            {
                DataGridViewRow drow = new DataGridViewRow();
                for (int i = 0; i <= GridVade.Rows.Count - 1; i++)
                {
                    drow = GridVade.Rows[i];
                    drow.Cells["CA"].Value = "1";//checkbox seçiliyse 
                 
                }
            }
            else
            {
                DataGridViewRow drow = new DataGridViewRow();
                for (int i = 0; i <= GridVade.Rows.Count - 1; i++)
                {
                    drow = GridVade.Rows[i];
                    drow.Cells["CA"].Value = "0";//checkbox seçiliyse 

                }
            }
        }

        private void TXTNAME2_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (TXTNAME2.TextLength == 202) { e.Handled = true; TXTNAME2.Text = TXTNAME2.Text.Substring(0, 201); }
        }

        private void CKKHepsi2_CheckedChanged(object sender, EventArgs e)
        {
            if (CKKHepsi2.Checked == true)
            {
                DataGridViewRow drow = new DataGridViewRow();
                for (int i = 0; i <= GridVade.Rows.Count - 1; i++)
                {
                    drow = GridVade.Rows[i];
                    drow.Cells["CA2"].Value = "1";//checkbox seçiliyse 

                }
            }
            else
            {
                DataGridViewRow drow = new DataGridViewRow();
                for (int i = 0; i <= GridVade.Rows.Count - 1; i++)
                {
                    drow = GridVade.Rows[i];
                    drow.Cells["CA2"].Value = "0";//checkbox seçiliyse 

                }
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            openFileDialog1.ShowDialog();
        }

        private void saveFileDialog1_FileOk(object sender, CancelEventArgs e)
        {
          //  label1.Text = openFileDialog1.FileName;
            File.Copy(openFileDialog1.FileName,Application.StartupPath+"\\"+openFileDialog1.SafeFileName);
        }
    }
}
