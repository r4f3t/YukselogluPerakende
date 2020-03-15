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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        private void GridSelectClear() {
            GridCLine.ClearSelection();
            GRidGezgin.ClearSelection();
            GridICODE.ClearSelection();
        }
        private void CMPGNRecGetir() {
            string SQLAra = "";
            if (TXTCMPGN.Text != "") { SQLAra += " and RecTanim like '"+TXTCMPGN.Text+"%' "; }
            panel1.Visible = true;
            GRidGezgin.AccessibleName = "Kampanya";
            GRidGezgin.DataSource = baglanti.TabloAl("select RecTanim from A_CMPGNLineRec where LOGICALREF>0 "+SQLAra+" group by RecTanim");
        }
        private void VadecekCMB() {
            CMBVade.Items.Clear();
            CMBVade.Items.Add("YOK-0");
            SqlDataReader oku = baglanti.DataReaderAl("select NAME,LOGICALREF from A_Vade order by NAME");
            while (oku.Read())
            {
                CMBVade.Items.Add(oku[0].ToString()+"-"+oku[1].ToString());
            }
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
        private void Vadecek()
        {          
            GridVade.DataSource = baglanti.TabloAl("select VADESTR,INDORAN from A_VadeLine where FLAG=0 and VREF='"+CMBVade.Text.Split('-')[1]+"'");
     
        }
        private void MikCekCMB()
        {
            CMBMik.Items.Clear();
            CMBMik.Items.Add("YOK-0");
            SqlDataReader oku = baglanti.DataReaderAl("select NAME,LOGICALREF from A_Mik order by NAME");
            while (oku.Read())
            {

                CMBMik.Items.Add(oku[0].ToString() + "-" + oku[1].ToString());
            }
        }
        private void Mikcek()
        {
            GridMik.DataSource = baglanti.TabloAl("select MIKSTR,INDORAN from A_MikLine where FLAG=0 and MREF='" + CMBMik.Text.Split('-')[1] + "' order by TRIMSTR asc");
        }
        private void CGridGetir() {
            GridCaris.DataSource = baglanti.TabloAl("select CODE as Kodu,DEFINITION_ as Adı,LOGICALREF from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CLCARD where CODE+DEFINITION_ like '%" + TXTCKod.Text + "%'");
            PNLCListe.Location = new Point(5, 38);
            GridCaris.Columns[0].Width = GridCaris.Width / 2;
            GridCaris.Columns[1].Width = GridCaris.Width / 2;
            GridCaris.Columns[2].Visible = false;
            PNLCListe.Visible = true;
            
        }
        private void TXTCKod_DoubleClick(object sender, EventArgs e)
        {
            CGridGetir();
        }

        private void GridCaris_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            TXTCKod.Text = GridCaris.CurrentRow.Cells[0].Value.ToString();
            HFCLientRef.Text = GridCaris.CurrentRow.Cells[2].Value.ToString();
            baglanti.GCariId =Convert.ToInt64(GridCaris.CurrentRow.Cells[2].Value.ToString());
            PNLCListe.Visible = false;
            LBLCari.Text = GridCaris.CurrentRow.Cells[1].Value.ToString();
            this.Text += "-" + LBLCari.Text;
            //logoda cari adına kampanya başlığı oluştur










            SLineGetir();
        }

        private void CMBVade_SelectedIndexChanged(object sender, EventArgs e)
        {
            Vadecek();
        }

        private void CMBMik_SelectedIndexChanged(object sender, EventArgs e)
        {
            Mikcek();
        }
        private string SQLSTRYap() {
            string SQLStr = "",ARAStr="",BitSTR="";
            if (TXTNAME.Text != "") 
            {
                if (CMBA10.Text == "%") { ARAStr = " like "; BitSTR = "%"; }
                if (CMBA10.Text == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA10.Text == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA10.Text == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA10.Text == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA10.Text == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA10.Text == ">=") { ARAStr = ">="; BitSTR = ""; }
                SQLStr +=" and NAME "+ARAStr+" ''"+TXTNAME.Text+""+BitSTR+"''"; 
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
                SQLStr += " and CODE "+ARAStr+" ''" + TXTCODE.Text+""+BitSTR+"''";
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
                SQLStr += " and PRODUCERCODE "+ARAStr+" ''" + TXTPRODUCERCODE.Text + ""+BitSTR+"''"; 
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
                SQLStr += " and STGRPCODE "+ARAStr+" ''" + TXTSTGRPCODE.Text + ""+BitSTR+"''";
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
                SQLStr += " and SPECODE3 "+ARAStr+" ''" + TXTSPECODE3.Text + ""+BitSTR+"''"; 
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
                SQLStr += " and SPECODE4  "+ARAStr+" ''" + TXTSPECODE4.Text + ""+BitSTR+"''"; 
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
                SQLStr += " and SPECODE5 "+ARAStr+" ''" + TXTSPECODE5.Text + ""+BitSTR+"''"; 
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
            //if (CMBYetki.Text != "")
            //{
            //    if (CMBA19.Text == "%") { ARAStr = " like "; BitSTR = "%"; }
            //    if (CMBA19.Text == "=") { ARAStr = "="; BitSTR = ""; }
            //    if (CMBA19.Text == "<>") { ARAStr = "="; BitSTR = ""; }
            //    if (CMBA19.Text == "<") { ARAStr = " < "; BitSTR = ""; }
            //    if (CMBA19.Text == ">") { ARAStr = ">"; BitSTR = ""; }
            //    if (CMBA19.Text == "<=") { ARAStr = "<="; BitSTR = ""; }
            //    if (CMBA19.Text == ">=") { ARAStr = ">="; BitSTR = ""; }
            //    SQLStr += " and CYPHCODE " + ARAStr + " ''" + CMBYetki.Text + "" + BitSTR + "''";
            //}

            return SQLStr;
        }


        private string LOGOCondYap()
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
              //  SQLStr += " and NAME " + ARAStr + " ''" + TXTNAME.Text + "" + BitSTR + "''";
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
             //   SQLStr += " and CODE " + ARAStr + " ''" + TXTCODE.Text + "" + BitSTR + "''";
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
            //    SQLStr += " and PRODUCERCODE " + ARAStr + " ''" + TXTPRODUCERCODE.Text + "" + BitSTR + "''";
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
             //   SQLStr += " and STGRPCODE " + ARAStr + " ''" + TXTSTGRPCODE.Text + "" + BitSTR + "''";
            }
            if (TXTSPECODE2.Text != "")
            {
                if (CMBA14.Text == "%") { ARAStr = " like "; BitSTR = ""; }
                if (CMBA14.Text == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA14.Text == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA14.Text == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA14.Text == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA14.Text == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA14.Text == ">=") { ARAStr = ">="; BitSTR = ""; }
                if (SQLStr.Length != 0) { SQLStr += " & "; }
                SQLStr += "(P118=\""+ TXTSPECODE2.Text +BitSTR+"\") ";
            }
            if (TXTSPECODE3.Text != "")
            {
                if (CMBA15.Text == "%") { ARAStr = " like "; BitSTR = ""; }
                if (CMBA15.Text == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA15.Text == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA15.Text == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA15.Text == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA15.Text == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA15.Text == ">=") { ARAStr = ">="; BitSTR = ""; }
                if (SQLStr.Length != 0) { SQLStr += " & "; }
                SQLStr += "(P119=\"" + TXTSPECODE3.Text + BitSTR + "\") ";
            }
            if (TXTSPECODE4.Text != "")
            {
                if (CMBA16.Text == "%") { ARAStr = " like "; BitSTR = ""; }
                if (CMBA16.Text == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA16.Text == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA16.Text == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA16.Text == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA16.Text == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA16.Text == ">=") { ARAStr = ">="; BitSTR = ""; }
                if (SQLStr.Length != 0) { SQLStr += " & "; }
                SQLStr += "(P120=\"" + TXTSPECODE4.Text + BitSTR + "\") ";
            }
            if (TXTSPECODE5.Text != "")
            {
                if (CMBA17.Text == "%") { ARAStr = " like "; BitSTR = ""; }
                if (CMBA17.Text == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA17.Text == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA17.Text == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA17.Text == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA17.Text == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA17.Text == ">=") { ARAStr = ">="; BitSTR = ""; }
                if (SQLStr.Length != 0) { SQLStr += " & "; }
                SQLStr += "(P121=\"" + TXTSPECODE5.Text + BitSTR + "\") ";
            }
            if (TXTSPECODE.Text != "")
            {
                if (CMBA18.Text == "%") { ARAStr = " like "; BitSTR = ""; }
                if (CMBA18.Text == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA18.Text == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA18.Text == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA18.Text == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA18.Text == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA18.Text == ">=") { ARAStr = ">="; BitSTR = ""; }
                if (SQLStr.Length != 0) { SQLStr += " & "; }
                SQLStr += "(P114=\"" + TXTSPECODE.Text + BitSTR + "\") ";
            }

            if (SQLStr == "") { SQLStr = "1"; }
            return SQLStr;
        }
        private void SLineGetir() {
            if (TXTCKod.Text == "") { return; }
            GridCLine.DataSource = baglanti.TabloAl("select INDORAN,VADEAD,MIKAD,A11,A14,A15,A16,A17,A18,A10,A12,A13,A19,LOGICALREF,CMBA10,CMBA11,CMBA12,CMBA13,CMBA14,CMBA15,CMBA16,CMBA17,CMBA18,CMBA19,YINDORAN from A_CMPGNLine where CLIENTREF=" + baglanti.GCariId + "");
            GridCLine.Columns["LOGICALREF"].Visible=false;
            GridSelectClear();
        }
        private void GezVeriGetir(string LNesne,string LAlan,Point GridLoc,string Caption) {
            //if (LNesne == "") { return; }
            panel1.Visible = true;
            GRidGezgin.DataSource = baglanti.TabloAl("select * from (select "+LAlan+" from "+baglanti.INITIAL2+"..LG_"+baglanti.GFirma+"_ITEMS where "+LAlan+" like '%"+LNesne+"%' and ACTIVE=0 and CARDTYPE<>22 group by "+LAlan+") as K order by K."+LAlan+" asc ");
            GRidGezgin.Columns[0].Width = GRidGezgin.Width-10;
            GRidGezgin.Columns[0].HeaderText=Caption;
          //  panel1.Location = GridLoc;
            GRidGezgin.AccessibleName = LAlan;
        }
        string IISNEW;
        private void Form1_Load(object sender, EventArgs e)
        {
            IISNEW = FRMAna.ISNEW;
            if (FRMCari.GFCad != null) { IISNEW = "0"; TXTCKod.Enabled = false; }
            HFCLientRef.Text = baglanti.GCariId.ToString();
            TXTCKod.Text = FRMCari.GFCKod;
            LBLCari.Text = FRMCari.GFCad;
            this.Text +="-"+ FRMCari.GFCad;
            SLineGetir();
            VadecekCMB(); MikCekCMB();
            YetkicekCMB();
        }
        private void LOGOCampYap()
        {

            SqlDataReader oku, oku2, oku3,oku4;
            string CLIENTREF = HFCLientRef.Text;
            //logo kampanyalarını sil campcardrefe göre sil sonra döngü ile bidaha ekle

            //logoya ekleme

            DialogResult dialogResult2 = MessageBox.Show("LOGODA \n Cariler Üzerinde Güncelleme Yapılacaktır ?", "", MessageBoxButtons.YesNo);
            if (dialogResult2 == DialogResult.No) { return; }
            //cari başlığıını logoya gir
            string LogoCAMPCARDREF = "0";
        rafet:
            oku = baglanti.DataReaderAl("select LOGICALREF from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CAMPAIGN where CLIENTCODE='" + TXTCKod.Text + "' ");
            if (oku.Read())
            {
                LogoCAMPCARDREF = oku[0].ToString();
                baglanti.VeriIslemler("delete from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CMPGNLINE where CAMPCARDREF=" + LogoCAMPCARDREF + "");
                baglanti.VeriIslemler("delete from  A_CROSSCampaign where LOGOCARDREF=" + LogoCAMPCARDREF + "");
                
            }
            else
            {


                baglanti.VeriIslemler("INSERT INTO " + baglanti.INITIAL2 + "..[LG_" + baglanti.GFirma + "_CAMPAIGN]([ACTIVE]" +
               ",[CARDTYPE]" +
               ",[CODE]" +
               ",[NAME]" +
               ",[SPECODE]" +
               ",[CYPHCODE]" +
               ",[BEGDATE]" +
               ",[ENDDATE]" +
               ",[PRIORITYGRP]" +
               ",[PRIORITY]" +
               ",[DONTFIXLINES]" +
               ",[CLIENTCODE]" +
               ",[CLSPECODE]" +
               ",[TRADINGGRP]" +
               ",[PAYPLANCODE]" +
               ",[PPGROUPCODE]" +
               ",[TOWNCODE]" +
               ",[DISTRICTCODE]" +
               ",[CITYCODE]" +
               ",[COUNTRYCODE]" +
               ",[VARIABLEDEFS1]" +
               ",[VARIABLEDEFS2]" +
               ",[VARIABLEDEFS3]" +
               ",[VARIABLEDEFS4]" +
               ",[VARIABLEDEFS5]" +
               ",[CAPIBLOCK_CREATEDBY]" +
               ",[CAPIBLOCK_CREADEDDATE]" +
               ",[CAPIBLOCK_CREATEDHOUR]" +
               ",[CAPIBLOCK_CREATEDMIN]" +
               ",[CAPIBLOCK_CREATEDSEC]" +
               ",[CAPIBLOCK_MODIFIEDBY]" +
               ",[CAPIBLOCK_MODIFIEDDATE]" +
               ",[CAPIBLOCK_MODIFIEDHOUR]" +
               ",[CAPIBLOCK_MODIFIEDMIN]" +
               ",[CAPIBLOCK_MODIFIEDSEC]" +
               ",[SITEID]" +
               ",[RECSTATUS]" +
               ",[ORGLOGICREF]" +
               ",[WFSTATUS]" +
               ",[ORGLOGOID]" +
               ",[DOCDOCODE]" +
               ",[DOCSPECODE]" +
               ",[DOCCYPHCODE]" +
               ",[CLSPECODE2]" +
               ",[CLSPECODE3]" +
               ",[CLSPECODE4]" +
               ",[CLSPECODE5]" +
               ",[CLCYPHCODE]" +
               ",[VARIABLEDEFS21]" +
               ",[VARIABLEDEFS22]" +
               ",[VARIABLEDEFS23]" +
               ",[VARIABLEDEFS24]" +
               ",[VARIABLEDEFS25]" +
               ",[CLAPPLYCOUNT])" +
         "VALUES" +
               "(0" +
               ",2" +
               ",'" + TXTCKod.Text + "'" +
               ",'" + LBLCari.Text.Substring(0, 40) + " Kampanya'" +
               ",''" +
               ",''" +
               ",'" + DateTime.Now.ToString("MM/dd/yyyy hh:mm") + "'" +
               ",'2020-12-30'" +
               ",''" +
               ",0" +
               ",0" +
               ",'" + TXTCKod.Text + "'" +
               ",'*'" +
                ",'*'" +
                ",'*'" +
                ",'*'" +
                ",'*'" +
                ",'*'" +
                ",'*'" +
               ",''" +
               ",''" +
               ",''" +
               ",''" +
               ",''" +
               ",''" +
               ",1" +
               ",'" + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss") + "'" +
               ",'" + DateTime.Now.Hour + "'" +
               ",'" + DateTime.Now.Minute + "'" +
               ",'" + DateTime.Now.Second + "'" +
               ",1" +
               ",'" + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss") + "'" +
               ",'" + DateTime.Now.Hour + "'" +
               ",'" + DateTime.Now.Minute + "'" +
               ",'" + DateTime.Now.Second + "'" +
               ",0" +
               ",2" +
               ",0" +
               ",0" +
               ",''" +
               ",'*'" +
               ",'*'" +
               ",'*'" +
               ",'*'" +
               ",'*'" +
               ",'*'" +
               ",'*'" +
               ",'*'" +
              ",''" +
              ",''" +
               ",''" +
               ",''" +
              ",''" +
               ",99)");


                goto rafet;
            }

            //kampanya başlığı referansını al
            string SQlSTR = "";
            oku3 = baglanti.DataReaderAl("select * from A_CMPGNLine where CLIENTREF=" + CLIENTREF + " ");
            while (oku3.Read())
            {
                HFLineRef.Text = oku3["LOGICALREF"].ToString();
                TXTNAME.Text = oku3["A10"].ToString();
                TXTCODE.Text = oku3["A11"].ToString();
                TXTPRODUCERCODE.Text = oku3["A12"].ToString();
                TXTSTGRPCODE.Text = oku3["A13"].ToString();
                TXTSPECODE2.Text = oku3["A14"].ToString();
                TXTSPECODE3.Text = oku3["A15"].ToString();
                TXTSPECODE4.Text = oku3["A16"].ToString();
                TXTSPECODE5.Text = oku3["A17"].ToString();
                TXTSPECODE.Text = oku3["A18"].ToString();
                CMBYetki.Text = oku3["A19"].ToString();
                CMBVade.Text = oku3["VADEAD"].ToString();
                CMBMik.Text = oku3["MIKAD"].ToString();
                TXTCIndOr.Text = oku3["INDORAN"].ToString();
                CMBA10.Text = oku3["CMBA10"].ToString();
                CMBA11.Text = oku3["CMBA11"].ToString();
                CMBA12.Text = oku3["CMBA12"].ToString();
                CMBA13.Text = oku3["CMBA13"].ToString();
                CMBA14.Text = oku3["CMBA14"].ToString();
                CMBA15.Text = oku3["CMBA15"].ToString();
                CMBA16.Text = oku3["CMBA16"].ToString();
                CMBA17.Text = oku3["CMBA17"].ToString();
                CMBA18.Text = oku3["CMBA18"].ToString();
                CMBA19.Text = oku3["CMBA19"].ToString();
                //  TXTYINDor.Text = oku3["YINDORAN"].ToString();
                SQlSTR = SQLSTRYap();




                string SistemRef = oku3["LOGICALREF"].ToString(); ;

                //referans al




                //genel indirimleri logoya girmek için stringler
                string LOGOLineCONDition = LOGOCondYap();
                string CONDITEMCODE = TXTCODE.Text + "*";
                double GenelIndirimOranı = Convert.ToDouble(TXTCIndOr.Text) / 100;
                string GENELFormula = "P7*" + GenelIndirimOranı.ToString().Replace(",", ".");
                string GENELLineExps = "Genel Satış İndirimi";
                oku2 = baglanti.DataReaderAl("select LOGICALREF from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CMPGNLINE where CAMPCARDREF=" + LogoCAMPCARDREF + " and CONDITION='" + LOGOLineCONDition + "' and CONDITEMCODE='" + CONDITEMCODE + "'");
                if (oku2.Read())
                {
                    baglanti.VeriIslemler("UPDATE " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CMPGNLINE set FORMULA='" + GENELFormula + "' where LOGICALREF=" + oku2[0].ToString() + "");
                }
                else
                {
                    //logoya ekle
                    baglanti.VeriIslemler("INSERT INTO " + baglanti.INITIAL2 + "..[LG_" + baglanti.GFirma + "_CMPGNLINE]([CAMPCARDREF],[LINETYPE],[APPLYTYPE],[CONDITEMCODE],[CONDITION],[FORMULA],[ITEMREF],[USREF],[UOMREF],[PROMISCLASS],[LINEEXP],[ACCOUNTREF],[CENTERREF],[VARIANTREF],[PAYDEFREF])VALUES" +
                "(" + LogoCAMPCARDREF + ",1,0,'" + CONDITEMCODE + "','" + LOGOLineCONDition + "','" + GENELFormula + "',0,0,0,0,'" + GENELLineExps + "',0,0,0,0)");
                    oku = baglanti.DataReaderAl("select LOGICALREF from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CMPGNLINE where CAMPCARDREF=" + LogoCAMPCARDREF + " and CONDITION='" + LOGOLineCONDition + "' and CONDITEMCODE='" + CONDITEMCODE + "'");
                    if (oku.Read())
                    {
                        string SLogicalref = oku[0].ToString();
                        baglanti.VeriIslemler("insert into A_CROSSCampaign (LOGOCARDREF,CMPGNREF,LOGOLineRef,ADDDATE) values ("+LogoCAMPCARDREF+"," + SistemRef + "," + SLogicalref + ",'" + DateTime.Now.ToString("MM/dd/yyyy") + "')");
                    }
                }






                if (CMBVade.Text != "")
                {
                    //  vade indirimlerini logoya gir
                    oku = baglanti.DataReaderAl("select VADESTR,VADEAD,INDORAN from A_VadeLine where VREF=" + CMBVade.Text.Split('-')[1] + "");
                    while (oku.Read())
                    {
                        string VADESTR = oku[0].ToString();
                        string VADEAD = oku[1].ToString();
                        string LLineExp = VADESTR + " Vade İndirimi";
                        double VINDORAN = Convert.ToDouble(oku[2].ToString()) / 100;
                        //vade condition yap
                        string VADECOND = "(P104=\"" + VADESTR + "\")";
                        string VadeFormula = "P7*" + VINDORAN.ToString().Replace(",", ".");
                        //vade condition yap bitir
                        //şart kontrolü yap
                        oku2 = baglanti.DataReaderAl("select LOGICALREF from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CMPGNLINE where CAMPCARDREF=" + LogoCAMPCARDREF + " and CONDITION='" + VADECOND + "' and CONDITEMCODE='" + CONDITEMCODE + "'");
                        if (oku2.Read())
                        {
                            baglanti.VeriIslemler("UPDATE " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CMPGNLINE set FORMULA='" + VadeFormula + "' where LOGICALREF=" + oku2[0].ToString() + "");
                        }
                        else
                        {
                            //logoya ekle
                            baglanti.VeriIslemler("INSERT INTO " + baglanti.INITIAL2 + "..[LG_" + baglanti.GFirma + "_CMPGNLINE]([CAMPCARDREF],[LINETYPE],[APPLYTYPE],[CONDITEMCODE],[CONDITION],[FORMULA],[ITEMREF],[USREF],[UOMREF],[PROMISCLASS],[LINEEXP],[ACCOUNTREF],[CENTERREF],[VARIANTREF],[PAYDEFREF])VALUES" +
                            "(" + LogoCAMPCARDREF + ",1,0,'" + CONDITEMCODE + "','" + VADECOND + "','" + VadeFormula + "',0,0,0,0,'" + LLineExp + "',0,0,0,0)");
                            oku4 = baglanti.DataReaderAl("select LOGICALREF from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CMPGNLINE where CAMPCARDREF=" + LogoCAMPCARDREF + " and CONDITION='" + VADECOND + "' and CONDITEMCODE='" + CONDITEMCODE + "'");
                            if (oku4.Read())
                            {
                                string SLogicalref = oku4[0].ToString();
                                baglanti.VeriIslemler("insert into A_CROSSCampaign (LOGOCARDREF,CMPGNREF,LOGOLineRef,ADDDATE) values (" + LogoCAMPCARDREF + "," + SistemRef + "," + SLogicalref + ",'" + DateTime.Now.ToString("MM/dd/yyyy") + "')");
                            }

                        }
                    }

                    if (CMBMik.Text != "")
                    {
                        //  miktar indirimlerini logoya gir
                        oku = baglanti.DataReaderAl("select MIKSTR,MIKAD,INDORAN from A_MikLine where MREF=" + CMBMik.Text.Split('-')[1] + "");
                        while (oku.Read())
                        {
                            string MIKSTR = oku[0].ToString();
                            string MIKAD = oku[1].ToString();
                            string LLineExp = MIKSTR + " Miktar İndirimi";
                            double MINDORAN = Convert.ToDouble(oku[2].ToString()) / 100;
                            //miktar condition yap
                            string MIKCOND = "(P4>=" + MIKSTR.Split('-')[0] + ") & (P4<=" + MIKSTR.Split('-')[1] + ")  ";
                            string MIKFormula = "P7*" + MINDORAN.ToString().Replace(",", ".");
                            //miktar condition yap bitir
                            oku2 = baglanti.DataReaderAl("select LOGICALREF from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CMPGNLINE where CAMPCARDREF=" + LogoCAMPCARDREF + " and CONDITION='" + MIKCOND + "' and CONDITEMCODE='" + CONDITEMCODE + "'");
                            if (oku2.Read())
                            {
                                baglanti.VeriIslemler("UPDATE " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CMPGNLINE set FORMULA='" + MIKFormula + "' where LOGICALREF=" + oku2[0].ToString() + "");
                            }
                            else
                            {
                                //logoya ekle
                                baglanti.VeriIslemler("INSERT INTO " + baglanti.INITIAL2 + "..[LG_" + baglanti.GFirma + "_CMPGNLINE]([CAMPCARDREF],[LINETYPE],[APPLYTYPE],[CONDITEMCODE],[CONDITION],[FORMULA],[ITEMREF],[USREF],[UOMREF],[PROMISCLASS],[LINEEXP],[ACCOUNTREF],[CENTERREF],[VARIANTREF],[PAYDEFREF])VALUES" +
                            "(" + LogoCAMPCARDREF + ",1,0,'" + CONDITEMCODE + "','" + MIKCOND + "','" + MIKFormula + "',0,0,0,0,'" + LLineExp + "',0,0,0,0)");
                                oku4 = baglanti.DataReaderAl("select LOGICALREF from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CMPGNLINE where CAMPCARDREF=" + LogoCAMPCARDREF + " and CONDITION='" + MIKCOND + "' and CONDITEMCODE='" + CONDITEMCODE + "'");
                                if (oku4.Read())
                                {
                                    string SLogicalref = oku4[0].ToString();
                                    baglanti.VeriIslemler("insert into A_CROSSCampaign (LOGOCARDREF,CMPGNREF,LOGOLineRef,ADDDATE) values (" + LogoCAMPCARDREF + "," + SistemRef + "," + SLogicalref + ",'" + DateTime.Now.ToString("MM/dd/yyyy") + "')");
                                }

                            }

                        }
                    }
                    if (CMBYetki.Text != "")
                    {
                        //  yetki kodu indirimlerini logoya gir
                        oku = baglanti.DataReaderAl("select VADESTR,VADEAD,INDORAN from A_CYPHCODELine where VREF=" + CMBYetki.Text.Split('-')[1] + "");
                        while (oku.Read())
                        {
                            string YetkiSTR = oku[0].ToString();
                            string YetkiAD = oku[1].ToString();
                            string LLineExp = YetkiSTR + " Yetki Kodu İndirimi";
                            double YINDORAN = Convert.ToDouble(oku[2].ToString()) / 100;
                            //yetki condition yap
                            string YetkiCOND = "(P115=\"" + YetkiSTR + "\")";
                            string YetkiFormula = "P7*" + YINDORAN.ToString().Replace(",", ".");
                            //yetki condition yap bitir
                            oku2 = baglanti.DataReaderAl("select LOGICALREF from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CMPGNLINE where CAMPCARDREF=" + LogoCAMPCARDREF + " and CONDITION='" + YetkiCOND + "' and CONDITEMCODE='" + CONDITEMCODE + "'");
                            if (oku2.Read())
                            {
                                baglanti.VeriIslemler("UPDATE " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CMPGNLINE set  FORMULA='" + YetkiFormula + "' where LOGICALREF=" + oku2[0].ToString() + "");
                            }
                            else
                            {
                                //logoya ekle
                                baglanti.VeriIslemler("INSERT INTO " + baglanti.INITIAL2 + "..[LG_" + baglanti.GFirma + "_CMPGNLINE]([CAMPCARDREF],[LINETYPE],[APPLYTYPE],[CONDITEMCODE],[CONDITION],[FORMULA],[ITEMREF],[USREF],[UOMREF],[PROMISCLASS],[LINEEXP],[ACCOUNTREF],[CENTERREF],[VARIANTREF],[PAYDEFREF])VALUES" +
                            "(" + LogoCAMPCARDREF + ",1,0,'" + CONDITEMCODE + "','" + YetkiCOND + "','" + YetkiFormula + "',0,0,0,0,'" + LLineExp + "',0,0,0,0)");
                                oku4 = baglanti.DataReaderAl("select LOGICALREF from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CMPGNLINE where CAMPCARDREF=" + LogoCAMPCARDREF + " and CONDITION='" + YetkiCOND + "' and CONDITEMCODE='" + CONDITEMCODE + "'");
                                if (oku4.Read())
                                {
                                    string SLogicalref = oku4[0].ToString();
                                    baglanti.VeriIslemler("insert into A_CROSSCampaign (LOGOCARDREF,CMPGNREF,LOGOLineRef,ADDDATE) values ("+LogoCAMPCARDREF+"," + SistemRef + "," + SLogicalref + ",'" + DateTime.Now.ToString("MM/dd/yyyy") + "')");
                                }

                            }


                        }
                    }
                }



            }
        }
        private void BTNCMPGNADD_Click(object sender, EventArgs e)
        {
           
            if (TXTCKod.Text == "" ||HFCLientRef.Text=="") { MessageBox.Show("Cari Seçmeden İşlem Yapamazsınız!!!"); TXTCKod.BackColor = Color.Red;  return; }
            if (TXTCIndOr.Text == "") { MessageBox.Show("Ürün Başlangıç İndirim Oranı Girmeden İşlem Yapamazsınız!!!"); TXTCIndOr.BackColor = Color.Red; return; }
            
            string[] CODES = new string[30000];
            string[] CLIENTREF = new string[3000];
         
            string SQlSTR = SQLSTRYap();
            int i = 0;
            SqlDataReader oku = baglanti.DataReaderAl("select LOGICALREF,CODE from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CLCARD where CODE like '" + TXTCKod.Text + "'");
            while (oku.Read())
            {
                CODES[i] = oku[1].ToString();
                CLIENTREF[i] = oku[0].ToString();
                string Tarih = DateTime.Now.ToString("MM/dd/yyyy");
                string SistemRef = "";
                DialogResult dialogResult = MessageBox.Show(CODES[i]+" Üzerinde İşlem Yapılacaktır ?", "", MessageBoxButtons.YesNo);
                if (dialogResult == DialogResult.Yes)
                {
                    string YetkiRef = "0", YetkiAd = "";
                    if (CMBYetki.Text != "")
                    {
                        YetkiAd = CMBYetki.Text.Split('-')[0];
                        YetkiRef = CMBYetki.Text.Split('-')[1];
                    }
                        SqlDataReader oku2 = baglanti.DataReaderAl("select A11 from A_CMPGNLine where CLIENTREF="+CLIENTREF[i]+" and (SQLSTR='"+SQlSTR+"')");
                        if (oku2.Read()) { MessageBox.Show("Bu Cari için " + oku2[0].ToString() + " Kodlu Üründe Kampanya Tanımlıdır! \n Olan Kampanyayı Silin Yada Üzerinde Güncelleme Yapın!!!"); return; }
                        baglanti.VeriIslemler("INSERT INTO [A_CMPGNLine](YetkiAD,YetkiRef,YINDORAN,QLREF,QREF,[CLIENTREF],[SQLSTR],[INDORAN],[ADDDATE],[EDITDATE],VADEAD,MIKAD,VADEREF,MIKREF,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,CMBA10,CMBA11,CMBA12,CMBA13,CMBA14,CMBA15,CMBA16,CMBA17,CMBA18,CMBA19)VALUES" +
                        "('" + YetkiAd + "'," + YetkiRef + "," + TXTYINDor.Text.Replace(",", ".") + "," + HFQLREF.Text + "," + HFQREF.Text + "," + CLIENTREF[i] + ",'" + SQlSTR + "'," + TXTCIndOr.Text.Replace(",", ".") + ",'" + Tarih + "','" + Tarih + "','" + CMBVade.Text + "','" + CMBMik.Text + "'," + CMBVade.Text.Split('-')[1] + "," + CMBMik.Text.Split('-')[1] + ",'" + TXTNAME.Text + "','" + TXTCODE.Text + "','" + TXTPRODUCERCODE.Text + "','" + TXTSTGRPCODE.Text + "','" + TXTSPECODE2.Text + "','" + TXTSPECODE3.Text + "','" + TXTSPECODE4.Text + "','" + TXTSPECODE5.Text + "','" + TXTSPECODE.Text + "','" + CMBYetki.Text + "','" + CMBA10.Text + "','" + CMBA11.Text + "','" + CMBA12.Text + "','" + CMBA13.Text + "','" + CMBA14.Text + "','" + CMBA15.Text + "','" + CMBA16.Text + "','" + CMBA17.Text + "','" + CMBA18.Text + "','" + CMBA19.Text + "')");
                        SLineGetir();

                        LOGOCampYap();
                       


                }
                else if (dialogResult == DialogResult.No)
                {
                    CODES[i] += "-Kabul Edilmedi.";
                  
                }
              


            
                i++;
            }
            string mesaj = "";
            while (i > 0)
            {
                i--;
                mesaj += CODES[i] + "\n";

            }
            GRidIOCek();
            GridCLine.ClearSelection();
            MessageBox.Show(mesaj+"Üzerinde Değişiklik Yapıldı");
            
        }

        private void GridCaris_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar==27)
            {
                PNLCListe.Visible = false;
            }
        }

        private void TXTCKod_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar==13)
            {
                CGridGetir();
            }
            if (e.KeyChar == 27)
            {
                PNLCListe.Visible = false;
            }
        }

        private void GridCLine_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            IISNEW = "0";
            HFLineRef.Text = GridCLine.CurrentRow.Cells["LOGICALREF"].Value.ToString();
            TXTNAME.Text = GridCLine.CurrentRow.Cells["A10"].Value.ToString();
            TXTCODE.Text = GridCLine.CurrentRow.Cells["A11"].Value.ToString();
            TXTPRODUCERCODE.Text = GridCLine.CurrentRow.Cells["A12"].Value.ToString();
            TXTSTGRPCODE.Text = GridCLine.CurrentRow.Cells["A13"].Value.ToString();
            TXTSPECODE2.Text = GridCLine.CurrentRow.Cells["A14"].Value.ToString();
            TXTSPECODE3.Text = GridCLine.CurrentRow.Cells["A15"].Value.ToString();
            TXTSPECODE4.Text = GridCLine.CurrentRow.Cells["A16"].Value.ToString();
            TXTSPECODE5.Text = GridCLine.CurrentRow.Cells["A17"].Value.ToString();
            TXTSPECODE.Text = GridCLine.CurrentRow.Cells["A18"].Value.ToString();
            CMBYetki.Text = GridCLine.CurrentRow.Cells["A19"].Value.ToString();
            CMBVade.Text = GridCLine.CurrentRow.Cells["VADEAD"].Value.ToString();
            CMBMik.Text = GridCLine.CurrentRow.Cells["MIKAD"].Value.ToString();
            TXTCIndOr.Text = GridCLine.CurrentRow.Cells["INDORAN3"].Value.ToString();
            CMBA10.Text = GridCLine.CurrentRow.Cells["CMBA10"].Value.ToString();
            CMBA11.Text = GridCLine.CurrentRow.Cells["CMBA11"].Value.ToString();
            CMBA12.Text = GridCLine.CurrentRow.Cells["CMBA12"].Value.ToString();
            CMBA13.Text = GridCLine.CurrentRow.Cells["CMBA13"].Value.ToString();
            CMBA14.Text = GridCLine.CurrentRow.Cells["CMBA14"].Value.ToString();
            CMBA15.Text = GridCLine.CurrentRow.Cells["CMBA15"].Value.ToString();
            CMBA16.Text = GridCLine.CurrentRow.Cells["CMBA16"].Value.ToString();
            CMBA17.Text = GridCLine.CurrentRow.Cells["CMBA17"].Value.ToString();
            CMBA18.Text = GridCLine.CurrentRow.Cells["CMBA18"].Value.ToString();
            CMBA19.Text = GridCLine.CurrentRow.Cells["CMBA19"].Value.ToString();
            TXTYINDor.Text = GridCLine.CurrentRow.Cells["YINDORAN"].Value.ToString();
            BTNSil.Visible = true;
        }

        private void BTNSil_Click(object sender, EventArgs e)
        {
            if (GridCLine.SelectedCells.Count == 0) { return; }
             DialogResult dialogResult = MessageBox.Show("KAyıt Silinecektir?", "Uyarı!!!", MessageBoxButtons.YesNo);
             if (dialogResult == DialogResult.Yes)
             {
                 string CAMPCARDREF = "0";
                 baglanti.VeriIslemler("delete from A_CMPGNLine where LOGICALREF=" + HFLineRef.Text + " ");
                 //SqlDataReader oku = baglanti.DataReaderAl("select LOGICALREF,LINEEXP,CAMPCARDREF from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CMPGNLINE where  PROMISCLASS=" + HFLineRef.Text + " ");
                 //while(oku.Read())
                 //{
                 //    CAMPCARDREF = oku[2].ToString();
                 //    string LLINEXP = oku[1].ToString();
                 //    string CMPGNLINEREF = oku[0].ToString();
                 //    if (LLINEXP == "Genel Satış İndirimi")
                 //    {
                 //        baglanti.VeriIslemler("delete from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CMPGNLINE where LOGICALREF=" + CMPGNLINEREF + "");
                 //    }
                 //}

                 //oku = baglanti.DataReaderAl("select LOGICALREF,LINEEXP,CAMPCARDREF from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CMPGNLINE where  CAMPCARDREF=" + CAMPCARDREF + " and LINEEXP='Genel Satış İndirimi' ");
                 //if (oku.Read())
                 //{
                 //}
                 //else
                 //{
                 //    baglanti.VeriIslemler("delete from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CMPGNLINE where CAMPCARDREF=" + CAMPCARDREF + "");
                 //}
                 LOGOCampYap();


                 //
                 
                 //genel indirim varmı diye bak varsa devam yoksa miktar ve vadeyi sil
                

                 MessageBox.Show("Kayıt Silindi!!!");
                 SLineGetir();
                 GRidIOCek();

                 //kampanya logo şartını al






             }
             else
             {

             }

        }
        private void GRidIOCek() {
            try
            {
                DataTable tablo=new DataTable();
                tablo.Clear();
                tablo = baglanti.TabloAl("select A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,CMBA10,CMBA11,CMBA12,CMBA13,CMBA14,CMBA15,CMBA16,CMBA17,CMBA18,CMBA19,I.LOGICALREF,IREF,(case when C.QLREF is not null then 'X' else '' end) as VarMı from A_INDSARTLINE as I inner join A_INDSART as F on I.IREF=F.LOGICALREF left outer join (select QLREF from A_CMPGNLine where CLIENTREF="+HFCLientRef.Text+") as C on I.LOGICALREF=C.QLREF where F.NAME='" + TXTSPECODE.Text + "' group by A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,CMBA10,CMBA11,CMBA12,CMBA13,CMBA14,CMBA15,CMBA16,CMBA17,CMBA18,CMBA19,I.LOGICALREF,IREF,C.QLREF");

                GridICODE.DataSource = tablo;

                for (int i = 0; i < 22; i++)
                {
                    GridICODE.Columns[i].Visible = false;
                }
                GridICODE.Columns[1].Visible = true;
                GridICODE.Columns[7].Visible = true;
                GridICODE.Columns[6].Visible = true;
                GridICODE.Columns[5].Visible = true;
                GridICODE.Columns[4].Visible = true;

                GridICODE.Columns[1].Width = 50;
                GridICODE.Columns[7].Width = 50;
                GridICODE.Columns[6].Width = 50;
                GridICODE.Columns[5].Width = 50;
                GridICODE.Columns[4].Width = 50;
                

                panel2.Visible = true;
            }
            catch (Exception)
            {
          
            }
        }
        private void GRidGezgin_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            string[] CODES = new string[30000];
            string[] CLIENTREF = new string[3000];
            int i = 0;
            string mesaj = "";
            if (GRidGezgin.AccessibleName == "NAME") { TXTNAME.Text = GRidGezgin.CurrentRow.Cells[0].Value.ToString(); }
            if (GRidGezgin.AccessibleName == "CODE") { TXTCODE.Text = GRidGezgin.CurrentRow.Cells[0].Value.ToString(); }
            if (GRidGezgin.AccessibleName == "PRODUCERCODE") { TXTPRODUCERCODE.Text = GRidGezgin.CurrentRow.Cells[0].Value.ToString(); }
            if (GRidGezgin.AccessibleName == "STGRPCODE") { TXTSTGRPCODE.Text = GRidGezgin.CurrentRow.Cells[0].Value.ToString(); }
            if (GRidGezgin.AccessibleName == "SPECODE2") { TXTSPECODE2.Text = GRidGezgin.CurrentRow.Cells[0].Value.ToString(); }
            if (GRidGezgin.AccessibleName == "SPECODE3") { TXTSPECODE3.Text = GRidGezgin.CurrentRow.Cells[0].Value.ToString(); }
            if (GRidGezgin.AccessibleName == "SPECODE4") { TXTSPECODE4.Text = GRidGezgin.CurrentRow.Cells[0].Value.ToString(); }
            if (GRidGezgin.AccessibleName == "SPECODE5") { TXTSPECODE5.Text = GRidGezgin.CurrentRow.Cells[0].Value.ToString(); }
            if (GRidGezgin.AccessibleName == "SPECODE") { TXTSPECODE.Text = GRidGezgin.CurrentRow.Cells[0].Value.ToString();
            GRidIOCek();
            }
            if (GRidGezgin.AccessibleName == "CYPHCODE") {
                return;
                //CMBYetki.Text = GRidGezgin.CurrentRow.Cells[0].Value.ToString();
                //TXTYINDor.Text = GRidGezgin.CurrentRow.Cells[1].Value.ToString();
            }
            if (GRidGezgin.AccessibleName == "Kampanya") { TXTCMPGN.Text = GRidGezgin.CurrentRow.Cells[0].Value.ToString();
            if (TXTCKod.Text == "" || HFCLientRef.Text == "") { MessageBox.Show("Cari Seçmeden İşlem Yapamazsınız!!!"); TXTCKod.BackColor = Color.Red; return; }
            string RecREF = "0",RecTanim="";
            SqlDataReader oku2 = baglanti.DataReaderAl("select * from A_CMPGNLineRec where RecTanim='"+TXTCMPGN.Text+"'");
            while (oku2.Read())
            {
                RecTanim=oku2["RecTanim"].ToString();
                RecREF=oku2["LOGICALREF"].ToString();
                HFQLREF.Text = oku2["QLREF"].ToString();
                HFQREF.Text = oku2["QREF"].ToString();
              //SQlSTR = oku2["SQLSTR"].ToString();
                TXTCIndOr.Text = oku2["INDORAN"].ToString();
                CMBVade.Text = oku2["VADEAD"].ToString();
                CMBMik.Text = oku2["MIKAD"].ToString();
                TXTNAME.Text = oku2["A10"].ToString();
                TXTCODE.Text = oku2["A11"].ToString();
                TXTPRODUCERCODE.Text = oku2["A12"].ToString();
                TXTSTGRPCODE.Text = oku2["A13"].ToString();
                TXTSPECODE.Text = oku2["A18"].ToString();
                TXTSPECODE2.Text = oku2["A14"].ToString();
                TXTSPECODE3.Text = oku2["A15"].ToString();
                TXTSPECODE4.Text = oku2["A16"].ToString();
                TXTSPECODE5.Text = oku2["A17"].ToString();
                CMBYetki.Text = oku2["A19"].ToString();
                CMBA10.Text = oku2["CMBA10"].ToString();
                CMBA11.Text = oku2["CMBA11"].ToString();
                CMBA12.Text = oku2["CMBA12"].ToString();
                CMBA13.Text = oku2["CMBA13"].ToString();
                CMBA14.Text = oku2["CMBA14"].ToString();
                CMBA15.Text = oku2["CMBA15"].ToString();
                CMBA16.Text = oku2["CMBA16"].ToString();
                CMBA17.Text = oku2["CMBA17"].ToString();
                CMBA18.Text = oku2["CMBA18"].ToString();
                CMBA19.Text = oku2["CMBA19"].ToString();
                TXTYINDor.Text=oku2["YINDORAN"].ToString();
                string SQlSTR = SQLSTRYap();
              
                SqlDataReader oku = baglanti.DataReaderAl("select LOGICALREF,CODE from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CLCARD where CODE like '" + TXTCKod.Text + "%'");
                while (oku.Read())
                {
                      
                    CODES[i] = oku[1].ToString();
                    CLIENTREF[i] = oku[0].ToString();
                    string Tarih = DateTime.Now.ToString("MM/dd/yyyy");
                    DialogResult dialogResult = MessageBox.Show(CODES[i] + " Üzerinde İşlem Yapılacaktır ?", "", MessageBoxButtons.YesNo);
                    if (dialogResult == DialogResult.Yes)
                    {
                        string YetkiRef = "0", YetkiAd = "";
                        if (CMBYetki.Text != "")
                        {
                            YetkiAd = CMBYetki.Text.Split('-')[0];
                            YetkiRef = CMBYetki.Text.Split('-')[1];
                        }
                        SqlDataReader oku3 = baglanti.DataReaderAl("select A11 from A_CMPGNLine where CLIENTREF=" + CLIENTREF[i] + " and ( SQLSTR='" + SQlSTR + "')");
                        if (oku3.Read()) { MessageBox.Show("Bu Cari için " + oku3[0].ToString() + " Kodlu Üründe Kampanya Tanımlıdır! \n Olan Kampanyayı Silin Yada Üzerinde Güncelleme Yapın!!!"); break; }
                        baglanti.VeriIslemler("INSERT INTO [A_CMPGNLine](RecTanim,YetkiAD,YetkiRef,CAMPAIGNREF,QLREF,QREF,[CLIENTREF],[SQLSTR],[INDORAN],[ADDDATE],[EDITDATE],VADEAD,MIKAD,VADEREF,MIKREF,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,CMBA10,CMBA11,CMBA12,CMBA13,CMBA14,CMBA15,CMBA16,CMBA17,CMBA18,CMBA19)VALUES" +
                        "('"+RecTanim+"','" + YetkiAd + "'," + YetkiRef + "," + RecREF + "," + HFQLREF.Text + "," + HFQREF.Text + "," + CLIENTREF[i] + ",'" + SQlSTR + "'," + TXTCIndOr.Text.Replace(",", ".") + ",'" + Tarih + "','" + Tarih + "','" + CMBVade.Text + "','" + CMBMik.Text + "'," + CMBVade.Text.Split('-')[1] + "," + CMBMik.Text.Split('-')[1] + ",'" + TXTNAME.Text + "','" + TXTCODE.Text + "','" + TXTPRODUCERCODE.Text + "','" + TXTSTGRPCODE.Text + "','" + TXTSPECODE2.Text + "','" + TXTSPECODE3.Text + "','" + TXTSPECODE4.Text + "','" + TXTSPECODE5.Text + "','" + TXTSPECODE.Text + "','" + CMBYetki.Text + "','" + CMBA10.Text + "','" + CMBA11.Text + "','" + CMBA12.Text + "','" + CMBA13.Text + "','" + CMBA14.Text + "','" + CMBA15.Text + "','" + CMBA16.Text + "','" + CMBA17.Text + "','" + CMBA18.Text + "','" + CMBA19.Text + "')");
                        SLineGetir();
                        LOGOCampYap();
                    }
                    else if (dialogResult == DialogResult.No)
                    {
                        CODES[i] += "-Kabul Edilmedi.";

                    }
                    i++;
                }
            
            
            
            }
            while (i > 0)
            {
                i--;
                mesaj += CODES[i] + "\n";

            }
            GRidIOCek();
            MessageBox.Show(mesaj + "Üzerinde Değişiklik Yapıldı");
            }
        }
        
        private void TXTNAME_DoubleClick(object sender, EventArgs e)
        {
            GezVeriGetir(TXTNAME.Text, "NAME",new Point(193,47),"Ürün Adı");
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

        private void GridICODE_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            string Varmı = GridICODE.CurrentRow.Cells["VarMı"].Value.ToString();
            if (Varmı == "X") { MessageBox.Show("Seçili Satırın Kampanyası Zaten Tanımlı"); return; }
            TXTNAME.Text = GridICODE.CurrentRow.Cells[0].Value.ToString();
            TXTCODE.Text = GridICODE.CurrentRow.Cells["A11"].Value.ToString();
            TXTPRODUCERCODE.Text = GridICODE.CurrentRow.Cells[2].Value.ToString();
            TXTSTGRPCODE.Text = GridICODE.CurrentRow.Cells[3].Value.ToString();
            TXTSPECODE2.Text = GridICODE.CurrentRow.Cells[4].Value.ToString();
            TXTSPECODE3.Text = GridICODE.CurrentRow.Cells[5].Value.ToString();
            TXTSPECODE4.Text = GridICODE.CurrentRow.Cells[6].Value.ToString();
            TXTSPECODE5.Text = GridICODE.CurrentRow.Cells[7].Value.ToString();
            TXTSPECODE.Text = GridICODE.CurrentRow.Cells[8].Value.ToString();
            CMBYetki.Text = GridICODE.CurrentRow.Cells[9].Value.ToString();
            CMBA10.Text = GridICODE.CurrentRow.Cells[10].Value.ToString();
            CMBA11.Text = GridICODE.CurrentRow.Cells[11].Value.ToString();
            CMBA12.Text = GridICODE.CurrentRow.Cells[12].Value.ToString();
            CMBA13.Text = GridICODE.CurrentRow.Cells[13].Value.ToString();
            CMBA14.Text = GridICODE.CurrentRow.Cells[14].Value.ToString();
            CMBA15.Text = GridICODE.CurrentRow.Cells[15].Value.ToString();
            CMBA16.Text = GridICODE.CurrentRow.Cells[16].Value.ToString();
            CMBA17.Text = GridICODE.CurrentRow.Cells[17].Value.ToString();
            CMBA18.Text = GridICODE.CurrentRow.Cells[18].Value.ToString();
            CMBA19.Text = GridICODE.CurrentRow.Cells[19].Value.ToString();
            HFQLREF.Text = GridICODE.CurrentRow.Cells["LOGICALREF"].Value.ToString();
            HFQREF.Text = GridICODE.CurrentRow.Cells["IREF"].Value.ToString();
        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {

        }

        private void PNLCListe_Paint(object sender, PaintEventArgs e)
        {

        }

        private void GridCaris_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void HFCLientRef_Click(object sender, EventArgs e)
        {

        }

        private void GridCLine_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            IISNEW = "0";
            HFLineRef.Text = GridCLine.CurrentRow.Cells["LOGICALREF"].Value.ToString();
            TXTNAME.Text = GridCLine.CurrentRow.Cells["A10"].Value.ToString();
            TXTCODE.Text = GridCLine.CurrentRow.Cells["A11"].Value.ToString();
            TXTPRODUCERCODE.Text = GridCLine.CurrentRow.Cells["A12"].Value.ToString();
            TXTSTGRPCODE.Text = GridCLine.CurrentRow.Cells["A13"].Value.ToString();
            TXTSPECODE2.Text = GridCLine.CurrentRow.Cells["A14"].Value.ToString();
            TXTSPECODE3.Text = GridCLine.CurrentRow.Cells["A15"].Value.ToString();
            TXTSPECODE4.Text = GridCLine.CurrentRow.Cells["A16"].Value.ToString();
            TXTSPECODE5.Text = GridCLine.CurrentRow.Cells["A17"].Value.ToString();
            TXTSPECODE.Text = GridCLine.CurrentRow.Cells["A18"].Value.ToString();
            CMBYetki.Text = GridCLine.CurrentRow.Cells["A19"].Value.ToString();
            CMBVade.Text = GridCLine.CurrentRow.Cells["VADEAD"].Value.ToString();
            CMBMik.Text = GridCLine.CurrentRow.Cells["MIKAD"].Value.ToString();
            TXTCIndOr.Text = GridCLine.CurrentRow.Cells["INDORAN3"].Value.ToString();
            CMBA10.Text = GridCLine.CurrentRow.Cells["CMBA10"].Value.ToString();
            CMBA11.Text = GridCLine.CurrentRow.Cells["CMBA11"].Value.ToString();
            CMBA12.Text = GridCLine.CurrentRow.Cells["CMBA12"].Value.ToString();
            CMBA13.Text = GridCLine.CurrentRow.Cells["CMBA13"].Value.ToString();
            CMBA14.Text = GridCLine.CurrentRow.Cells["CMBA14"].Value.ToString();
            CMBA15.Text = GridCLine.CurrentRow.Cells["CMBA15"].Value.ToString();
            CMBA16.Text = GridCLine.CurrentRow.Cells["CMBA16"].Value.ToString();
            CMBA17.Text = GridCLine.CurrentRow.Cells["CMBA17"].Value.ToString();
            CMBA18.Text = GridCLine.CurrentRow.Cells["CMBA18"].Value.ToString();
            CMBA19.Text = GridCLine.CurrentRow.Cells["CMBA19"].Value.ToString();
            TXTYINDor.Text = GridCLine.CurrentRow.Cells["YINDORAN"].Value.ToString();
            BTNSil.Visible = true;
        }

        private void LBLCari_Click(object sender, EventArgs e)
        {

        }

        private void HFLineRef_Click(object sender, EventArgs e)
        {

        }

        private void groupControl1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void TXTCIndOr_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void CMBA13_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void CMBA17_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void CMBA12_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void CMBA11_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void CMBA16_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void CMBA10_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void CMBA15_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void CMBA18_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void CMBA14_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void TXTSPECODE5_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox11_TextChanged(object sender, EventArgs e)
        {

        }

        private void TXTSPECODE4_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox9_TextChanged(object sender, EventArgs e)
        {

        }

        private void TXTSPECODE3_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox7_TextChanged(object sender, EventArgs e)
        {

        }

        private void TXTSPECODE_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox6_TextChanged(object sender, EventArgs e)
        {

        }

        private void TXTSPECODE2_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {

        }

        private void TXTSTGRPCODE_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox19_TextChanged(object sender, EventArgs e)
        {

        }

        private void TXTPRODUCERCODE_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox17_TextChanged(object sender, EventArgs e)
        {

        }

        private void TXTCODE_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox15_TextChanged(object sender, EventArgs e)
        {

        }

        private void TXTNAME_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox13_TextChanged(object sender, EventArgs e)
        {

        }

        private void groupControl2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panelControl2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void GridVade_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void panelControl1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void GridMik_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void textBox22_TextChanged(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void GRidGezgin_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void HFQREF_Click(object sender, EventArgs e)
        {

        }

        private void HFQLREF_Click(object sender, EventArgs e)
        {

        }

        private void GridICODE_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void BTNUPD_Click(object sender, EventArgs e)
        {
            if (GridCLine.SelectedCells.Count == 0) { return; }
            string[] CODES = new string[30000];
            if (HFLineRef.Text == "") { return; }
            DialogResult dialogResult = MessageBox.Show("Üzerinde Güncelleme Yapılacaktır ?", "", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                string[] CLIENTREF = new string[3000];
                string SQlSTR = SQLSTRYap();
                string Tarih = DateTime.Now.ToString("MM/dd/yyyy");
                string YetkiRef = "0", YetkiAd = "";
                if (CMBYetki.Text != "")
                {
                    YetkiAd = CMBYetki.Text.Split('-')[0];
                    YetkiRef = CMBYetki.Text.Split('-')[1];
                }
                baglanti.VeriIslemler("UPDATE [A_CMPGNLine]SET [SQLSTR] = '" + SQlSTR + "',[INDORAN] = " + TXTCIndOr.Text.Replace(",", ".") + ",[VADEAD] ='" + CMBVade.Text + "',[MIKAD] ='" + CMBMik.Text + "',[VADEREF] =" + CMBVade.Text.Split('-')[1] + "" +
    ",YetkiAd='" + YetkiAd + "',YetkiRef=" + YetkiRef + ",[MIKREF] =" + CMBMik.Text.Split('-')[1] + "" +
    ",[EDITDATE] = '" + Tarih + "'" +
    ",[YINDORAN] =" + TXTYINDor.Text.Replace(",", ".") + "" +
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
    "WHERE LOGICALREF=" + HFLineRef.Text + "");

                //logo güncelleme


                LOGOCampYap();



                    //logo güncelleme






                    MessageBox.Show("KAyıt Güncellendi.");
                    SLineGetir();
               
            }
            GridCLine.ClearSelection();
         }

        private void BTNSearch_Click(object sender, EventArgs e)
        {
            CMPGNRecGetir();
        }

        private void TXTCMPGN_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar==13)
            {
                CMPGNRecGetir();
            }
        }

        private void CHCKCmpgn_CheckedChanged(object sender, EventArgs e)
        {
            if (CHCKCmpgn.Checked==true)
            {
                TXTCMPGN.Visible = true;
                BTNSearch.Visible = true;
                CMPGNRecGetir();
            }
            else
            {
                TXTCMPGN.Visible = false;
                BTNSearch.Visible = false;
            }
        }

        private void CMBYetki_KeyPress(object sender, KeyPressEventArgs e)
        {
     //    if (e.KeyChar == 13) { GezVeriGetir(CMBYetki.Text, "CYPHCODE", new Point(193, 47), "Yetki Kodu"); }
        }

        private void CMBYetki_DoubleClick(object sender, EventArgs e)
        {
          //  GezVeriGetir(CMBYetki.Text, "CYPHCODE", new Point(193, 47), "Yetki Kodu"); 
        }

        private void CMBYetki_SelectedIndexChanged(object sender, EventArgs e)
        {
            panel1.Visible = true;
            GRidGezgin.DataSource = baglanti.TabloAl("select VADESTR,INDORAN from A_CYPHCODELine where FLAG=0 and VREF='" + CMBYetki.Text.Split('-')[1] + "'");
            GRidGezgin.Columns[0].Width = GRidGezgin.Width/2 - 10;
            GRidGezgin.Columns[0].HeaderText = "Yetki Kodu";

            //  panel1.Location = GridLoc;
            GRidGezgin.AccessibleName = "CYPHCODE";
            if (CMBYetki.SelectedText== "")
            {
                TXTYINDor.Text = "0"; return;
            }
            if (CMBYetki.SelectedText.Split('-')[1]=="0")
            {
                TXTYINDor.Text = "0";
            }
        }

        private void TXTYINDor_EditValueChanged(object sender, EventArgs e)
        {
            if (TXTYINDor.Text=="")
            {
                TXTYINDor.Text = "0";
            }
        }

        private void TXTSPECODE2_KeyPress_1(object sender, KeyPressEventArgs e)
        {

        }

    }
}
