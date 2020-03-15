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
    public partial class FRMItems : Form
    {
        public FRMItems()
        {
            InitializeComponent();
        }
        private void UrunAra()
        {
                if (TXTItem.Text == "") { return; }
                GridGezgin.DataSource = baglanti.TabloAl("select CODE as Kodu,NAME as Açıklama,DOMINANTREFS5 from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS where REPLACE(CODE,' ','')+REPLACE(NAME,' ','') like '" + TXTItem.Text.Replace(" ", "") + "%'");
                GridGezgin.Visible = true;
                GridGezgin.Location = new Point(121, 55);
                GridGezgin.Columns[2].Visible = false;
                GridGezgin.Columns[0].Width = GridGezgin.Width / 2 - 5;
                GridGezgin.Columns[1].Width = GridGezgin.Width / 2 - 5;
          
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
            GridItems.DataSource = baglanti.TabloAl("select I.STGRPCODE,I.CODE,I.SPECODE,I.NAME,I.NAME3,I.DOMINANTREFS5,I.LOGICALREF,X.STOK,(case when X.STOKID is null then '' else 'Var' END) as  Hareket from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS as I left outer join " + baglanti.INITIAL2 + "..XX_STOK_" + baglanti.GFirma + " as X on I.LOGICALREF=X.STOKID and X.AMBAR=0 where I.LOGICALREF>0 " + SQLStr + "");
         
        }
        private void AltCek(string DomRef)
        {
            GridItems.DataSource = baglanti.TabloAl("select I.STGRPCODE,I.CODE,I.SPECODE,I.NAME,I.NAME3,I.DOMINANTREFS5,I.LOGICALREF,X.STOK,(case when X.STOKID is null then '' else 'Var' END) as  Hareket from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS as I left outer join " + baglanti.INITIAL2 + "..XX_STOK_" + baglanti.GFirma + " as X on I.LOGICALREF=X.STOKID and X.AMBAR=0 where I.DOMINANTREFS5=" + DomRef + "");
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
        private void YeniGrupal() {
            int SonSayi = 0;
            SqlDataReader oku = baglanti.DataReaderAl("select max(LOWLEVELREF)as SonSayi from A_ITEMS ");
            if (oku.Read())
            {
                SonSayi = Convert.ToInt32(oku[0].ToString());
                SonSayi++;
            }
            TXTGrupAd.Text = SonSayi.ToString();
            GridItems.DataSource = baglanti.TabloAl("select I.STGRPCODE,I.CODE,I.SPECODE,I.NAME,I.NAME3,I.DOMINANTREFS5,I.LOGICALREF,X.STOK,(case when X.STOKID is null then '' else 'Var' END) as  Hareket from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS as I left outer join " + baglanti.INITIAL2 + "..XX_STOK_" + baglanti.GFirma + " as X on I.LOGICALREF=X.STOKID and X.AMBAR=0 inner join A_ITEMS as AI on I.LOGICALREF=AI.STOCKREF where I.LOGICALREF>0 and AI.LOWLEVELREF=" + TXTGrupAd.Text + " ");
        
        }
        private void FRMItems_Load(object sender, EventArgs e)
        {
            CMBCEK();
            YeniGrupal();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            NormCek("0");
        }

        private void TXTItem_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar==13)
            {
                UrunAra();
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            List<string> selectedItem = new List<string>();
            List<string> selectedItem2 = new List<string>();
            for (int i = 0; i <= GridItems.Rows.Count - 1; i++)
            {
              
                if (GridItems.Rows[i].Cells["CA"].Value == "1") //checkbox seçiliyse 
                {
                    string id = GridItems.Rows[i].Cells["LOGICALREF"].Value.ToString();
                    MessageBox.Show(id);
                    selectedItem.Add(id); //seçiliyse listeye ekle
                }
            }
        }

        private void CKKHepsi_CheckedChanged(object sender, EventArgs e)
        {
            if (CKKHepsi.Checked == true)
            {
                DataGridViewRow drow = new DataGridViewRow();
                for (int i = 0; i <= GridItems.Rows.Count - 1; i++)
                {
                    drow = GridItems.Rows[i];
                    drow.Cells["CA"].Value = "1";//checkbox seçiliyse 

                }
            }
            else
            {
                DataGridViewRow drow = new DataGridViewRow();
                for (int i = 0; i <= GridItems.Rows.Count - 1; i++)
                {
                    drow = GridItems.Rows[i];
                    drow.Cells["CA"].Value = "0";//checkbox seçiliyse 

                }
            }
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            openFileDialog1.ShowDialog();
        }

        private void openFileDialog1_FileOk(object sender, CancelEventArgs e)
        {
            pictureBox1.ImageLocation = openFileDialog1.FileName;
        }

        private void button3_Click(object sender, EventArgs e)
        {

            if (openFileDialog1.FileName == "openFileDialog1") { return; }
             DialogResult dialogResult = MessageBox.Show(openFileDialog1.SafeFileName+"\n Aşağıdaki Tüm ürünlere Resim Olarak Girilecektir!!!", "Uyarı!!!", MessageBoxButtons.YesNo);
             if (dialogResult == DialogResult.Yes)
             {
                 List<string> selectedItem = new List<string>();
                 List<string> selectedItem2 = new List<string>();
                 for (int i = 0; i <= GridItems.Rows.Count - 1; i++)
                 {

                     if (GridItems.Rows[i].Cells["CA"].Value == "1") //checkbox seçiliyse 
                     {
                         string id = GridItems.Rows[i].Cells["LOGICALREF"].Value.ToString();
                         selectedItem.Add(id); //seçiliyse listeye ekle
                     }
                 }
                 SaveFileDialog sfd = new SaveFileDialog();
                // sfd.ShowDialog();
                 sfd.FileName = "C:\\inetpub\\wwwroot\\mental\\urunpics\\" + openFileDialog1.SafeFileName;
                 string DEstFile = "C:\\Users\\Rafet\\Documents\\Visual Studio 2012\\Projects\\MENTALB2B\\çalışmalarım\\ALTEYUKSELOGLU\\urunpics\\" + openFileDialog1.SafeFileName;
                 File.Copy(openFileDialog1.FileName, sfd.FileName, true);
                 foreach (string s in selectedItem) //çoklu silme işlemi gerçekleşiyor
                 {
                     SqlDataReader oku = baglanti.DataReaderAl("select LOGICALREF from A_ITEMS where STOCKREF=" + s + "");
                     if (oku.Read())
                     {
                         baglanti.VeriIslemler("update A_ITEMS set PICURL='" + openFileDialog1.SafeFileName + "',EDITDATE='" + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss") + "' where STOCKREF=" + s + "");
                     }
                     else
                     {
                         baglanti.VeriIslemler("insert into A_ITEMS (PICURL,STOCKREF,EDITDATE)values('" + openFileDialog1.SafeFileName + "'," + s + ",'" + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss") + "')");
                     }
                 }

                 MessageBox.Show("Aktarım Tamamlandı!");
                 Temizle();
             }
        }
        private void Temizle() {
            TXTItem.Text = "";
            TXTSPECODE.Text = "";
            CKKHepsi.Checked = false;
            CMBSPE2.Text = "";
            CMBSPE3.Text = "";
            CMBSPE4.Text = "";
            CMBSPE5.Text = "";
            CMBCEK();
        }
        private void BTNCLEAR_Click_1(object sender, EventArgs e)
        {
            Temizle(); 
        }

        private void button5_Click(object sender, EventArgs e)
        {
            TXTURUN2.Text = "";
        }

        private void TXTURUN2_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar==13)
            {
                  string SQLStr = "";
                  SQLStr=" and C.STOCKREF="+GridItems.CurrentRow.Cells["LOGICALREF"].Value.ToString()+"";
                  GridUrun2.DataSource = baglanti.TabloAl("select from "+baglanti.INITIAL2+"..LG_"+baglanti.GFirma+"_ITEMS as I inner join A_CROSSITEM as C on C.STOCKREF=I.LOGICALREF where 1=1 "+SQLStr+"");
                  if (CKBGRUP.Checked == true) { SQLStr += "and (CASE WHEN LOWLEVELREF>0 then 'VAR' else 'YOK' END)='VAR' "; } else { SQLStr = "and (CASE WHEN LOWLEVELREF>0 then 'VAR' else 'YOK' END)='YOK'"; }
                  if (TXTURUN2.Text != "") { SQLStr += "  and REPLACE(I.CODE,' ','')+REPLACE(I.NAME,' ','') like '%" + TXTURUN2.Text.Replace(" ", "") + "%'"; }
                  GridUrun2.DataSource = baglanti.TabloAl("select I.CODE as Kodu,(CASE WHEN LOWLEVELREF>0 then 'VAR' else 'YOK' END) as Grup,I.SPECODE as OKOD,I.NAME as ACK,I.NAME3 as ACK2,I.DOMINANTREFS5,I.LOGICALREF,X.STOK,(case when X.STOKID is null then '' else 'Var' END) as  Hareket from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS as I left outer join " + baglanti.INITIAL2 + "..XX_STOK_" + baglanti.GFirma + " as X on I.LOGICALREF=X.STOKID and X.AMBAR=0 left outer join A_ITEMS as A on I.LOGICALREF=A.STOCKREF where I.LOGICALREF>0 " + SQLStr + "");
         
            }
        }

        private void GridUrun2_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            //kontrol grup varmı ?
            string LOGICALREF = GridUrun2.CurrentRow.Cells["LOGICALREF"].Value.ToString();
            SqlDataReader oku2 = baglanti.DataReaderAl("select LOWLEVELREF from A_ITEMS where STOCKREF=" + LOGICALREF + " and LOWLEVELREF>0");
            if (oku2.Read())
            {
                MessageBox.Show("Seçtiğiniz Ürünün Grubu Vardır Grup Listelenecektir!!!");
                TXTGrupAd.Text = oku2[0].ToString();
                GridItems.DataSource = baglanti.TabloAl("select I.STGRPCODE,I.CODE,I.SPECODE,I.NAME,I.NAME3,I.DOMINANTREFS5,I.LOGICALREF,X.STOK,(case when X.STOKID is null then '' else 'Var' END) as  Hareket from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS as I left outer join " + baglanti.INITIAL2 + "..XX_STOK_" + baglanti.GFirma + " as X on I.LOGICALREF=X.STOKID and X.AMBAR=0 inner join A_ITEMS as AI on I.LOGICALREF=AI.STOCKREF where I.LOGICALREF>0 and AI.LOWLEVELREF=" +oku2[0].ToString()+ " ");
                return;
            }
            //
            DialogResult dialogResult = MessageBox.Show(GridUrun2.CurrentRow.Cells["Kodu"].Value.ToString() + "\n Seçili Tüm ürünlere Ek olarak Olarak Girilecektir!!!", "Uyarı!!!", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes) 
            {
              
                SqlDataReader oku = baglanti.DataReaderAl("select LOGICALREF from A_ITEMS where STOCKREF=" +LOGICALREF+ "");
                if (oku.Read())
                {
                    baglanti.VeriIslemler("update A_ITEMS set LOWLEVELREF=" +TXTGrupAd.Text+ ",EDITDATE='" + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss") + "' where STOCKREF=" +LOGICALREF+ "");
                }
                else
                {
                    baglanti.VeriIslemler("insert into A_ITEMS (LOWLEVELREF,STOCKREF,EDITDATE)values(" +TXTGrupAd.Text+ "," + LOGICALREF + ",'" + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss") + "')");
                }
                GridItems.DataSource = baglanti.TabloAl("select I.STGRPCODE,I.CODE,I.SPECODE,I.NAME,I.NAME3,I.DOMINANTREFS5,I.LOGICALREF,X.STOK,(case when X.STOKID is null then '' else 'Var' END) as  Hareket from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS as I left outer join " + baglanti.INITIAL2 + "..XX_STOK_" + baglanti.GFirma + " as X on I.LOGICALREF=X.STOKID and X.AMBAR=0 inner join A_ITEMS as AI on I.LOGICALREF=AI.STOCKREF where I.LOGICALREF>0 and AI.LOWLEVELREF="+TXTGrupAd.Text+" ");
            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            YeniGrupal();
        }
        string GITemName, GITemCode, GDOMRef;
        private void GridGezgin_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            GDOMRef = GridGezgin.CurrentRow.Cells[2].Value.ToString();
            TXTItem.Text = GITemName;
            if (GITemCode == "") { return; }
            this.Text = GITemCode + " İçin İşlem Yapılacaktır!!!";
         
            MessageBox.Show(GITemCode + " İçin İşlem Yapılacaktır!!!");
            AltCek(GDOMRef); 
          
            GridGezgin.Visible = false;
        }

        private void button7_Click(object sender, EventArgs e)
        {
            string LOGREF=GridItems.CurrentRow.Cells["LOGICALREF"].Value.ToString();
            if (LOGREF == "") { return; }
            baglanti.VeriIslemler("Update A_ITEMS set LOWLEVELREF=0 where STOCKREF="+LOGREF+"");
            GridItems.DataSource = baglanti.TabloAl("select I.STGRPCODE,I.CODE,I.SPECODE,I.NAME,I.NAME3,I.DOMINANTREFS5,I.LOGICALREF,X.STOK,(case when X.STOKID is null then '' else 'Var' END) as  Hareket from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS as I left outer join " + baglanti.INITIAL2 + "..XX_STOK_" + baglanti.GFirma + " as X on I.LOGICALREF=X.STOKID and X.AMBAR=0 inner join A_ITEMS as AI on I.LOGICALREF=AI.STOCKREF where I.LOGICALREF>0 and AI.LOWLEVELREF=" + TXTGrupAd.Text + " ");
        }

        private void button4_Click(object sender, EventArgs e)
        {
            string SQLStr = "";
            if (CKBGRUP.Checked == true) { SQLStr += "and (CASE WHEN LOWLEVELREF>0 then 'VAR' else 'YOK' END)='VAR' "; } else { SQLStr = "and (CASE WHEN LOWLEVELREF>0 then 'VAR' else 'YOK' END)='YOK'"; }
            if (TXTURUN2.Text != "") { SQLStr += "  and REPLACE(I.CODE,' ','')+REPLACE(I.NAME,' ','') like '%" + TXTURUN2.Text.Replace(" ", "") + "%'"; }
            GridUrun2.DataSource = baglanti.TabloAl("select I.CODE as Kodu,(CASE WHEN LOWLEVELREF>0 then 'VAR' else 'YOK' END) as Grup,I.SPECODE as OKOD,I.NAME as ACK,I.NAME3 as ACK2,I.DOMINANTREFS5,I.LOGICALREF,X.STOK,(case when X.STOKID is null then '' else 'Var' END) as  Hareket from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_ITEMS as I left outer join " + baglanti.INITIAL2 + "..XX_STOK_" + baglanti.GFirma + " as X on I.LOGICALREF=X.STOKID and X.AMBAR=0 left outer join A_ITEMS as A on I.LOGICALREF=A.STOCKREF where I.LOGICALREF>0 " + SQLStr + "");
         
        }

        private void button8_Click(object sender, EventArgs e)
        {
            if (openFileDialog1.FileName == "openFileDialog1") { return; }
            DialogResult dialogResult = MessageBox.Show("Silme İşlemini Onaylıyormusunuz?", "Uyarı!!!", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                List<string> selectedItem = new List<string>();
                List<string> selectedItem2 = new List<string>();
                for (int i = 0; i <= GridItems.Rows.Count - 1; i++)
                {

                    if (GridItems.Rows[i].Cells["CA"].Value == "1") //checkbox seçiliyse 
                    {
                        string id = GridItems.Rows[i].Cells["LOGICALREF"].Value.ToString();
                        selectedItem.Add(id); //seçiliyse listeye ekle
                    }
                }
              
                foreach (string s in selectedItem) //çoklu silme işlemi gerçekleşiyor
                {
                    SqlDataReader oku = baglanti.DataReaderAl("select LOGICALREF from A_ITEMS where STOCKREF=" + s + "");
                    if (oku.Read())
                    {
                        baglanti.VeriIslemler("update A_ITEMS set PICURL='',EDITDATE='" + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss") + "' where STOCKREF=" + s + "");
                    }
                    else
                    {
                        baglanti.VeriIslemler("insert into A_ITEMS (PICURL,STOCKREF,EDITDATE)values(''," + s + ",'" + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss") + "')");
                    }
                }

                MessageBox.Show("İşlem Tamamlandı!");
                Temizle();
            }
        }

        private void GridItems_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            string LOGREF=GridItems.CurrentRow.Cells["LOGICALREF"].Value.ToString();
            SqlDataReader oku = baglanti.DataReaderAl("select PICURL from A_ITEMS where STOCKREF="+LOGREF+"");
            if (oku.Read())
            {
                pictureBox1.ImageLocation  = "C:\\inetpub\\wwwroot\\mental\\urunpics\\" +oku[0].ToString();
            }
        }
    }
}
//DialogResult dialogResult = MessageBox.Show(GridUrun2.CurrentRow.Cells["Kodu"].Value.ToString() + "\n Seçili Tüm ürünlere Ek olarak Olarak Girilecektir!!!", "Uyarı!!!", MessageBoxButtons.YesNo);
// if (dialogResult == DialogResult.Yes)
// {
//     string LOGICALREF = GridUrun2.CurrentRow.Cells["LOGICALREF"].Value.ToString();
//     List<string> selectedItem = new List<string>();
//     for (int i = 0; i <= GridItems.Rows.Count - 1; i++)
//     {

//         if (GridItems.Rows[i].Cells["CA"].Value == "1") //checkbox seçiliyse 
//         {
//             string id = GridItems.Rows[i].Cells["LOGICALREF"].Value.ToString();
//             selectedItem.Add(id); //seçiliyse listeye ekle
//         }
//     }
//     foreach (string s in selectedItem) //çoklu silme işlemi gerçekleşiyor
//     {
//         SqlDataReader oku = baglanti.DataReaderAl("select LOGICALREF from A_ITEMS where STOCKREF=" + s + "");
//         if (oku.Read())
//         {
//             baglanti.VeriIslemler("update A_ITEMS set LOWLEVELREF=" + LOGICALREF + ",EDITDATE='" + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss") + "' where STOCKREF=" + s + "");
//         }
//         else
//         {
//             baglanti.VeriIslemler("insert into A_ITEMS (LOWLEVELREF,STOCKREF,EDITDATE)values(" + LOGICALREF + "," + s + ",'" + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss") + "')");
//         }
//     }
//     TXTURUN2.Text = "";
// }