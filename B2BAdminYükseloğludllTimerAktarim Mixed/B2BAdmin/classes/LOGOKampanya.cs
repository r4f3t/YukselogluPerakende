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
    class LOGOKampanya
    {
        public static void LOGOCampYap(string LClientref)
        {

            SqlDataReader oku, oku2, oku3, oku4;
            string CLIENTREF = LClientref;
            string Carikod = "", CariAd = "";
            //logo cari bilgisi çek
            oku = baglanti.DataReaderAl("select CODE,DEFINITION_ from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CLCARD where LOGICALREF=" + CLIENTREF + " ");
            if (oku.Read())
            {
                Carikod = oku[0].ToString();
                CariAd = oku[1].ToString();
            }


            //logo kampanyalarını sil campcardrefe göre sil sonra döngü ile bidaha ekle

            //logoya ekleme

            //DialogResult dialogResult2 = MessageBox.Show("LOGODA \n Cariler Üzerinde Güncelleme Yapılacaktır ?", "", MessageBoxButtons.YesNo);
            //if (dialogResult2 == DialogResult.No) { return; }
            //cari başlığıını logoya gir
            string LogoCAMPCARDREF = "0";
        rafet:
            oku = baglanti.DataReaderAl("select LOGICALREF from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CAMPAIGN where CLIENTCODE='" + Carikod + "' ");
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
               ",'" + Carikod + "'" +
               ",'" + CariAd.Substring(0, 40) + " Kampanya'" +
               ",''" +
               ",''" +
               ",'" + DateTime.Now.ToString("MM/dd/yyyy hh:mm") + "'" +
               ",'2020-12-30'" +
               ",''" +
               ",0" +
               ",0" +
               ",'" + Carikod + "'" +
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
          string  HFLineRef = "";
          string  TXTNAME = "";
          string TXTCODE ="";
          string  TXTPRODUCERCODE ="";
          string   TXTSTGRPCODE = "";
          string  TXTSPECODE2 ="";
          string  TXTSPECODE3 ="";
          string  TXTSPECODE4 ="";
          string  TXTSPECODE5 ="";
          string  TXTSPECODE = "";
          string  CMBYetki = "";
          string  CMBVade = "";
          string  CMBMik ="";
         string TXTCIndOr = "";
         string   CMBA10 ="";
         string   CMBA11 = "";
         string   CMBA12 = "";
         string   CMBA13 = "";
         string   CMBA14 = "";
         string   CMBA15 = "";
         string   CMBA16 = "";
         string   CMBA17 = "";
         string   CMBA18 = "";
         string   CMBA19 = "";
            string SQlSTR = "";
            oku3 = baglanti.DataReaderAl("select * from A_CMPGNLine where CLIENTREF=" + CLIENTREF + " ");
            while (oku3.Read())
            {
                HFLineRef = oku3["LOGICALREF"].ToString();
                TXTNAME = oku3["A10"].ToString();
                TXTCODE = oku3["A11"].ToString();
                TXTPRODUCERCODE = oku3["A12"].ToString();
                TXTSTGRPCODE = oku3["A13"].ToString();
                TXTSPECODE2 = oku3["A14"].ToString();
                TXTSPECODE3 = oku3["A15"].ToString();
                TXTSPECODE4 = oku3["A16"].ToString();
                TXTSPECODE5 = oku3["A17"].ToString();
                TXTSPECODE = oku3["A18"].ToString();
                CMBYetki = oku3["A19"].ToString();
                CMBVade = oku3["VADEAD"].ToString();
                CMBMik = oku3["MIKAD"].ToString();
                TXTCIndOr = oku3["INDORAN"].ToString();
                CMBA10 = oku3["CMBA10"].ToString();
                CMBA11 = oku3["CMBA11"].ToString();
                CMBA12 = oku3["CMBA12"].ToString();
                CMBA13 = oku3["CMBA13"].ToString();
                CMBA14 = oku3["CMBA14"].ToString();
                CMBA15 = oku3["CMBA15"].ToString();
                CMBA16 = oku3["CMBA16"].ToString();
                CMBA17 = oku3["CMBA17"].ToString();
                CMBA18 = oku3["CMBA18"].ToString();
                CMBA19 = oku3["CMBA19"].ToString();
                //  TXTYINDor = oku3["YINDORAN"].ToString();


                //sqlstryap()
                string SQLStr = "", ARAStr = "", BitSTR = "";
                if (TXTNAME != "")
                {
                    if (CMBA10 == "%") { ARAStr = " like "; BitSTR = "%"; }
                    if (CMBA10 == "=") { ARAStr = "="; BitSTR = ""; }
                    if (CMBA10 == "<>") { ARAStr = "="; BitSTR = ""; }
                    if (CMBA10 == "<") { ARAStr = " < "; BitSTR = ""; }
                    if (CMBA10 == ">") { ARAStr = ">"; BitSTR = ""; }
                    if (CMBA10 == "<=") { ARAStr = "<="; BitSTR = ""; }
                    if (CMBA10 == ">=") { ARAStr = ">="; BitSTR = ""; }
                    SQLStr += " and NAME " + ARAStr + " ''" + TXTNAME + "" + BitSTR + "''";
                }
                if (TXTCODE != "")
                {
                    if (CMBA11 == "%") { ARAStr = " like "; BitSTR = "%"; }
                    if (CMBA11 == "=") { ARAStr = "="; BitSTR = ""; }
                    if (CMBA11 == "<>") { ARAStr = "="; BitSTR = ""; }
                    if (CMBA11 == "<") { ARAStr = " < "; BitSTR = ""; }
                    if (CMBA11 == ">") { ARAStr = ">"; BitSTR = ""; }
                    if (CMBA11 == "<=") { ARAStr = "<="; BitSTR = ""; }
                    if (CMBA11 == ">=") { ARAStr = ">="; BitSTR = ""; }
                    SQLStr += " and CODE " + ARAStr + " ''" + TXTCODE + "" + BitSTR + "''";
                }
                if (TXTPRODUCERCODE != "")
                {
                    if (CMBA12 == "%") { ARAStr = " like "; BitSTR = "%"; }
                    if (CMBA12 == "=") { ARAStr = "="; BitSTR = ""; }
                    if (CMBA12 == "<>") { ARAStr = "="; BitSTR = ""; }
                    if (CMBA12 == "<") { ARAStr = " < "; BitSTR = ""; }
                    if (CMBA12 == ">") { ARAStr = ">"; BitSTR = ""; }
                    if (CMBA12 == "<=") { ARAStr = "<="; BitSTR = ""; }
                    if (CMBA12 == ">=") { ARAStr = ">="; BitSTR = ""; }
                    SQLStr += " and PRODUCERCODE " + ARAStr + " ''" + TXTPRODUCERCODE + "" + BitSTR + "''";
                }
                if (TXTSTGRPCODE != "")
                {
                    if (CMBA13 == "%") { ARAStr = " like "; BitSTR = "%"; }
                    if (CMBA13 == "=") { ARAStr = "="; BitSTR = ""; }
                    if (CMBA13 == "<>") { ARAStr = "="; BitSTR = ""; }
                    if (CMBA13 == "<") { ARAStr = " < "; BitSTR = ""; }
                    if (CMBA13 == ">") { ARAStr = ">"; BitSTR = ""; }
                    if (CMBA13 == "<=") { ARAStr = "<="; BitSTR = ""; }
                    if (CMBA13 == ">=") { ARAStr = ">="; BitSTR = ""; }
                    SQLStr += " and STGRPCODE " + ARAStr + " ''" + TXTSTGRPCODE + "" + BitSTR + "''";
                }
                if (TXTSPECODE2 != "")
                {
                    if (CMBA14 == "%") { ARAStr = " like "; BitSTR = "%"; }
                    if (CMBA14 == "=") { ARAStr = "="; BitSTR = ""; }
                    if (CMBA14 == "<>") { ARAStr = "="; BitSTR = ""; }
                    if (CMBA14 == "<") { ARAStr = " < "; BitSTR = ""; }
                    if (CMBA14 == ">") { ARAStr = ">"; BitSTR = ""; }
                    if (CMBA14 == "<=") { ARAStr = "<="; BitSTR = ""; }
                    if (CMBA14 == ">=") { ARAStr = ">="; BitSTR = ""; }
                    SQLStr += " and SPECODE2 " + ARAStr + " ''" + TXTSPECODE2 + "" + BitSTR + "''";
                }
                if (TXTSPECODE3 != "")
                {
                    if (CMBA15 == "%") { ARAStr = " like "; BitSTR = "%"; }
                    if (CMBA15 == "=") { ARAStr = "="; BitSTR = ""; }
                    if (CMBA15 == "<>") { ARAStr = "="; BitSTR = ""; }
                    if (CMBA15 == "<") { ARAStr = " < "; BitSTR = ""; }
                    if (CMBA15 == ">") { ARAStr = ">"; BitSTR = ""; }
                    if (CMBA15 == "<=") { ARAStr = "<="; BitSTR = ""; }
                    if (CMBA15 == ">=") { ARAStr = ">="; BitSTR = ""; }
                    SQLStr += " and SPECODE3 " + ARAStr + " ''" + TXTSPECODE3 + "" + BitSTR + "''";
                }
                if (TXTSPECODE4 != "")
                {
                    if (CMBA16 == "%") { ARAStr = " like "; BitSTR = "%"; }
                    if (CMBA16 == "=") { ARAStr = "="; BitSTR = ""; }
                    if (CMBA16 == "<>") { ARAStr = "="; BitSTR = ""; }
                    if (CMBA16 == "<") { ARAStr = " < "; BitSTR = ""; }
                    if (CMBA16 == ">") { ARAStr = ">"; BitSTR = ""; }
                    if (CMBA16 == "<=") { ARAStr = "<="; BitSTR = ""; }
                    if (CMBA16 == ">=") { ARAStr = ">="; BitSTR = ""; }
                    SQLStr += " and SPECODE4  " + ARAStr + " ''" + TXTSPECODE4 + "" + BitSTR + "''";
                }
                if (TXTSPECODE5 != "")
                {
                    if (CMBA17 == "%") { ARAStr = " like "; BitSTR = "%"; }
                    if (CMBA17 == "=") { ARAStr = "="; BitSTR = ""; }
                    if (CMBA17 == "<>") { ARAStr = "="; BitSTR = ""; }
                    if (CMBA17 == "<") { ARAStr = " < "; BitSTR = ""; }
                    if (CMBA17 == ">") { ARAStr = ">"; BitSTR = ""; }
                    if (CMBA17 == "<=") { ARAStr = "<="; BitSTR = ""; }
                    if (CMBA17 == ">=") { ARAStr = ">="; BitSTR = ""; }
                    SQLStr += " and SPECODE5 " + ARAStr + " ''" + TXTSPECODE5 + "" + BitSTR + "''";
                }
                if (TXTSPECODE != "")
                {
                    if (CMBA18 == "%") { ARAStr = " like "; BitSTR = "%"; }
                    if (CMBA18 == "=") { ARAStr = "="; BitSTR = ""; }
                    if (CMBA18 == "<>") { ARAStr = "="; BitSTR = ""; }
                    if (CMBA18 == "<") { ARAStr = " < "; BitSTR = ""; }
                    if (CMBA18 == ">") { ARAStr = ">"; BitSTR = ""; }
                    if (CMBA18 == "<=") { ARAStr = "<="; BitSTR = ""; }
                    if (CMBA18 == ">=") { ARAStr = ">="; BitSTR = ""; }
                    SQLStr += " and SPECODE " + ARAStr + " ''" + TXTSPECODE + "" + BitSTR + "''";
                }






                 SQlSTR = SQLStr;


                //sqlstr yap bitti


                //logo condition yap


                 SQLStr = ""; ARAStr = ""; BitSTR = "";
            if (TXTNAME != "")
            {
                if (CMBA10 == "%") { ARAStr = " like "; BitSTR = "%"; }
                if (CMBA10 == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA10 == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA10 == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA10 == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA10 == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA10 == ">=") { ARAStr = ">="; BitSTR = ""; }
                //  SQLStr += " and NAME " + ARAStr + " ''" + TXTNAME + "" + BitSTR + "''";
            }
            if (TXTCODE != "")
            {
                if (CMBA11 == "%") { ARAStr = " like "; BitSTR = "%"; }
                if (CMBA11 == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA11 == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA11 == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA11 == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA11 == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA11 == ">=") { ARAStr = ">="; BitSTR = ""; }
                //   SQLStr += " and CODE " + ARAStr + " ''" + TXTCODE + "" + BitSTR + "''";
            }
            if (TXTPRODUCERCODE != "")
            {
                if (CMBA12 == "%") { ARAStr = " like "; BitSTR = "%"; }
                if (CMBA12 == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA12 == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA12 == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA12 == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA12 == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA12 == ">=") { ARAStr = ">="; BitSTR = ""; }
                //    SQLStr += " and PRODUCERCODE " + ARAStr + " ''" + TXTPRODUCERCODE + "" + BitSTR + "''";
            }
            if (TXTSTGRPCODE != "")
            {
                if (CMBA13 == "%") { ARAStr = " like "; BitSTR = "%"; }
                if (CMBA13 == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA13 == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA13 == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA13 == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA13 == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA13 == ">=") { ARAStr = ">="; BitSTR = ""; }
                //   SQLStr += " and STGRPCODE " + ARAStr + " ''" + TXTSTGRPCODE + "" + BitSTR + "''";
            }
            if (TXTSPECODE2 != "")
            {
                if (CMBA14 == "%") { ARAStr = " like "; BitSTR = ""; }
                if (CMBA14 == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA14 == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA14 == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA14 == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA14 == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA14 == ">=") { ARAStr = ">="; BitSTR = ""; }
                if (SQLStr.Length != 0) { SQLStr += " & "; }
                SQLStr += "(P118=\"" + TXTSPECODE2 + BitSTR + "\") ";
            }
            if (TXTSPECODE3 != "")
            {
                if (CMBA15 == "%") { ARAStr = " like "; BitSTR = ""; }
                if (CMBA15 == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA15 == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA15 == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA15 == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA15 == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA15 == ">=") { ARAStr = ">="; BitSTR = ""; }
                if (SQLStr.Length != 0) { SQLStr += " & "; }
                SQLStr += "(P119=\"" + TXTSPECODE3 + BitSTR + "\") ";
            }
            if (TXTSPECODE4 != "")
            {
                if (CMBA16 == "%") { ARAStr = " like "; BitSTR = ""; }
                if (CMBA16 == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA16 == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA16 == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA16 == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA16 == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA16 == ">=") { ARAStr = ">="; BitSTR = ""; }
                if (SQLStr.Length != 0) { SQLStr += " & "; }
                SQLStr += "(P120=\"" + TXTSPECODE4 + BitSTR + "\") ";
            }
            if (TXTSPECODE5 != "")
            {
                if (CMBA17 == "%") { ARAStr = " like "; BitSTR = ""; }
                if (CMBA17 == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA17 == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA17 == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA17 == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA17 == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA17 == ">=") { ARAStr = ">="; BitSTR = ""; }
                if (SQLStr.Length != 0) { SQLStr += " & "; }
                SQLStr += "(P121=\"" + TXTSPECODE5 + BitSTR + "\") ";
            }
            if (TXTSPECODE != "")
            {
                if (CMBA18 == "%") { ARAStr = " like "; BitSTR = ""; }
                if (CMBA18 == "=") { ARAStr = "="; BitSTR = ""; }
                if (CMBA18 == "<>") { ARAStr = "="; BitSTR = ""; }
                if (CMBA18 == "<") { ARAStr = " < "; BitSTR = ""; }
                if (CMBA18 == ">") { ARAStr = ">"; BitSTR = ""; }
                if (CMBA18 == "<=") { ARAStr = "<="; BitSTR = ""; }
                if (CMBA18 == ">=") { ARAStr = ">="; BitSTR = ""; }
                if (SQLStr.Length != 0) { SQLStr += " & "; }
                SQLStr += "(P114=\"" + TXTSPECODE + BitSTR + "\") ";
            }

                if (SQLStr == "") { SQLStr = "1"; }
                //logocondition yap bitti



                string SistemRef = oku3["LOGICALREF"].ToString(); ;

                //referans al




                //genel indirimleri logoya girmek için stringler
                string LOGOLineCONDition = SQLStr;
                string CONDITEMCODE = TXTCODE + "*";
                double GenelIndirimOranı = Convert.ToDouble(TXTCIndOr) / 100;
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
                    oku4 = baglanti.DataReaderAl("select LOGICALREF from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CMPGNLINE where CAMPCARDREF=" + LogoCAMPCARDREF + " and CONDITION='" + LOGOLineCONDition + "' and CONDITEMCODE='" + CONDITEMCODE + "'");
                    if (oku4.Read())
                    {
                        string SLogicalref = oku4[0].ToString();
                        baglanti.VeriIslemler("insert into A_CROSSCampaign (LOGOCARDREF,CMPGNREF,LOGOLineRef,ADDDATE) values (" + LogoCAMPCARDREF + "," + SistemRef + "," + SLogicalref + ",'" + DateTime.Now.ToString("MM/dd/yyyy") + "')");
                    }
                }






                if (CMBVade != "")
                {
                    //  vade indirimlerini logoya gir
                    oku = baglanti.DataReaderAl("select VADESTR,VADEAD,INDORAN from A_VadeLine where VREF=" + CMBVade.Split('-')[1] + "");
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

                    if (CMBMik != "")
                    {
                        //  miktar indirimlerini logoya gir
                        oku = baglanti.DataReaderAl("select MIKSTR,MIKAD,INDORAN from A_MikLine where MREF=" + CMBMik.Split('-')[1] + "");
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
                    if (CMBYetki != "")
                    {
                        //  yetki kodu indirimlerini logoya gir
                        oku = baglanti.DataReaderAl("select VADESTR,VADEAD,INDORAN from A_CYPHCODELine where VREF=" + CMBYetki.Split('-')[1] + "");
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
                                    baglanti.VeriIslemler("insert into A_CROSSCampaign (LOGOCARDREF,CMPGNREF,LOGOLineRef,ADDDATE) values (" + LogoCAMPCARDREF + "," + SistemRef + "," + SLogicalref + ",'" + DateTime.Now.ToString("MM/dd/yyyy") + "')");
                                }

                            }


                        }
                    }
                }



            }
        }
    }
}
