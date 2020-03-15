using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Telerik.WinControls;
using System.Diagnostics;
using UnityObjects;
using System.Data.SqlClient;
using System.Runtime.InteropServices;
using System.IO;

namespace B2BAdmin
{
    public partial class FRMAKTAR : Telerik.WinControls.UI.RadForm
    {
        public FRMAKTAR()
        {
            InitializeComponent();
        }
        [DllImport("kernel32")]
        private static extern long WritePrivateProfileString(string section, string key, string val, string filePath);

        [DllImport("kernel32")]
        private static extern int GetPrivateProfileString(string section, string key, string def, StringBuilder retVal, int size, string filePath);



        private static string Path = "/rafet.ini";
        public static string Default { get; set; }

        public static string Read(string section, string key)
        {
            Default = Default ?? String.Empty;
            StringBuilder StrBuild = new StringBuilder(256);
            GetPrivateProfileString(section, key, Default, StrBuild, 255, Path);
            return StrBuild.ToString();
        }
        SqlDataReader SRead;

        private void GridGetir()
        {
            GridAktarılanlar.DataSource = baglanti.TabloAl("select * from (select SIPID,CLIENTREF,DURUM,FICHENO from Z_SipLine where DURUM in (2,4) group by SIPID,CLIENTREF,DURUM,FICHENO) as k order by SIPID desc");
            GridAktarilamayan.DataSource = baglanti.TabloAl("select * from (select SIPID,CLIENTREF,DURUM,FICHENO from Z_SipLine where DURUM in (1,3) group by SIPID,CLIENTREF,DURUM,FICHENO) as k order by SIPID desc");
        }
        private void LOBJECTKill()
        {
            try
            {
                foreach (var process in Process.GetProcessesByName("LOBJECTS"))
                {
                    process.Kill();
                }
            }
            catch (Exception)
            {


            }

        }
        private void FRMAKTAR_Load(object sender, EventArgs e)
        {
            long result = DateTime.Now.Year * 10000000000 + DateTime.Now.Month * 100000000 + DateTime.Now.Day * 1000000 + DateTime.Now.Hour * 10000 + DateTime.Now.Minute * 100 + DateTime.Now.Second;
            this.Text = result.ToString();

        }

        private void TXTLOGTut()
        {
            try
            {
                StreamReader Dosya = File.OpenText(System.Windows.Forms.Application.StartupPath + "\\LOGMen@.txt");//Dosyayı açmaya çalış olmaz ise catch bloğuan geç
                Dosya.Close();
            }
            catch
            {
                StreamWriter Dosya = File.CreateText(System.Windows.Forms.Application.StartupPath + "\\LOGMen@.txt");// yeni dosya oluştur.
                Dosya.Close();
            }
        }
        private void Aktar()
        {


            StringBuilder sb = new StringBuilder(5000);
            GetPrivateProfileString("Bilgiler", "Kullanıcı", "", sb, sb.Capacity, System.Windows.Forms.Application.StartupPath + "/rafet.ini");
            string LLOGOUser = sb.ToString();
            sb.Clear();


            GetPrivateProfileString("Bilgiler", "Sifre", "", sb, sb.Capacity, System.Windows.Forms.Application.StartupPath + "/rafet.ini");
            string LLOGOPASS = sb.ToString();
            sb.Clear();




            this.Text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss") + LLOGOPASS + "-" + LLOGOUser;
            SRead = baglanti.DataReaderAl("select FICHENO,CLIENTREF,DURUM from Z_SipLine where DURUM=1 group by FICHENO,CLIENTREF,DURUM");
            while (SRead.Read())
            {
                long LOGOTIMETOINT = DateTime.Now.Hour * 65536 * 256 + DateTime.Now.Minute * 65536 + DateTime.Now.Second * 256;
                LBLOG.Items.Add("TİME_:" + LOGOTIMETOINT.ToString());
                string GSipId = SRead[0].ToString();
                string GClientRef = SRead[1].ToString();
                LBLOG.Items.Add(GSipId + "  İşlemi Başladı");
                string[] UCODE = new string[250];
                string[] UMik = new string[250];
                string[] URef = new string[250];
                string[] UBFiyat = new string[250];//saır miktarı kontrolü yapılırken ORFLINEDEN ALINACAK,
                string[] UVAT = new string[250];
                string[] ULAmbarId = new string[250];
                string[] UVIND = new string[250];
                string[] UVINDORAN = new string[250];
                string[] UVINDCode = new string[250];
                string[] UMIND = new string[250];
                string[] UMINDORAN = new string[250];
                string[] UMINDCode = new string[250];
                string[] UIND = new string[250];
                string[] UINDORAN = new string[250];
                string[] UINDCode = new string[250];
                string[] UYIND = new string[250];
                string[] UYINDORAN = new string[250];
                string[] UYINDCode = new string[250];
                string[] SDATE = new string[250];
                string[] VADESTR = new string[250];
                string[] MIKSTR = new string[250];
                string[] CURRID = new string[250];
                string[] CURRRATE = new string[250];
                string[] CURRPRICE = new string[250];
                string[] TRADINGGRP = new string[250];
                string[] DIVISION = new string[250];
                string[] VATINC = new string[250];
                string[] KIMDEN = new string[250];
                double[] INDORANTOP = new double[250];
                string[] STOCKREF = new string[250];
                string[] PRCCODE = new string[250];
                string GFirmaKodu = "", CLIENTREF = "", LFICHENO = "", SLSMANCODE = "", CSPECODE = "", ProJectReF = "0";
                int LineType = 0;
                string[] UKIND = new string[250];
                string[] UKINDORAN = new string[250];
                string[] UKAMPORAN = new string[250];
                string[] UKAMPORANCODE = new string[250];
                string[] SONFIYAT = new string[250];
                string[] SONFIYATORAN = new string[250];
                string[] SONFIYATORANCODE = new string[250];
                string[] UKINDCode = new string[250];
                string[] SonFiyatAck = new string[250];
                // LFICHENO = GSipId;
                int i = 0, a = 0;
                SqlDataReader oku = baglanti.DataReaderAl("select * from(SELECT "
            + "(select SPECODE from TIGER..LG_206_ITEMS where LOGICALREF=STOCKREF) SPECODE,KURINDORAN,KIMDEN,TRADINGGRP,DIVISION,VATINC,[LOGICALREF],[SIPID],[FICHENO],[DATE_],[STOCKREF],[STOCKCODE],[STOCKNAME],[AMOUNT],[PRICE],[GENELIORAN],[VADORAN],[MIKORAN],ROUND(isnull((PRICE*(GENELIORAN/100)*AMOUNT),0),2) AS[GENELITUTAR],ROUND(isnull((PRICE*(VADORAN/100)*AMOUNT),0),2) AS [VADTUTAR],ROUND(isnull((PRICE*(MIKORAN/100)*AMOUNT),0),2) AS [MIKTUTAR],[LINEEXP],(AMOUNT*PRICE)AS SATIRTOP,ROUND(isnull((PRICE*(YINDORAN/100)*AMOUNT),0),2)as YINDTUTAR,[YINDORAN],CLIENTREF ,VAT,VADESTR,MIKSTR,CURRID,isnull(CURRRATE,1) as CURRRATE,LISTFIYAT,isnull(KAMPORAN,0) as KAMPORAN,isnull(SONFIYAT,0) as SONFIYAT,isnull(SONFIYATORAN,0) as SONFIYATORAN  FROM [LOGOKAMP].[dbo].[Z_SipLine] where LOGICALREF>0  and Durum<>4  and FICHENO='" + GSipId + "' and CLIENTREF=" + GClientRef + "  ) as R order by R.SPECODE");
                while (oku.Read())
                {
                    KIMDEN[i] = oku["KIMDEN"].ToString();
                    TRADINGGRP[i] = oku["TRADINGGRP"].ToString();
                    DIVISION[i] = oku["DIVISION"].ToString();
                    VATINC[i] = oku["VATINC"].ToString();
                    LFICHENO = oku["FICHENO"].ToString();
                    UCODE[i] = oku["STOCKCODE"].ToString();
                    STOCKREF[i] = oku["STOCKREF"].ToString();
                    UMik[i] = oku["AMOUNT"].ToString();
                    UBFiyat[i] = (Convert.ToDouble(oku["LISTFIYAT"].ToString()) * Convert.ToDouble(oku["CURRRATE"].ToString())).ToString();
                    CURRPRICE[i] = oku["LISTFIYAT"].ToString();
                    UVAT[i] = oku["VAT"].ToString();
                    UVIND[i] = oku["VADTUTAR"].ToString();
                    UVINDORAN[i] = oku["VADORAN"].ToString();
                    UMIND[i] = oku["MIKTUTAR"].ToString();
                    UMINDORAN[i] = oku["MIKORAN"].ToString();
                    UIND[i] = oku["GENELITUTAR"].ToString();
                    UINDORAN[i] = oku["GENELIORAN"].ToString();
                    UYIND[i] = oku["YINDTUTAR"].ToString();
                    UYINDORAN[i] = oku["YINDORAN"].ToString();
                    CLIENTREF = oku["CLIENTREF"].ToString();
                    SDATE[i] = oku["DATE_"].ToString();
                    VADESTR[i] = oku["VADESTR"].ToString(); if (VADESTR[i] == "CC") { VADESTR[i] = "60"; }
                    MIKSTR[i] = oku["MIKSTR"].ToString();
                    CURRID[i] = oku["CURRID"].ToString();
                    CURRRATE[i] = oku["CURRRATE"].ToString();
                    UKINDORAN[i] = oku["KURINDORAN"].ToString();
                    //  UKIND[i] = oku["GENELITUTAR"].ToString();
                    //kampanya oranı hesaplaması
                    UKAMPORAN[i] = oku["KAMPORAN"].ToString();
                    //sonfiyat hesaplaması var ise fiyata uygun oran çıkarıp onu genel kampanya olarak yazdır.
                    SONFIYATORAN[i] = oku["SONFIYATORAN"].ToString();
                    SONFIYAT[i] = oku["SONFIYAT"].ToString();
                    if (Convert.ToDecimal(SONFIYAT[i]) > 0)
                    {
                        SonFiyatAck[i] = "Son Fiyat Genel=" + UINDORAN[i] + " V=" + UVINDORAN[i] + " M=" + UMINDORAN[i] + " Y=" + UYINDORAN[i];
                        UINDORAN[i] = "00";
                        UVINDORAN[i] = "00";
                        UMINDORAN[i] = "00";
                        UYINDORAN[i] = "00";
                        UIND[i] = "0";
                        UVIND[i] = "0";
                        UMIND[i] = "0";
                        UYIND[i] = "0";
                        UKAMPORAN[i] = "00";
                    }

                    INDORANTOP[i] = 100 - (100 * ((100 - Convert.ToDouble(UVINDORAN[i])) / 100) * ((100 - Convert.ToDouble(UMINDORAN[i])) / 100) * ((100 - Convert.ToDouble(UINDORAN[i])) / 100) * ((100 - Convert.ToDouble(UYINDORAN[i])) / 100) * ((100 - Convert.ToDouble(UKAMPORAN[i])) / 100));

                    UVINDCode[i] = UVINDORAN[i]; if (UVINDCode[i].Length == 4) { UVINDCode[i] = "0" + UVINDCode[i].Substring(0, 1); } if (UVINDCode[i].Length == 5) { UVINDCode[i] = UVINDCode[i].Substring(0, 2); }
                    UMINDCode[i] = UMINDORAN[i]; if (UMINDCode[i].Length == 4) { UMINDCode[i] = "0" + UMINDCode[i].Substring(0, 1); } if (UMINDCode[i].Length == 5) { UMINDCode[i] = UMINDCode[i].Substring(0, 2); }
                    UINDCode[i] = UINDORAN[i]; if (UINDCode[i].Length == 4) { UINDCode[i] = "0" + UINDCode[i].Substring(0, 1); } if (UINDCode[i].Length == 5) { UINDCode[i] = UINDCode[i].Substring(0, 2); }
                    UYINDCode[i] = UYINDORAN[i]; if (UYINDCode[i].Length == 4) { UYINDCode[i] = "0" + UYINDCode[i].Substring(0, 1); } if (UYINDCode[i].Length == 5) { UYINDCode[i] = UYINDCode[i].Substring(0, 2); }
                    UKINDCode[i] = UKINDORAN[i]; if (UKINDCode[i].Length == 4) { UKINDCode[i] = "0" + UKINDCode[i].Substring(0, 1); } if (UKINDCode[i].Length == 5) { UKINDCode[i] = UKINDCode[i].Substring(0, 2); }
                    UKAMPORANCODE[i] = UKAMPORAN[i]; if (UKAMPORANCODE[i].Length == 4) { UKAMPORANCODE[i] = "0" + UKAMPORANCODE[i].Substring(0, 1); } if (UKAMPORANCODE[i].Length == 5) { UKAMPORANCODE[i] = UKAMPORANCODE[i].Substring(0, 2); }
                    SONFIYATORANCODE[i] = SONFIYATORAN[i]; if (SONFIYATORANCODE[i].Length == 4) { SONFIYATORANCODE[i] = "0" + SONFIYATORANCODE[i].Substring(0, 1); } if (SONFIYATORANCODE[i].Length == 5) { SONFIYATORANCODE[i] = SONFIYATORANCODE[i].Substring(0, 2); }

                    //fiyat referansı al
                    SqlDataReader dtrd = baglanti.DataReaderAl("select LOGICALREF,CODE from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_PRCLIST where BEGDATE<='" + DateTime.Now.ToString("MM/dd/yyyy") + "' and ENDDATE>='" + DateTime.Now.ToString("MM/dd/yyyy") + "' and CARDREF=" + STOCKREF[i] + " and PTYPE=2 ");
                    if (dtrd.Read())
                    {
                        PRCCODE[i] = dtrd["CODE"].ToString();
                    }
                    //


                    i++;
                }
                if (i == 0) { LBLOG.Items.Add("Şartları Sağlayan Kayıtlar Bulunamadı!!!"); }
                SqlDataReader oku2 = baglanti.DataReaderAl("select CODE,SPECODE,PROJECTREF FROM " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CLCARD where LOGICALREF=" + CLIENTREF + "");
                if (oku2.Read()) { GFirmaKodu = oku2["CODE"].ToString(); CSPECODE = oku2["SPECODE"].ToString(); ProJectReF = oku2["PROJECTREF"].ToString(); } else { LBLOG.Items.Add("Cari Ticari sistemde Bulunamadı!!!"); return; }
                SqlDataReader oku3 = baglanti.DataReaderAl("select CODE FROM " + baglanti.INITIAL2 + "..LG_SLSMAN where CODE like '%" + CSPECODE + "%' and FIRMNR=" + baglanti.GFirma + "");
                if (oku3.Read()) { SLSMANCODE = oku3["CODE"].ToString(); } else { LBLOG.Items.Add("Cari Ticari sistemde Bulunamadı!!!"); }

                string ProjeKodu = "";
                SqlDataReader oku5 = baglanti.DataReaderAl("select CODE FROM " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_PROJECT where LOGICALREF=" + ProJectReF + "");
                if (oku5.Read())
                {
                    ProjeKodu = oku5[0].ToString();
                }






                string BelgeNo = "";
                if (KIMDEN[0] == "1") { BelgeNo = "Merkez"; }
                if (KIMDEN[0] == "2") { BelgeNo = "B2B"; }
                if (KIMDEN[0] == "4") { BelgeNo = "Satıcı"; }
                string OK = "", YK = "";
                if (VATINC[0] == "0")
                {
                    OK = "XX";
                    YK = "XX";
                }
                if (VATINC[0] == "1")
                {
                    OK = "9";
                    YK = "9";
                }


                LOBJECTKill();
                UnityApplication LogoTiger = new UnityApplication();
                LogoTiger.LogoDB("LOGODBSRV.CFG");
                LBLOG.Items.Add("1" + LogoTiger.GetLastErrorString());
                UnityObjects.Data fatura = null;
                LogoTiger.Connect();
                LBLOG.Items.Add("2" + LogoTiger.GetLastErrorString());
                if (LogoTiger.LoggedIn) LogoTiger.UserLogout();
                LogoTiger.UserLogin(LLOGOUser, LLOGOPASS);
                LBLOG.Items.Add("3" + LogoTiger.GetLastErrorString());
                if (LogoTiger.CompanyLoggedIn) LogoTiger.CompanyLogout();
                LogoTiger.CompanyLogin(Convert.ToInt32(baglanti.GFirma), 1);//firma no ,Periyot no
                LBLOG.Items.Add("4" + LogoTiger.GetLastErrorString());
                fatura = LogoTiger.NewDataObject(DataObjectType.doSalesOrderSlip);
                LBLOG.Items.Add("5" + LogoTiger.GetLastErrorString());
                this.Text = LogoTiger.GetLastErrorString();
                fatura.New();
                fatura.DataFields.FieldByName("NUMBER").Value = LFICHENO; //1 Alıcı, 2 Satıcı, 3 Alıcı-Satıcı LBLOG.Items.Add("4 Girdi");
                fatura.DataFields.FieldByName("DATE").Value = Convert.ToDateTime(SDATE[0]).ToShortDateString();
                fatura.DataFields.FieldByName("TIME").Value = LOGOTIMETOINT.ToString();

                fatura.DataFields.FieldByName("ARP_CODE").Value = GFirmaKodu;
                fatura.DataFields.FieldByName("PROJECTREF").Value = ProJectReF;
                // fatura.DataFields.FieldByName("DEPARTMENT").Value = GBolumNR;
                // fatura.DataFields.FieldByName("GL_CODE").Value = GFirmaKodu;
                fatura.DataFields.FieldByName("AUXIL_CODE").Value = OK;
                fatura.DataFields.FieldByName("AUTH_CODE").Value = YK;
                fatura.DataFields.FieldByName("DIVISION").Value = DIVISION[0];
                fatura.DataFields.FieldByName("FACTORY").Value = 2;

                fatura.DataFields.FieldByName("DOC_NUMBER").Value = BelgeNo;
                fatura.DataFields.FieldByName("CURRSEL_TOTAL").Value = 2;
                fatura.DataFields.FieldByName("CURRSEL_DETAILS").Value = 4;
                fatura.DataFields.FieldByName("TRADING_GRP").Value = TRADINGGRP[0];
                fatura.DataFields.FieldByName("SALESMAN_CODE").Value = SLSMANCODE;
                fatura.DataFields.FieldByName("DATE_CREATED").Value = DateTime.Now.Date;
                fatura.DataFields.FieldByName("HOUR_CREATED").Value = DateTime.Now.Hour;
                fatura.DataFields.FieldByName("MIN_CREATED").Value = DateTime.Now.Minute;
                fatura.DataFields.FieldByName("SEC_CREATED").Value = DateTime.Now.Second;
                fatura.DataFields.FieldByName("DATE_MODIFIED").Value = DateTime.Now.Date;
                fatura.DataFields.FieldByName("HOUR_MODIFIED").Value = DateTime.Now.Hour;
                fatura.DataFields.FieldByName("MIN_MODIFIED").Value = DateTime.Now.Minute;
                fatura.DataFields.FieldByName("SEC_MODIFIED").Value = DateTime.Now.Second;
                fatura.DataFields.FieldByName("UPD_CURR").Value = 1;
                ILines faturasatiri = fatura.DataFields.FieldByName("TRANSACTIONS").Lines;
                for (int j = 0; j < i * 8; )
                {
                    if (faturasatiri.AppendLine())
                    {
                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                        LineType = 0;
                        faturasatiri[j].FieldByName("TYPE").Value = LineType;
                        faturasatiri[j].FieldByName("MASTER_CODE").Value = UCODE[a];
                        faturasatiri[j].FieldByName("QUANTITY").Value = UMik[a].Replace(",", ".");//miktar
                        faturasatiri[j].FieldByName("PRICE").Value = UBFiyat[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("PC_PRICE").Value = CURRPRICE[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("VAT_RATE").Value = UVAT[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("PAYMENT_CODE").Value = VADESTR[a];
                        faturasatiri[j].FieldByName("PR_RATE").Value = CURRRATE[a];
                        faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                        faturasatiri[j].FieldByName("CURR_PRICE").Value = CURRID[a];
                        faturasatiri[j].FieldByName("UNIT_CODE").Value = "ADET";// LBLOG.Items.Add(CURRID[a]);
                        faturasatiri[j].FieldByName("UNIT_CONV1").Value = "1";
                        faturasatiri[j].FieldByName("UNIT_CONV2").Value = "1";
                        faturasatiri[j].FieldByName("EDT_PRICE").Value = CURRPRICE[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("EDT_CURR").Value = CURRID[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                        faturasatiri[j].FieldByName("PRCLISTCODE").Value = PRCCODE[a];
                        faturasatiri[j].FieldByName("PRCLISTTYPE").Value = 2;
                        faturasatiri[j].FieldByName("FACTORY").Value = 2;
                        faturasatiri[j].FieldByName("PR_RATE").Value = CURRRATE[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("ORDER_RESERVE").Value = UMik[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("RESERVE_AMOUNT").Value = UMik[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("ORDER_RESERVE").Value = "1";
                        faturasatiri[j].FieldByName("DUE_DATE").Value = DateTime.Now.ToShortDateString();// Convert.ToDateTime(SDATE[0]).ToShortDateString(); ;
                        faturasatiri[j].FieldByName("RESERVE_DATE").Value = DateTime.Now.ToShortDateString(); ;
                        faturasatiri[j].FieldByName("SALESMAN_CODE").Value = SLSMANCODE;
                        j++;
                        //   LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());

                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = SONFIYATORANCODE[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = 0;
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = SONFIYATORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("VAT_INCLUDED").Value = VATINC[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("TRANS_DESCRIPTION").Value = SonFiyatAck[a];
                            faturasatiri[j].FieldByName("SALESMAN_CODE").Value = SLSMANCODE;
                            j++;
                        }

                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UINDCode[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = UIND[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UINDORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("TRANS_DESCRIPTION").Value = "Genel İndirim.Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALESMAN_CODE").Value = SLSMANCODE;
                            j++;
                        }
                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UYINDCode[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = UYIND[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UYINDORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("TRANS_DESCRIPTION").Value = "Yetki Kodu İndirimi. Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALESMAN_CODE").Value = SLSMANCODE;
                            j++;
                        }
                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());

                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UKAMPORANCODE[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = 0;
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UKAMPORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("VAT_INCLUDED").Value = VATINC[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("TRANS_DESCRIPTION").Value = "Grup Kamp.. Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALESMAN_CODE").Value = SLSMANCODE;
                            j++;
                        }

                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UVINDCode[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = UVIND[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UVINDORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("VAT_INCLUDED").Value = VATINC[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("TRANS_DESCRIPTION").Value = "Vade İndirimi. Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALESMAN_CODE").Value = SLSMANCODE;
                            j++;
                        }
                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UMINDCode[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = UMIND[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UMINDORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("TRANS_DESCRIPTION").Value = "Miktar İndirimi. Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALESMAN_CODE").Value = SLSMANCODE;
                            j++;
                        }

                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());

                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UKINDCode[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = UIND[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UKINDORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("TRANS_DESCRIPTION").Value = "Kur İndirimi.Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALESMAN_CODE").Value = SLSMANCODE;
                            j++;
                        }
                        a++;
                    }



                }
                try
                {
                    if (fatura.Post())
                    {
                        //sip ata
                        LogoTiger.Disconnect();
                        string SqlStr = "select LOGICALREF FROM " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_ORFICHE where FICHENO='" + LFICHENO + "' and CANCELLED=0";
                        LBLOG.Items.Add(SqlStr);
                        SqlDataReader oku4 = baglanti.DataReaderAl(SqlStr);
                        if (oku4.Read())
                        {
                            SqlStr = "update Z_SipLine set DURUM=2,AKTARIM=" + oku4[0].ToString() + " where FICHENO='" + LFICHENO + "' ";
                            LBLOG.Items.Add(SqlStr);
                            baglanti.VeriIslemler(SqlStr);
                        }

                        //  this.Close();
                        //

                        LBLOG.Items.Add("Aktarım Tamamlandı.");

                    }
                    else
                    {
                        string result = "XML ErrorList:";
                        if (fatura.ErrorCode != 0)
                        {
                            result = fatura.ErrorCode.ToString() +
                                 fatura.ErrorDesc + fatura.DBErrorDesc;
                        }
                        else if (fatura.ValidateErrors.Count > 0)
                        {
                            for (int k = 0; k < fatura.ValidateErrors.Count; k++)
                            {
                                result += "(" + fatura.ValidateErrors[k].ID.ToString() + ") - " + fatura.ValidateErrors[k].Error;
                            }
                        }
                        LogoTiger.Disconnect();
                        //LBLOG.Items.Clear();
                        HataMesaj = LogoTiger.GetLastErrorString() + "Cari Kodu" + GFirmaKodu + " " + result;

                        Form2 frm2 = new Form2();
                        frm2.Show();
                        timer1.Enabled = false;
                        LOBJECTKill();
                        LBLOG.SelectedIndex = LBLOG.Items.Count - 1;
                    }
                }
                catch (Exception s)
                {
                    LogoTiger.Disconnect();
                    LBLOG.Items.Add(s.ToString());
                    LOBJECTKill();
                }
                finally
                {
                    LOBJECTKill();
                }

            }

            //listbox taki logları txtye aktar.
            //  StreamWriter Dosya = File.AppendText("dosya.txt");
            //Dosya.WriteLine("\n\n\n"); // Dosya.WriteLine ile dosyaya isim ve soyisim text kutularındaki değerleri aralrına bir tab boşluk bırakarak ekledik.
            //for (int i = 0; i < LBLOG.Items.Count; i++)
            //{
            //    Dosya.WriteLine(LBLOG.Items[i].Text);
            //}
            //Dosya.Close(); // Dosya yı kapattık.
            //


            GridGetir();
            // System.Windows.Forms.Application.Restart();
        }


        private void MYAktar()
        {


            StringBuilder sb = new StringBuilder(5000);
            GetPrivateProfileString("Bilgiler", "Kullanıcı", "", sb, sb.Capacity, System.Windows.Forms.Application.StartupPath + "/rafetmy.ini");
            string LLOGOUser = sb.ToString();
            sb.Clear();


            GetPrivateProfileString("Bilgiler", "Sifre", "", sb, sb.Capacity, System.Windows.Forms.Application.StartupPath + "/rafetmy.ini");
            string LLOGOPASS = sb.ToString();
            sb.Clear();




            this.Text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss") + LLOGOPASS + "-" + LLOGOUser;
            SRead = baglantiMY.DataReaderAl("select FICHENO,CLIENTREF,DURUM from Z_SipLine where DURUM=1 group by FICHENO,CLIENTREF,DURUM");
            while (SRead.Read())
            {
                long LOGOTIMETOINT = DateTime.Now.Hour * 65536 * 256 + DateTime.Now.Minute * 65536 + DateTime.Now.Second * 256;
                LBLOG.Items.Add("TİME_:" + LOGOTIMETOINT.ToString());
                string GSipId = SRead[0].ToString();
                string GClientRef = SRead[1].ToString();
                LBLOG.Items.Add(GSipId + "  İşlemi Başladı");
                string[] UCODE = new string[250];
                string[] UMik = new string[250];
                string[] URef = new string[250];
                string[] UBFiyat = new string[250];//saır miktarı kontrolü yapılırken ORFLINEDEN ALINACAK,
                string[] UVAT = new string[250];
                string[] ULAmbarId = new string[250];
                string[] UVIND = new string[250];
                string[] UVINDORAN = new string[250];
                string[] UVINDCode = new string[250];
                string[] UMIND = new string[250];
                string[] UMINDORAN = new string[250];
                string[] UMINDCode = new string[250];
                string[] UIND = new string[250];
                string[] UINDORAN = new string[250];
                string[] UINDCode = new string[250];
                string[] UYIND = new string[250];
                string[] UYINDORAN = new string[250];
                string[] UYINDCode = new string[250];
                string[] SDATE = new string[250];
                string[] VADESTR = new string[250];
                string[] MIKSTR = new string[250];
                string[] CURRID = new string[250];
                string[] CURRRATE = new string[250];
                string[] CURRPRICE = new string[250];
                string[] TRADINGGRP = new string[250];
                string[] DIVISION = new string[250];
                string[] VATINC = new string[250];
                string[] KIMDEN = new string[250];
                double[] INDORANTOP = new double[250];
                string[] STOCKREF = new string[250];
                string[] PRCCODE = new string[250];
                string GFirmaKodu = "", CLIENTREF = "", LFICHENO = "", SLSMANCODE = "", CSPECODE = "", ProJectReF = "0";
                int LineType = 0;
                string[] UKIND = new string[250];
                string[] UKINDORAN = new string[250];
                string[] UKAMPORAN = new string[250];
                string[] UKAMPORANCODE = new string[250];
                string[] SONFIYAT = new string[250];
                string[] SONFIYATORAN = new string[250];
                string[] SONFIYATORANCODE = new string[250];
                string[] UKINDCode = new string[250];
                string[] SonFiyatAck = new string[250];
                // LFICHENO = GSipId;
                int i = 0, a = 0;
                SqlDataReader oku = baglantiMY.DataReaderAl("SELECT KURINDORAN,KIMDEN,TRADINGGRP,DIVISION,VATINC,[LOGICALREF],[SIPID],[FICHENO],[DATE_],[STOCKREF],[STOCKCODE],[STOCKNAME],[AMOUNT],[PRICE],[GENELIORAN],[VADORAN],[MIKORAN],ROUND(isnull((PRICE*(GENELIORAN/100)*AMOUNT),0),2) AS[GENELITUTAR],ROUND(isnull((PRICE*(VADORAN/100)*AMOUNT),0),2) AS [VADTUTAR],ROUND(isnull((PRICE*(MIKORAN/100)*AMOUNT),0),2) AS [MIKTUTAR],[LINEEXP],(AMOUNT*PRICE)AS SATIRTOP,ROUND(isnull((PRICE*(YINDORAN/100)*AMOUNT),0),2)as YINDTUTAR,[YINDORAN],CLIENTREF ,VAT,VADESTR,MIKSTR,CURRID,isnull(CURRRATE,1) as CURRRATE,LISTFIYAT,isnull(KAMPORAN,0) as KAMPORAN,isnull(SONFIYAT,0) as SONFIYAT,isnull(SONFIYATORAN,0) as SONFIYATORAN  FROM [LOGOKAMP_MY].[dbo].[Z_SipLine] where LOGICALREF>0  and Durum<>4 and  FICHENO='" + GSipId + "' and CLIENTREF=" + GClientRef + "  ");
                while (oku.Read())
                {
                    KIMDEN[i] = oku["KIMDEN"].ToString();
                    TRADINGGRP[i] = oku["TRADINGGRP"].ToString();
                    DIVISION[i] = oku["DIVISION"].ToString();
                    VATINC[i] = oku["VATINC"].ToString();
                    LFICHENO = oku["FICHENO"].ToString();
                    UCODE[i] = oku["STOCKCODE"].ToString();
                    STOCKREF[i] = oku["STOCKREF"].ToString();
                    UMik[i] = oku["AMOUNT"].ToString();
                    UBFiyat[i] = (Convert.ToDouble(oku["LISTFIYAT"].ToString()) * Convert.ToDouble(oku["CURRRATE"].ToString())).ToString();
                    CURRPRICE[i] = oku["LISTFIYAT"].ToString();
                    UVAT[i] = oku["VAT"].ToString();
                    UVIND[i] = oku["VADTUTAR"].ToString();
                    UVINDORAN[i] = oku["VADORAN"].ToString();
                    UMIND[i] = oku["MIKTUTAR"].ToString();
                    UMINDORAN[i] = oku["MIKORAN"].ToString();
                    UIND[i] = oku["GENELITUTAR"].ToString();
                    UINDORAN[i] = oku["GENELIORAN"].ToString();
                    UYIND[i] = oku["YINDTUTAR"].ToString();
                    UYINDORAN[i] = oku["YINDORAN"].ToString();
                    CLIENTREF = oku["CLIENTREF"].ToString();
                    SDATE[i] = oku["DATE_"].ToString();
                    VADESTR[i] = oku["VADESTR"].ToString(); if (VADESTR[i] == "CC") { VADESTR[i] = "60"; }
                    MIKSTR[i] = oku["MIKSTR"].ToString();
                    CURRID[i] = oku["CURRID"].ToString();
                    CURRRATE[i] = oku["CURRRATE"].ToString();
                    UKINDORAN[i] = oku["KURINDORAN"].ToString();
                    //  UKIND[i] = oku["GENELITUTAR"].ToString();
                    //kampanya oranı hesaplaması
                    UKAMPORAN[i] = oku["KAMPORAN"].ToString();
                    //sonfiyat hesaplaması var ise fiyata uygun oran çıkarıp onu genel kampanya olarak yazdır.
                    SONFIYATORAN[i] = oku["SONFIYATORAN"].ToString();
                    SONFIYAT[i] = oku["SONFIYAT"].ToString();
                    if (Convert.ToDecimal(SONFIYAT[i]) > 0)
                    {
                        SonFiyatAck[i] = "Son Fiyat Genel=" + UINDORAN[i] + " V=" + UVINDORAN[i] + " M=" + UMINDORAN[i] + " Y=" + UYINDORAN[i];
                        UINDORAN[i] = "00";
                        UVINDORAN[i] = "00";
                        UMINDORAN[i] = "00";
                        UYINDORAN[i] = "00";
                        UIND[i] = "0";
                        UVIND[i] = "0";
                        UMIND[i] = "0";
                        UYIND[i] = "0";
                        UKAMPORAN[i] = "00";
                    }

                    INDORANTOP[i] = 100 - (100 * ((100 - Convert.ToDouble(UVINDORAN[i])) / 100) * ((100 - Convert.ToDouble(UMINDORAN[i])) / 100) * ((100 - Convert.ToDouble(UINDORAN[i])) / 100) * ((100 - Convert.ToDouble(UYINDORAN[i])) / 100) * ((100 - Convert.ToDouble(UKAMPORAN[i])) / 100));

                    UVINDCode[i] = UVINDORAN[i]; if (UVINDCode[i].Length == 4) { UVINDCode[i] = "0" + UVINDCode[i].Substring(0, 1); } if (UVINDCode[i].Length == 5) { UVINDCode[i] = UVINDCode[i].Substring(0, 2); }
                    UMINDCode[i] = UMINDORAN[i]; if (UMINDCode[i].Length == 4) { UMINDCode[i] = "0" + UMINDCode[i].Substring(0, 1); } if (UMINDCode[i].Length == 5) { UMINDCode[i] = UMINDCode[i].Substring(0, 2); }
                    UINDCode[i] = UINDORAN[i]; if (UINDCode[i].Length == 4) { UINDCode[i] = "0" + UINDCode[i].Substring(0, 1); } if (UINDCode[i].Length == 5) { UINDCode[i] = UINDCode[i].Substring(0, 2); }
                    UYINDCode[i] = UYINDORAN[i]; if (UYINDCode[i].Length == 4) { UYINDCode[i] = "0" + UYINDCode[i].Substring(0, 1); } if (UYINDCode[i].Length == 5) { UYINDCode[i] = UYINDCode[i].Substring(0, 2); }
                    UKINDCode[i] = UKINDORAN[i]; if (UKINDCode[i].Length == 4) { UKINDCode[i] = "0" + UKINDCode[i].Substring(0, 1); } if (UKINDCode[i].Length == 5) { UKINDCode[i] = UKINDCode[i].Substring(0, 2); }
                    UKAMPORANCODE[i] = UKAMPORAN[i]; if (UKAMPORANCODE[i].Length == 4) { UKAMPORANCODE[i] = "0" + UKAMPORANCODE[i].Substring(0, 1); } if (UKAMPORANCODE[i].Length == 5) { UKAMPORANCODE[i] = UKAMPORANCODE[i].Substring(0, 2); }
                    SONFIYATORANCODE[i] = SONFIYATORAN[i]; if (SONFIYATORANCODE[i].Length == 4) { SONFIYATORANCODE[i] = "0" + SONFIYATORANCODE[i].Substring(0, 1); } if (SONFIYATORANCODE[i].Length == 5) { SONFIYATORANCODE[i] = SONFIYATORANCODE[i].Substring(0, 2); }

                    //fiyat referansı al
                    SqlDataReader dtrd = baglantiMY.DataReaderAl("select LOGICALREF,CODE from " + baglantiMY.INITIAL2 + "..LG_" + baglantiMY.GFirma + "_PRCLIST where BEGDATE<='" + DateTime.Now.ToString("MM/dd/yyyy") + "' and ENDDATE>='" + DateTime.Now.ToString("MM/dd/yyyy") + "' and CARDREF=" + STOCKREF[i] + " and PTYPE=2 ");
                    if (dtrd.Read())
                    {
                        PRCCODE[i] = dtrd["CODE"].ToString();
                    }
                    //


                    i++;
                }
                if (i == 0) { LBLOG.Items.Add("Şartları Sağlayan Kayıtlar Bulunamadı!!!"); }
                SqlDataReader oku2 = baglantiMY.DataReaderAl("select CODE,SPECODE,PROJECTREF FROM " + baglantiMY.INITIAL2 + "..LG_" + baglantiMY.GFirma + "_CLCARD where LOGICALREF=" + CLIENTREF + "");
                if (oku2.Read()) { GFirmaKodu = oku2["CODE"].ToString(); CSPECODE = oku2["SPECODE"].ToString(); ProJectReF = oku2["PROJECTREF"].ToString(); } else { LBLOG.Items.Add("Cari Ticari sistemde Bulunamadı!!!"); return; }
                SqlDataReader oku3 = baglantiMY.DataReaderAl("select CODE FROM " + baglantiMY.INITIAL2 + "..LG_SLSMAN where CODE like '%" + CSPECODE + "%' and FIRMNR=" + baglantiMY.GFirma + "");
                if (oku3.Read()) { SLSMANCODE = oku3["CODE"].ToString(); } else { LBLOG.Items.Add("Cari Ticari sistemde Bulunamadı!!!"); }

                string ProjeKodu = "";
                SqlDataReader oku5 = baglantiMY.DataReaderAl("select CODE FROM " + baglantiMY.INITIAL2 + "..LG_" + baglantiMY.GFirma + "_PROJECT where LOGICALREF=" + ProJectReF + "");
                if (oku5.Read())
                {
                    ProjeKodu = oku5[0].ToString();
                }






                string BelgeNo = "";
                if (KIMDEN[0] == "1") { BelgeNo = "Merkez"; }
                if (KIMDEN[0] == "2") { BelgeNo = "B2B"; }
                if (KIMDEN[0] == "4") { BelgeNo = "Satıcı"; }
                string OK = "", YK = "";
                if (VATINC[0] == "0")
                {
                    OK = "XX";
                    YK = "XX";
                }
                if (VATINC[0] == "1")
                {
                    OK = "9";
                    YK = "9";
                }


                LOBJECTKill();
                UnityApplication LogoTiger = new UnityApplication();
                LogoTiger.LogoDB("MY.CFG");
                LBLOG.Items.Add("1" + LogoTiger.GetLastErrorString());
                UnityObjects.Data fatura = null;
                LogoTiger.Connect();
                LBLOG.Items.Add("2" + LogoTiger.GetLastErrorString());
                if (LogoTiger.LoggedIn) LogoTiger.UserLogout();
                LogoTiger.UserLogin(LLOGOUser, LLOGOPASS);
                LBLOG.Items.Add("3" + LogoTiger.GetLastErrorString());
                if (LogoTiger.CompanyLoggedIn) LogoTiger.CompanyLogout();
                LogoTiger.CompanyLogin(Convert.ToInt32(baglantiMY.GFirma), 1);//firma no ,Periyot no
                LBLOG.Items.Add("4" + LogoTiger.GetLastErrorString());
                fatura = LogoTiger.NewDataObject(DataObjectType.doSalesOrderSlip);
                LBLOG.Items.Add("5" + LogoTiger.GetLastErrorString());
                this.Text = LogoTiger.GetLastErrorString();
                fatura.New();
                fatura.DataFields.FieldByName("NUMBER").Value = LFICHENO; //1 Alıcı, 2 Satıcı, 3 Alıcı-Satıcı LBLOG.Items.Add("4 Girdi");
                fatura.DataFields.FieldByName("DATE").Value = Convert.ToDateTime(SDATE[0]).ToShortDateString();
                fatura.DataFields.FieldByName("TIME").Value = LOGOTIMETOINT.ToString();

                fatura.DataFields.FieldByName("ARP_CODE").Value = GFirmaKodu;
                fatura.DataFields.FieldByName("PROJECTREF").Value = ProJectReF;
                // fatura.DataFields.FieldByName("DEPARTMENT").Value = GBolumNR;
                // fatura.DataFields.FieldByName("GL_CODE").Value = GFirmaKodu;
                fatura.DataFields.FieldByName("AUXIL_CODE").Value = OK;
                fatura.DataFields.FieldByName("AUTH_CODE").Value = YK;
                fatura.DataFields.FieldByName("DIVISION").Value = DIVISION[0];
                fatura.DataFields.FieldByName("FACTORY").Value = 2;

                fatura.DataFields.FieldByName("DOC_NUMBER").Value = BelgeNo;
                fatura.DataFields.FieldByName("CURRSEL_TOTAL").Value = 2;
                fatura.DataFields.FieldByName("CURRSEL_DETAILS").Value = 4;
                fatura.DataFields.FieldByName("TRADING_GRP").Value = TRADINGGRP[0];
                fatura.DataFields.FieldByName("SALESMAN_CODE").Value = SLSMANCODE;
                fatura.DataFields.FieldByName("DATE_CREATED").Value = DateTime.Now.Date;
                fatura.DataFields.FieldByName("HOUR_CREATED").Value = DateTime.Now.Hour;
                fatura.DataFields.FieldByName("MIN_CREATED").Value = DateTime.Now.Minute;
                fatura.DataFields.FieldByName("SEC_CREATED").Value = DateTime.Now.Second;
                fatura.DataFields.FieldByName("DATE_MODIFIED").Value = DateTime.Now.Date;
                fatura.DataFields.FieldByName("HOUR_MODIFIED").Value = DateTime.Now.Hour;
                fatura.DataFields.FieldByName("MIN_MODIFIED").Value = DateTime.Now.Minute;
                fatura.DataFields.FieldByName("SEC_MODIFIED").Value = DateTime.Now.Second;
                fatura.DataFields.FieldByName("UPD_CURR").Value = 1;
                ILines faturasatiri = fatura.DataFields.FieldByName("TRANSACTIONS").Lines;
                for (int j = 0; j < i * 8; )
                {
                    if (faturasatiri.AppendLine())
                    {
                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                        LineType = 0;
                        faturasatiri[j].FieldByName("TYPE").Value = LineType;
                        faturasatiri[j].FieldByName("MASTER_CODE").Value = UCODE[a];
                        faturasatiri[j].FieldByName("QUANTITY").Value = UMik[a].Replace(",", ".");//miktar
                        faturasatiri[j].FieldByName("PRICE").Value = UBFiyat[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("PC_PRICE").Value = CURRPRICE[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("VAT_RATE").Value = UVAT[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("PAYMENT_CODE").Value = VADESTR[a];
                        faturasatiri[j].FieldByName("PR_RATE").Value = CURRRATE[a];
                        faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                        faturasatiri[j].FieldByName("CURR_PRICE").Value = CURRID[a];
                        faturasatiri[j].FieldByName("UNIT_CODE").Value = "ADET";// LBLOG.Items.Add(CURRID[a]);
                        faturasatiri[j].FieldByName("UNIT_CONV1").Value = "1";
                        faturasatiri[j].FieldByName("UNIT_CONV2").Value = "1";
                        faturasatiri[j].FieldByName("EDT_PRICE").Value = CURRPRICE[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("EDT_CURR").Value = CURRID[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                        faturasatiri[j].FieldByName("PRCLISTCODE").Value = PRCCODE[a];
                        faturasatiri[j].FieldByName("PRCLISTTYPE").Value = 2;
                        faturasatiri[j].FieldByName("FACTORY").Value = 2;
                        faturasatiri[j].FieldByName("PR_RATE").Value = CURRRATE[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("ORDER_RESERVE").Value = UMik[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("RESERVE_AMOUNT").Value = UMik[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("ORDER_RESERVE").Value = "1";
                        faturasatiri[j].FieldByName("DUE_DATE").Value = DateTime.Now.ToShortDateString();// Convert.ToDateTime(SDATE[0]).ToShortDateString(); ;
                        faturasatiri[j].FieldByName("RESERVE_DATE").Value = DateTime.Now.ToShortDateString(); ;
                        faturasatiri[j].FieldByName("SALESMAN_CODE").Value = SLSMANCODE;
                        j++;
                        //   LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());

                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = SONFIYATORANCODE[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = 0;
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = SONFIYATORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("VAT_INCLUDED").Value = VATINC[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("TRANS_DESCRIPTION").Value = SonFiyatAck[a];
                            faturasatiri[j].FieldByName("SALESMAN_CODE").Value = SLSMANCODE;
                            j++;
                        }

                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UINDCode[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = UIND[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UINDORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("TRANS_DESCRIPTION").Value = "Genel İndirim.Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALESMAN_CODE").Value = SLSMANCODE;
                            j++;
                        }
                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UYINDCode[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = UYIND[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UYINDORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("TRANS_DESCRIPTION").Value = "Yetki Kodu İndirimi. Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALESMAN_CODE").Value = SLSMANCODE;
                            j++;
                        }
                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());

                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UKAMPORANCODE[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = 0;
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UKAMPORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("VAT_INCLUDED").Value = VATINC[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("TRANS_DESCRIPTION").Value = "Grup Kamp.. Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALESMAN_CODE").Value = SLSMANCODE;
                            j++;
                        }

                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UVINDCode[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = UVIND[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UVINDORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("VAT_INCLUDED").Value = VATINC[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("TRANS_DESCRIPTION").Value = "Vade İndirimi. Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALESMAN_CODE").Value = SLSMANCODE;
                            j++;
                        }
                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UMINDCode[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = UMIND[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UMINDORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("TRANS_DESCRIPTION").Value = "Miktar İndirimi. Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALESMAN_CODE").Value = SLSMANCODE;
                            j++;
                        }

                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());

                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UKINDCode[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = UIND[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UKINDORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("TRANS_DESCRIPTION").Value = "Kur İndirimi.Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALESMAN_CODE").Value = SLSMANCODE;
                            j++;
                        }
                        a++;
                    }



                }
                try
                {
                    if (fatura.Post())
                    {
                        //sip ata
                        LogoTiger.Disconnect();
                        string SqlStr = "select LOGICALREF FROM " + baglantiMY.INITIAL2 + "..LG_" + baglantiMY.GFirma + "_" + baglantiMY.GDONEM + "_ORFICHE where FICHENO='" + LFICHENO + "' and CANCELLED=0";
                        LBLOG.Items.Add(SqlStr);
                        SqlDataReader oku4 = baglantiMY.DataReaderAl(SqlStr);
                        if (oku4.Read())
                        {
                            SqlStr = "update Z_SipLine set DURUM=2,AKTARIM=" + oku4[0].ToString() + " where FICHENO='" + LFICHENO + "' ";
                            LBLOG.Items.Add(SqlStr);
                            baglantiMY.VeriIslemler(SqlStr);
                        }

                        //  this.Close();
                        //

                        LBLOG.Items.Add("Aktarım Tamamlandı.");

                    }
                    else
                    {
                        string result = "XML ErrorList:";
                        if (fatura.ErrorCode != 0)
                        {
                            result = fatura.ErrorCode.ToString() +
                                 fatura.ErrorDesc + fatura.DBErrorDesc;
                        }
                        else if (fatura.ValidateErrors.Count > 0)
                        {
                            for (int k = 0; k < fatura.ValidateErrors.Count; k++)
                            {
                                result += "(" + fatura.ValidateErrors[k].ID.ToString() + ") - " + fatura.ValidateErrors[k].Error;
                            }
                        }
                        LogoTiger.Disconnect();
                        //LBLOG.Items.Clear();
                        HataMesaj = LogoTiger.GetLastErrorString() + "Cari Kodu" + GFirmaKodu + " " + result;

                        Form2 frm2 = new Form2();
                        frm2.Show();
                        timer1.Enabled = false;
                        LOBJECTKill();
                        LBLOG.SelectedIndex = LBLOG.Items.Count - 1;
                    }
                }
                catch (Exception s)
                {
                    LogoTiger.Disconnect();
                    LBLOG.Items.Add(s.ToString());
                    LOBJECTKill();
                }
                finally
                {
                    LOBJECTKill();
                }

            }

            //listbox taki logları txtye aktar.
            //  StreamWriter Dosya = File.AppendText("dosya.txt");
            //Dosya.WriteLine("\n\n\n"); // Dosya.WriteLine ile dosyaya isim ve soyisim text kutularındaki değerleri aralrına bir tab boşluk bırakarak ekledik.
            //for (int i = 0; i < LBLOG.Items.Count; i++)
            //{
            //    Dosya.WriteLine(LBLOG.Items[i].Text);
            //}
            //Dosya.Close(); // Dosya yı kapattık.
            //


            GridGetir();
            // System.Windows.Forms.Application.Restart();
        }


        private void SatisIrsaliyeAktar()
        {


            StringBuilder sb = new StringBuilder(5000);
            GetPrivateProfileString("Bilgiler", "Kullanıcı", "", sb, sb.Capacity, System.Windows.Forms.Application.StartupPath + "/rafet.ini");
            string LLOGOUser = sb.ToString();
            sb.Clear();


            GetPrivateProfileString("Bilgiler", "Sifre", "", sb, sb.Capacity, System.Windows.Forms.Application.StartupPath + "/rafet.ini");
            string LLOGOPASS = sb.ToString();
            sb.Clear();




            this.Text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss") + LLOGOPASS + "-" + LLOGOUser;
            SRead = baglanti.DataReaderAl("select FICHENO,CLIENTREF,DURUM from Z_SipLine where DURUM=3 group by FICHENO,CLIENTREF,DURUM");
            while (SRead.Read())
            {
                long LOGOTIMETOINT = DateTime.Now.Hour * 65536 * 256 + DateTime.Now.Minute * 65536 + DateTime.Now.Second * 256;
                LBLOG.Items.Add("TİME_:" + LOGOTIMETOINT.ToString());
                string GSipId = SRead[0].ToString();
                string GClientRef = SRead[1].ToString();
                LBLOG.Items.Add(GSipId + "  İşlemi Başladı");
                string[] UCODE = new string[250];
                string[] UMik = new string[250];
                string[] URef = new string[250];
                string[] UBFiyat = new string[250];//saır miktarı kontrolü yapılırken ORFLINEDEN ALINACAK,
                string[] UVAT = new string[250];
                string[] ULAmbarId = new string[250];
                string[] UVIND = new string[250];
                string[] UVINDORAN = new string[250];
                string[] UVINDCode = new string[250];
                string[] UMIND = new string[250];
                string[] UMINDORAN = new string[250];
                string[] UMINDCode = new string[250];
                string[] UIND = new string[250];
                string[] UINDORAN = new string[250];
                string[] UINDCode = new string[250];
                string[] UYIND = new string[250];
                string[] UYINDORAN = new string[250];
                string[] UYINDCode = new string[250];
                string[] SDATE = new string[250];
                string[] VADESTR = new string[250];
                string[] MIKSTR = new string[250];
                string[] CURRID = new string[250];
                string[] CURRRATE = new string[250];
                string[] CURRPRICE = new string[250];
                string[] TRADINGGRP = new string[250];
                string[] DIVISION = new string[250];
                string[] VATINC = new string[250];
                string[] KIMDEN = new string[250];
                double[] INDORANTOP = new double[250];
                string[] STOCKREF = new string[250];
                string[] PRCCODE = new string[250];
                string GFirmaKodu = "", CLIENTREF = "", LFICHENO = "", SLSMANCODE = "", CSPECODE = "", ProJectReF = "0";
                int LineType = 0;
                string[] UKIND = new string[250];
                string[] UKINDORAN = new string[250];
                string[] UKINDCode = new string[250];
                // LFICHENO = GSipId;
                int i = 0, a = 0;
                SqlDataReader oku = baglanti.DataReaderAl("SELECT KURINDORAN,KIMDEN,TRADINGGRP,DIVISION,VATINC,[LOGICALREF],[SIPID],[FICHENO],[DATE_],[STOCKREF],[STOCKCODE],[STOCKNAME],[AMOUNT],[PRICE],[GENELIORAN],[VADORAN],[MIKORAN],ROUND(isnull((PRICE*(GENELIORAN/100)*AMOUNT),0),2) AS[GENELITUTAR],ROUND(isnull((PRICE*(VADORAN/100)*AMOUNT),0),2) AS [VADTUTAR],ROUND(isnull((PRICE*(MIKORAN/100)*AMOUNT),0),2) AS [MIKTUTAR],[LINEEXP],(AMOUNT*PRICE)AS SATIRTOP,ROUND(isnull((PRICE*(YINDORAN/100)*AMOUNT),0),2)as YINDTUTAR,[YINDORAN],CLIENTREF ,VAT,VADESTR,MIKSTR,CURRID,isnull(CURRRATE,1) as CURRRATE,LISTFIYAT  FROM [LOGOKAMP].[dbo].[Z_SipLine] where LOGICALREF>0  and Durum=3 and  FICHENO='" + GSipId + "' and CLIENTREF=" + GClientRef + "  ");
                while (oku.Read())
                {
                    KIMDEN[i] = oku["KIMDEN"].ToString();
                    TRADINGGRP[i] = oku["TRADINGGRP"].ToString();
                    DIVISION[i] = oku["DIVISION"].ToString();
                    VATINC[i] = oku["VATINC"].ToString();
                    LFICHENO = oku["FICHENO"].ToString();
                    UCODE[i] = oku["STOCKCODE"].ToString();
                    STOCKREF[i] = oku["STOCKREF"].ToString();
                    UMik[i] = oku["AMOUNT"].ToString();
                    UBFiyat[i] = (Convert.ToDouble(oku["LISTFIYAT"].ToString()) * Convert.ToDouble(oku["CURRRATE"].ToString())).ToString();
                    CURRPRICE[i] = oku["LISTFIYAT"].ToString();
                    UVAT[i] = oku["VAT"].ToString();
                    UVIND[i] = oku["VADTUTAR"].ToString();
                    UVINDORAN[i] = oku["VADORAN"].ToString();
                    UMIND[i] = oku["MIKTUTAR"].ToString();
                    UMINDORAN[i] = oku["MIKORAN"].ToString();
                    UIND[i] = oku["GENELITUTAR"].ToString();
                    UINDORAN[i] = oku["GENELIORAN"].ToString();
                    UYIND[i] = oku["YINDTUTAR"].ToString();
                    UYINDORAN[i] = oku["YINDORAN"].ToString();
                    CLIENTREF = oku["CLIENTREF"].ToString();
                    SDATE[i] = oku["DATE_"].ToString();
                    VADESTR[i] = oku["VADESTR"].ToString(); if (VADESTR[i] == "CC") { VADESTR[i] = ""; }
                    MIKSTR[i] = oku["MIKSTR"].ToString();
                    CURRID[i] = oku["CURRID"].ToString();
                    CURRRATE[i] = oku["CURRRATE"].ToString();
                    UKINDORAN[i] = oku["KURINDORAN"].ToString();
                    //  UKIND[i] = oku["GENELITUTAR"].ToString();
                    INDORANTOP[i] = 100 - (100 * ((100 - Convert.ToDouble(UVINDORAN[i])) / 100) * ((100 - Convert.ToDouble(UMINDORAN[i])) / 100) * ((100 - Convert.ToDouble(UINDORAN[i])) / 100) * ((100 - Convert.ToDouble(UYINDORAN[i])) / 100));

                    UVINDCode[i] = UVINDORAN[i]; if (UVINDCode[i].Length == 4) { UVINDCode[i] = "0" + UVINDCode[i].Substring(0, 1); } if (UVINDCode[i].Length == 5) { UVINDCode[i] = UVINDCode[i].Substring(0, 2); }
                    UMINDCode[i] = UMINDORAN[i]; if (UMINDCode[i].Length == 4) { UMINDCode[i] = "0" + UMINDCode[i].Substring(0, 1); } if (UMINDCode[i].Length == 5) { UMINDCode[i] = UMINDCode[i].Substring(0, 2); }
                    UINDCode[i] = UINDORAN[i]; if (UINDCode[i].Length == 4) { UINDCode[i] = "0" + UINDCode[i].Substring(0, 1); } if (UINDCode[i].Length == 5) { UINDCode[i] = UINDCode[i].Substring(0, 2); }
                    UYINDCode[i] = UYINDORAN[i]; if (UYINDCode[i].Length == 4) { UYINDCode[i] = "0" + UYINDCode[i].Substring(0, 1); } if (UYINDCode[i].Length == 5) { UYINDCode[i] = UYINDCode[i].Substring(0, 2); }
                    UKINDCode[i] = UKINDORAN[i]; if (UKINDCode[i].Length == 4) { UKINDCode[i] = "0" + UKINDCode[i].Substring(0, 1); } if (UKINDCode[i].Length == 5) { UKINDCode[i] = UKINDCode[i].Substring(0, 2); }

                    //fiyat referansı al
                    SqlDataReader dtrd = baglanti.DataReaderAl("select LOGICALREF,CODE from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_PRCLIST where BEGDATE<='" + DateTime.Now.ToString("MM/dd/yyyy") + "' and ENDDATE>='" + DateTime.Now.ToString("MM/dd/yyyy") + "' and CARDREF=" + STOCKREF[i] + " and PTYPE=2 ");
                    if (dtrd.Read())
                    {
                        PRCCODE[i] = dtrd["CODE"].ToString();
                    }
                    //


                    i++;
                }
                if (i == 0) { LBLOG.Items.Add("Şartları Sağlayan Kayıtlar Bulunamadı!!!"); }
                SqlDataReader oku2 = baglanti.DataReaderAl("select CODE,SPECODE,PROJECTREF FROM " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CLCARD where LOGICALREF=" + CLIENTREF + "");
                if (oku2.Read()) { GFirmaKodu = oku2["CODE"].ToString(); CSPECODE = oku2["SPECODE"].ToString(); ProJectReF = oku2["PROJECTREF"].ToString(); } else { LBLOG.Items.Add("Cari Ticari sistemde Bulunamadı!!!"); return; }
                SqlDataReader oku3 = baglanti.DataReaderAl("select CODE FROM " + baglanti.INITIAL2 + "..LG_SLSMAN where CODE like '%" + CSPECODE + "%' and FIRMNR=" + baglanti.GFirma + "");
                if (oku3.Read()) { SLSMANCODE = oku3["CODE"].ToString(); } else { LBLOG.Items.Add("Cari Ticari sistemde Bulunamadı!!!"); }

                string ProjeKodu = "";
                SqlDataReader oku5 = baglanti.DataReaderAl("select CODE FROM " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_PROJECT where LOGICALREF=" + ProJectReF + "");
                if (oku5.Read())
                {
                    ProjeKodu = oku5[0].ToString();
                }






                string BelgeNo = "";
                if (KIMDEN[0] == "1") { BelgeNo = "Merkez"; }
                if (KIMDEN[0] == "2") { BelgeNo = "B2B"; }
                if (KIMDEN[0] == "4") { BelgeNo = "Satıcı"; }
                string OK = "", YK = "";
                if (VATINC[0] == "0")
                {
                    OK = "XX";
                    YK = "XX";
                }
                if (VATINC[0] == "1")
                {
                    OK = "9";
                    YK = "9";
                }


                LOBJECTKill();
                UnityApplication LogoTiger = new UnityApplication();
                LogoTiger.LogoDB("LOGODBSRV.CFG");
                LBLOG.Items.Add("1" + LogoTiger.GetLastErrorString());
                UnityObjects.Data fatura = null;
                LogoTiger.Connect();
                LBLOG.Items.Add("2" + LogoTiger.GetLastErrorString());
                if (LogoTiger.LoggedIn) LogoTiger.UserLogout();
                LogoTiger.UserLogin(LLOGOUser, LLOGOPASS);
                LBLOG.Items.Add("3" + LogoTiger.GetLastErrorString());
                if (LogoTiger.CompanyLoggedIn) LogoTiger.CompanyLogout();
                LogoTiger.CompanyLogin(Convert.ToInt32(baglanti.GFirma), 1);//firma no ,Periyot no
                LBLOG.Items.Add("4" + LogoTiger.GetLastErrorString());
                fatura = LogoTiger.NewDataObject(DataObjectType.doSalesDispatch);
                LBLOG.Items.Add("5" + LogoTiger.GetLastErrorString());
                this.Text = LogoTiger.GetLastErrorString();
                fatura.New();
                fatura.DataFields.FieldByName("TYPE").Value = "8";
                fatura.DataFields.FieldByName("NUMBER").Value = LFICHENO; //1 Alıcı, 2 Satıcı, 3 Alıcı-Satıcı LBLOG.Items.Add("4 Girdi");
                fatura.DataFields.FieldByName("DATE").Value = Convert.ToDateTime(SDATE[0]).ToShortDateString();
                fatura.DataFields.FieldByName("TIME").Value = LOGOTIMETOINT.ToString();

                fatura.DataFields.FieldByName("ARP_CODE").Value = GFirmaKodu;
                fatura.DataFields.FieldByName("PROJECTREF").Value = ProJectReF;
                // fatura.DataFields.FieldByName("DEPARTMENT").Value = GBolumNR;
                // fatura.DataFields.FieldByName("GL_CODE").Value = GFirmaKodu;
                fatura.DataFields.FieldByName("AUXIL_CODE").Value = OK;
                fatura.DataFields.FieldByName("AUTH_CODE").Value = YK;
                fatura.DataFields.FieldByName("DIVISION").Value = DIVISION[0];
                fatura.DataFields.FieldByName("FACTORY").Value = 2;
                fatura.DataFields.FieldByName("SOURCE_WH").Value = (CLIENTREF == "40111" || CLIENTREF == "40110") ? 1 : 0;               
                fatura.DataFields.FieldByName("DOC_NUMBER").Value = BelgeNo;
                fatura.DataFields.FieldByName("CURRSEL_TOTALS").Value = 2;
                fatura.DataFields.FieldByName("CURRSEL_DETAILS").Value = 4;
                fatura.DataFields.FieldByName("TRADING_GRP").Value = TRADINGGRP[0];
                fatura.DataFields.FieldByName("SALESMANCODE").Value = SLSMANCODE;
                fatura.DataFields.FieldByName("DATE_CREATED").Value = DateTime.Now.Date;
                fatura.DataFields.FieldByName("HOUR_CREATED").Value = DateTime.Now.Hour;
                fatura.DataFields.FieldByName("MIN_CREATED").Value = DateTime.Now.Minute;
                fatura.DataFields.FieldByName("SEC_CREATED").Value = DateTime.Now.Second;
                fatura.DataFields.FieldByName("DATE_MODIFIED").Value = DateTime.Now.Date;
                fatura.DataFields.FieldByName("HOUR_MODIFIED").Value = DateTime.Now.Hour;
                fatura.DataFields.FieldByName("MIN_MODIFIED").Value = DateTime.Now.Minute;
                fatura.DataFields.FieldByName("SEC_MODIFIED").Value = DateTime.Now.Second;
                // fatura.DataFields.FieldByName("UPD_CURR").Value = 1;
                fatura.DataFields.FieldByName("PAYMENT_CODE").Value = "60";
                ILines faturasatiri = fatura.DataFields.FieldByName("TRANSACTIONS").Lines;
                for (int j = 0; j < i * 6; )
                {
                    if (faturasatiri.AppendLine())
                    {
                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                        LineType = 0;
                        faturasatiri[j].FieldByName("TYPE").Value = LineType;
                        faturasatiri[j].FieldByName("MASTER_CODE").Value = UCODE[a];
                        faturasatiri[j].FieldByName("DISCEXP_CALC").Value = "2";
                        faturasatiri[j].FieldByName("QUANTITY").Value = UMik[a].Replace(",", ".");//miktar
                        faturasatiri[j].FieldByName("PRICE").Value = UBFiyat[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("PC_PRICE").Value = CURRPRICE[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("VAT_RATE").Value = UVAT[a].Replace(",", ".");
                        //faturasatiri[j].FieldByName("PAYMENT_CODE").Value = VADESTR[a];
                        faturasatiri[j].FieldByName("PR_RATE").Value = CURRRATE[a];
                        faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                        faturasatiri[j].FieldByName("CURR_PRICE").Value = CURRID[a];
                        faturasatiri[j].FieldByName("UNIT_CODE").Value = "ADET";// LBLOG.Items.Add(CURRID[a]);
                        faturasatiri[j].FieldByName("UNIT_CONV1").Value = "1";
                        faturasatiri[j].FieldByName("UNIT_CONV2").Value = "1";
                        faturasatiri[j].FieldByName("EDT_PRICE").Value = CURRPRICE[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("EDT_CURR").Value = CURRID[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                        faturasatiri[j].FieldByName("PRCLISTCODE").Value = PRCCODE[a];
                        faturasatiri[j].FieldByName("PRCLISTTYPE").Value = 2;
                        // faturasatiri[j].FieldByName("FACTORY").Value = 2;
                        faturasatiri[j].FieldByName("PR_RATE").Value = CURRRATE[a].Replace(",", ".");
                        //  faturasatiri[j].FieldByName("ORDER_RESERVE").Value = UMik[a].Replace(",", ".");
                        // faturasatiri[j].FieldByName("RESERVE_AMOUNT").Value = UMik[a].Replace(",", ".");
                        // faturasatiri[j].FieldByName("ORDER_RESERVE").Value = "1";
                        //  faturasatiri[j].FieldByName("DUE_DATE").Value = DateTime.Now.ToShortDateString();// Convert.ToDateTime(SDATE[0]).ToShortDateString(); ;
                        //  faturasatiri[j].FieldByName("RESERVE_DATE").Value = DateTime.Now.ToShortDateString(); ;
                        faturasatiri[j].FieldByName("SALEMANCODE").Value = SLSMANCODE;
                        j++;
                        //   LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UVINDCode[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = UVIND[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UVINDORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            // faturasatiri[j].FieldByName("VAT_INCLUDED").Value = VATINC[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("DESCRIPTION").Value = "Vade İndirimi. Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALEMANCODE").Value = SLSMANCODE;
                            j++;
                        }
                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UMINDCode[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = UMIND[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UMINDORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("DESCRIPTION").Value = "Miktar İndirimi. Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALEMANCODE").Value = SLSMANCODE;
                            j++;
                        }
                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UINDCode[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = UIND[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UINDORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("DESCRIPTION").Value = "Genel İndirim.Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALEMANCODE").Value = SLSMANCODE;
                            j++;
                        }
                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UYINDCode[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = UYIND[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UYINDORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("DESCRIPTION").Value = "Yetki Kodu İndirimi. Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALEMANCODE").Value = SLSMANCODE;
                            j++;
                        }
                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UKINDCode[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = UIND[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UKINDORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("DESCRIPTION").Value = "Kur İndirimi.Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALEMANCODE").Value = SLSMANCODE;
                            j++;
                        }
                        a++;
                    }


                }
                try
                {
                    if (fatura.Post())
                    {
                        //sip ata
                        LogoTiger.Disconnect();
                        string SqlStr = "select LOGICALREF FROM " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STFICHE where FICHENO='" + LFICHENO + "' and CANCELLED=0";
                        LBLOG.Items.Add(SqlStr);
                        SqlDataReader oku4 = baglanti.DataReaderAl(SqlStr);
                        if (oku4.Read())
                        {
                            SqlStr = "update Z_SipLine set DURUM=4,AKTARIM=" + oku4[0].ToString() + " where FICHENO='" + LFICHENO + "' ";
                            LBLOG.Items.Add(SqlStr);
                            baglanti.VeriIslemler(SqlStr);
                        }

                        //  this.Close();
                        //

                        LBLOG.Items.Add("Aktarım Tamamlandı.");

                    }
                    else
                    {
                        string result = "XML ErrorList:";
                        if (fatura.ErrorCode != 0)
                        {
                            result = fatura.ErrorCode.ToString() +
                                 fatura.ErrorDesc + fatura.DBErrorDesc;
                        }
                        else if (fatura.ValidateErrors.Count > 0)
                        {
                            for (int k = 0; k < fatura.ValidateErrors.Count; k++)
                            {
                                result += "(" + fatura.ValidateErrors[k].ID.ToString() + ") - " + fatura.ValidateErrors[k].Error;
                            }
                        }
                        LogoTiger.Disconnect();
                        //LBLOG.Items.Clear();
                        HataMesaj = LogoTiger.GetLastErrorString() + "Cari Kodu" + GFirmaKodu + " " + result;

                        Form2 frm2 = new Form2();
                        frm2.Show();
                        timer1.Enabled = false;
                        LOBJECTKill();
                        LBLOG.SelectedIndex = LBLOG.Items.Count - 1;
                    }
                }
                catch (Exception s)
                {
                    LogoTiger.Disconnect();
                    LBLOG.Items.Add(s.ToString());
                    LOBJECTKill();
                }
                finally
                {
                    LOBJECTKill();
                }

            }

            //listbox taki logları txtye aktar.
            //  StreamWriter Dosya = File.AppendText("dosya.txt");
            //Dosya.WriteLine("\n\n\n"); // Dosya.WriteLine ile dosyaya isim ve soyisim text kutularındaki değerleri aralrına bir tab boşluk bırakarak ekledik.
            //for (int i = 0; i < LBLOG.Items.Count; i++)
            //{
            //    Dosya.WriteLine(LBLOG.Items[i].Text);
            //}
            //Dosya.Close(); // Dosya yı kapattık.
            //


            GridGetir();
            // System.Windows.Forms.Application.Restart();
        }

        private void MYSatisIrsaliyeAktar()
        {


            StringBuilder sb = new StringBuilder(5000);
            GetPrivateProfileString("Bilgiler", "Kullanıcı", "", sb, sb.Capacity, System.Windows.Forms.Application.StartupPath + "/rafetmy.ini");
            string LLOGOUser = sb.ToString();
            sb.Clear();


            GetPrivateProfileString("Bilgiler", "Sifre", "", sb, sb.Capacity, System.Windows.Forms.Application.StartupPath + "/rafetmy.ini");
            string LLOGOPASS = sb.ToString();
            sb.Clear();




            this.Text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss") + LLOGOPASS + "-" + LLOGOUser;
            SRead = baglantiMY.DataReaderAl("select FICHENO,CLIENTREF,DURUM from Z_SipLine where DURUM=3 group by FICHENO,CLIENTREF,DURUM");
            while (SRead.Read())
            {
                long LOGOTIMETOINT = DateTime.Now.Hour * 65536 * 256 + DateTime.Now.Minute * 65536 + DateTime.Now.Second * 256;
                LBLOG.Items.Add("TİME_:" + LOGOTIMETOINT.ToString());
                string GSipId = SRead[0].ToString();
                string GClientRef = SRead[1].ToString();
                LBLOG.Items.Add(GSipId + "  İşlemi Başladı");
                string[] UCODE = new string[250];
                string[] UMik = new string[250];
                string[] URef = new string[250];
                string[] UBFiyat = new string[250];//saır miktarı kontrolü yapılırken ORFLINEDEN ALINACAK,
                string[] UVAT = new string[250];
                string[] ULAmbarId = new string[250];
                string[] UVIND = new string[250];
                string[] UVINDORAN = new string[250];
                string[] UVINDCode = new string[250];
                string[] UMIND = new string[250];
                string[] UMINDORAN = new string[250];
                string[] UMINDCode = new string[250];
                string[] UIND = new string[250];
                string[] UINDORAN = new string[250];
                string[] UINDCode = new string[250];
                string[] UYIND = new string[250];
                string[] UYINDORAN = new string[250];
                string[] UYINDCode = new string[250];
                string[] SDATE = new string[250];
                string[] VADESTR = new string[250];
                string[] MIKSTR = new string[250];
                string[] CURRID = new string[250];
                string[] CURRRATE = new string[250];
                string[] CURRPRICE = new string[250];
                string[] TRADINGGRP = new string[250];
                string[] DIVISION = new string[250];
                string[] VATINC = new string[250];
                string[] KIMDEN = new string[250];
                double[] INDORANTOP = new double[250];
                string[] STOCKREF = new string[250];
                string[] PRCCODE = new string[250];
                string GFirmaKodu = "", CLIENTREF = "", LFICHENO = "", SLSMANCODE = "", CSPECODE = "", ProJectReF = "0";
                int LineType = 0;
                string[] UKIND = new string[250];
                string[] UKINDORAN = new string[250];
                string[] UKINDCode = new string[250];
                // LFICHENO = GSipId;
                int i = 0, a = 0;
                SqlDataReader oku = baglantiMY.DataReaderAl("SELECT KURINDORAN,KIMDEN,TRADINGGRP,DIVISION,VATINC,[LOGICALREF],[SIPID],[FICHENO],[DATE_],[STOCKREF],[STOCKCODE],[STOCKNAME],[AMOUNT],[PRICE],[GENELIORAN],[VADORAN],[MIKORAN],ROUND(isnull((PRICE*(GENELIORAN/100)*AMOUNT),0),2) AS[GENELITUTAR],ROUND(isnull((PRICE*(VADORAN/100)*AMOUNT),0),2) AS [VADTUTAR],ROUND(isnull((PRICE*(MIKORAN/100)*AMOUNT),0),2) AS [MIKTUTAR],[LINEEXP],(AMOUNT*PRICE)AS SATIRTOP,ROUND(isnull((PRICE*(YINDORAN/100)*AMOUNT),0),2)as YINDTUTAR,[YINDORAN],CLIENTREF ,VAT,VADESTR,MIKSTR,CURRID,isnull(CURRRATE,1) as CURRRATE,LISTFIYAT  FROM [LOGOKAMP_MY].[dbo].[Z_SipLine] where LOGICALREF>0  and Durum=3 and  FICHENO='" + GSipId + "' and CLIENTREF=" + GClientRef + "  ");
                while (oku.Read())
                {
                    KIMDEN[i] = oku["KIMDEN"].ToString();
                    TRADINGGRP[i] = oku["TRADINGGRP"].ToString();
                    DIVISION[i] = oku["DIVISION"].ToString();
                    VATINC[i] = oku["VATINC"].ToString();
                    LFICHENO = oku["FICHENO"].ToString();
                    UCODE[i] = oku["STOCKCODE"].ToString();
                    STOCKREF[i] = oku["STOCKREF"].ToString();
                    UMik[i] = oku["AMOUNT"].ToString();
                    UBFiyat[i] = (Convert.ToDouble(oku["LISTFIYAT"].ToString()) * Convert.ToDouble(oku["CURRRATE"].ToString())).ToString();
                    CURRPRICE[i] = oku["LISTFIYAT"].ToString();
                    UVAT[i] = oku["VAT"].ToString();
                    UVIND[i] = oku["VADTUTAR"].ToString();
                    UVINDORAN[i] = oku["VADORAN"].ToString();
                    UMIND[i] = oku["MIKTUTAR"].ToString();
                    UMINDORAN[i] = oku["MIKORAN"].ToString();
                    UIND[i] = oku["GENELITUTAR"].ToString();
                    UINDORAN[i] = oku["GENELIORAN"].ToString();
                    UYIND[i] = oku["YINDTUTAR"].ToString();
                    UYINDORAN[i] = oku["YINDORAN"].ToString();
                    CLIENTREF = oku["CLIENTREF"].ToString();
                    SDATE[i] = oku["DATE_"].ToString();
                    VADESTR[i] = oku["VADESTR"].ToString(); if (VADESTR[i] == "CC") { VADESTR[i] = ""; }
                    MIKSTR[i] = oku["MIKSTR"].ToString();
                    CURRID[i] = oku["CURRID"].ToString();
                    CURRRATE[i] = oku["CURRRATE"].ToString();
                    UKINDORAN[i] = oku["KURINDORAN"].ToString();
                    //  UKIND[i] = oku["GENELITUTAR"].ToString();
                    INDORANTOP[i] = 100 - (100 * ((100 - Convert.ToDouble(UVINDORAN[i])) / 100) * ((100 - Convert.ToDouble(UMINDORAN[i])) / 100) * ((100 - Convert.ToDouble(UINDORAN[i])) / 100) * ((100 - Convert.ToDouble(UYINDORAN[i])) / 100));

                    UVINDCode[i] = UVINDORAN[i]; if (UVINDCode[i].Length == 4) { UVINDCode[i] = "0" + UVINDCode[i].Substring(0, 1); } if (UVINDCode[i].Length == 5) { UVINDCode[i] = UVINDCode[i].Substring(0, 2); }
                    UMINDCode[i] = UMINDORAN[i]; if (UMINDCode[i].Length == 4) { UMINDCode[i] = "0" + UMINDCode[i].Substring(0, 1); } if (UMINDCode[i].Length == 5) { UMINDCode[i] = UMINDCode[i].Substring(0, 2); }
                    UINDCode[i] = UINDORAN[i]; if (UINDCode[i].Length == 4) { UINDCode[i] = "0" + UINDCode[i].Substring(0, 1); } if (UINDCode[i].Length == 5) { UINDCode[i] = UINDCode[i].Substring(0, 2); }
                    UYINDCode[i] = UYINDORAN[i]; if (UYINDCode[i].Length == 4) { UYINDCode[i] = "0" + UYINDCode[i].Substring(0, 1); } if (UYINDCode[i].Length == 5) { UYINDCode[i] = UYINDCode[i].Substring(0, 2); }
                    UKINDCode[i] = UKINDORAN[i]; if (UKINDCode[i].Length == 4) { UKINDCode[i] = "0" + UKINDCode[i].Substring(0, 1); } if (UKINDCode[i].Length == 5) { UKINDCode[i] = UKINDCode[i].Substring(0, 2); }

                    //fiyat referansı al
                    SqlDataReader dtrd = baglantiMY.DataReaderAl("select LOGICALREF,CODE from " + baglantiMY.INITIAL2 + "..LG_" + baglantiMY.GFirma + "_PRCLIST where BEGDATE<='" + DateTime.Now.ToString("MM/dd/yyyy") + "' and ENDDATE>='" + DateTime.Now.ToString("MM/dd/yyyy") + "' and CARDREF=" + STOCKREF[i] + " and PTYPE=2 ");
                    if (dtrd.Read())
                    {
                        PRCCODE[i] = dtrd["CODE"].ToString();
                    }
                    //


                    i++;
                }
                if (i == 0) { LBLOG.Items.Add("Şartları Sağlayan Kayıtlar Bulunamadı!!!"); }
                SqlDataReader oku2 = baglantiMY.DataReaderAl("select CODE,SPECODE,PROJECTREF FROM " + baglantiMY.INITIAL2 + "..LG_" + baglantiMY.GFirma + "_CLCARD where LOGICALREF=" + CLIENTREF + "");
                if (oku2.Read()) { GFirmaKodu = oku2["CODE"].ToString(); CSPECODE = oku2["SPECODE"].ToString(); ProJectReF = oku2["PROJECTREF"].ToString(); } else { LBLOG.Items.Add("Cari Ticari sistemde Bulunamadı!!!"); return; }
                SqlDataReader oku3 = baglantiMY.DataReaderAl("select CODE FROM " + baglantiMY.INITIAL2 + "..LG_SLSMAN where CODE like '%" + CSPECODE + "%' and FIRMNR=" + baglantiMY.GFirma + "");
                if (oku3.Read()) { SLSMANCODE = oku3["CODE"].ToString(); } else { LBLOG.Items.Add("Cari Ticari sistemde Bulunamadı!!!"); }

                string ProjeKodu = "";
                SqlDataReader oku5 = baglantiMY.DataReaderAl("select CODE FROM " + baglantiMY.INITIAL2 + "..LG_" + baglantiMY.GFirma + "_PROJECT where LOGICALREF=" + ProJectReF + "");
                if (oku5.Read())
                {
                    ProjeKodu = oku5[0].ToString();
                }






                string BelgeNo = "";
                if (KIMDEN[0] == "1") { BelgeNo = "Merkez"; }
                if (KIMDEN[0] == "2") { BelgeNo = "B2B"; }
                if (KIMDEN[0] == "4") { BelgeNo = "Satıcı"; }
                string OK = "", YK = "";
                if (VATINC[0] == "0")
                {
                    OK = "XX";
                    YK = "XX";
                }
                if (VATINC[0] == "1")
                {
                    OK = "9";
                    YK = "9";
                }


                LOBJECTKill();
                UnityApplication LogoTiger = new UnityApplication();
                LogoTiger.LogoDB("MY.CFG");
                LBLOG.Items.Add("1" + LogoTiger.GetLastErrorString());
                UnityObjects.Data fatura = null;
                LogoTiger.Connect();
                LBLOG.Items.Add("2" + LogoTiger.GetLastErrorString());
                if (LogoTiger.LoggedIn) LogoTiger.UserLogout();
                LogoTiger.UserLogin(LLOGOUser, LLOGOPASS);
                LBLOG.Items.Add("3" + LogoTiger.GetLastErrorString());
                if (LogoTiger.CompanyLoggedIn) LogoTiger.CompanyLogout();
                LogoTiger.CompanyLogin(Convert.ToInt32(baglantiMY.GFirma), 1);//firma no ,Periyot no
                LBLOG.Items.Add("4" + LogoTiger.GetLastErrorString());
                fatura = LogoTiger.NewDataObject(DataObjectType.doSalesDispatch);
                LBLOG.Items.Add("5" + LogoTiger.GetLastErrorString());
                this.Text = LogoTiger.GetLastErrorString();
                fatura.New();
                fatura.DataFields.FieldByName("TYPE").Value = "8";
                fatura.DataFields.FieldByName("NUMBER").Value = LFICHENO; //1 Alıcı, 2 Satıcı, 3 Alıcı-Satıcı LBLOG.Items.Add("4 Girdi");
                fatura.DataFields.FieldByName("DATE").Value = Convert.ToDateTime(SDATE[0]).ToShortDateString();
                fatura.DataFields.FieldByName("TIME").Value = LOGOTIMETOINT.ToString();

                fatura.DataFields.FieldByName("ARP_CODE").Value = GFirmaKodu;
                fatura.DataFields.FieldByName("PROJECTREF").Value = ProJectReF;
                // fatura.DataFields.FieldByName("DEPARTMENT").Value = GBolumNR;
                // fatura.DataFields.FieldByName("GL_CODE").Value = GFirmaKodu;
                fatura.DataFields.FieldByName("AUXIL_CODE").Value = OK;
                fatura.DataFields.FieldByName("AUTH_CODE").Value = YK;
                fatura.DataFields.FieldByName("DIVISION").Value = DIVISION[0];
                fatura.DataFields.FieldByName("FACTORY").Value = 2;

                fatura.DataFields.FieldByName("DOC_NUMBER").Value = BelgeNo;
                fatura.DataFields.FieldByName("CURRSEL_TOTALS").Value = 2;
                fatura.DataFields.FieldByName("CURRSEL_DETAILS").Value = 4;
                fatura.DataFields.FieldByName("TRADING_GRP").Value = TRADINGGRP[0];
                fatura.DataFields.FieldByName("SALESMANCODE").Value = SLSMANCODE;
                fatura.DataFields.FieldByName("DATE_CREATED").Value = DateTime.Now.Date;
                fatura.DataFields.FieldByName("HOUR_CREATED").Value = DateTime.Now.Hour;
                fatura.DataFields.FieldByName("MIN_CREATED").Value = DateTime.Now.Minute;
                fatura.DataFields.FieldByName("SEC_CREATED").Value = DateTime.Now.Second;
                fatura.DataFields.FieldByName("DATE_MODIFIED").Value = DateTime.Now.Date;
                fatura.DataFields.FieldByName("HOUR_MODIFIED").Value = DateTime.Now.Hour;
                fatura.DataFields.FieldByName("MIN_MODIFIED").Value = DateTime.Now.Minute;
                fatura.DataFields.FieldByName("SEC_MODIFIED").Value = DateTime.Now.Second;
                // fatura.DataFields.FieldByName("UPD_CURR").Value = 1;
                fatura.DataFields.FieldByName("PAYMENT_CODE").Value = "60";
                ILines faturasatiri = fatura.DataFields.FieldByName("TRANSACTIONS").Lines;
                for (int j = 0; j < i * 6; )
                {
                    if (faturasatiri.AppendLine())
                    {
                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                        LineType = 0;
                        faturasatiri[j].FieldByName("TYPE").Value = LineType;
                        faturasatiri[j].FieldByName("MASTER_CODE").Value = UCODE[a];
                        faturasatiri[j].FieldByName("DISCEXP_CALC").Value = "2";
                        faturasatiri[j].FieldByName("QUANTITY").Value = UMik[a].Replace(",", ".");//miktar
                        faturasatiri[j].FieldByName("PRICE").Value = UBFiyat[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("PC_PRICE").Value = CURRPRICE[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("VAT_RATE").Value = UVAT[a].Replace(",", ".");
                        //faturasatiri[j].FieldByName("PAYMENT_CODE").Value = VADESTR[a];
                        faturasatiri[j].FieldByName("PR_RATE").Value = CURRRATE[a];
                        faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                        faturasatiri[j].FieldByName("CURR_PRICE").Value = CURRID[a];
                        faturasatiri[j].FieldByName("UNIT_CODE").Value = "ADET";// LBLOG.Items.Add(CURRID[a]);
                        faturasatiri[j].FieldByName("UNIT_CONV1").Value = "1";
                        faturasatiri[j].FieldByName("UNIT_CONV2").Value = "1";
                        faturasatiri[j].FieldByName("EDT_PRICE").Value = CURRPRICE[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("EDT_CURR").Value = CURRID[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                        faturasatiri[j].FieldByName("PRCLISTCODE").Value = PRCCODE[a];
                        faturasatiri[j].FieldByName("PRCLISTTYPE").Value = 2;
                        // faturasatiri[j].FieldByName("FACTORY").Value = 2;
                        faturasatiri[j].FieldByName("PR_RATE").Value = CURRRATE[a].Replace(",", ".");
                        //  faturasatiri[j].FieldByName("ORDER_RESERVE").Value = UMik[a].Replace(",", ".");
                        // faturasatiri[j].FieldByName("RESERVE_AMOUNT").Value = UMik[a].Replace(",", ".");
                        // faturasatiri[j].FieldByName("ORDER_RESERVE").Value = "1";
                        //  faturasatiri[j].FieldByName("DUE_DATE").Value = DateTime.Now.ToShortDateString();// Convert.ToDateTime(SDATE[0]).ToShortDateString(); ;
                        //  faturasatiri[j].FieldByName("RESERVE_DATE").Value = DateTime.Now.ToShortDateString(); ;
                        faturasatiri[j].FieldByName("SALEMANCODE").Value = SLSMANCODE;
                        j++;
                        //   LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UVINDCode[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = UVIND[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UVINDORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            // faturasatiri[j].FieldByName("VAT_INCLUDED").Value = VATINC[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("DESCRIPTION").Value = "Vade İndirimi. Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALEMANCODE").Value = SLSMANCODE;
                            j++;
                        }
                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UMINDCode[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = UMIND[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UMINDORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("DESCRIPTION").Value = "Miktar İndirimi. Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALEMANCODE").Value = SLSMANCODE;
                            j++;
                        }
                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UINDCode[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = UIND[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UINDORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("DESCRIPTION").Value = "Genel İndirim.Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALEMANCODE").Value = SLSMANCODE;
                            j++;
                        }
                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UYINDCode[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = UYIND[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UYINDORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("DESCRIPTION").Value = "Yetki Kodu İndirimi. Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALEMANCODE").Value = SLSMANCODE;
                            j++;
                        }
                        LBLOG.Items.Add(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                        if (faturasatiri.AppendLine())
                        {
                            LineType = 2;
                            faturasatiri[j].FieldByName("TYPE").Value = LineType;
                            faturasatiri[j].FieldByName("MASTER_CODE").Value = UKINDCode[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                            faturasatiri[j].FieldByName("TOTAL").Value = UIND[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UKINDORAN[a].Replace(",", ".");
                            faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                            faturasatiri[j].FieldByName("PROJECT_CODE").Value = ProjeKodu;
                            faturasatiri[j].FieldByName("DESCRIPTION").Value = "Kur İndirimi.Top.Oran:" + INDORANTOP[a].ToString();
                            faturasatiri[j].FieldByName("SALEMANCODE").Value = SLSMANCODE;
                            j++;
                        }
                        a++;
                    }


                }
                try
                {
                    if (fatura.Post())
                    {
                        //sip ata
                        LogoTiger.Disconnect();
                        string SqlStr = "select LOGICALREF FROM " + baglantiMY.INITIAL2 + "..LG_" + baglantiMY.GFirma + "_" + baglantiMY.GDONEM + "_STFICHE where FICHENO='" + LFICHENO + "' and CANCELLED=0";
                        LBLOG.Items.Add(SqlStr);
                        SqlDataReader oku4 = baglantiMY.DataReaderAl(SqlStr);
                        if (oku4.Read())
                        {
                            SqlStr = "update Z_SipLine set DURUM=4,AKTARIM=" + oku4[0].ToString() + " where FICHENO='" + LFICHENO + "' ";
                            LBLOG.Items.Add(SqlStr);
                            baglantiMY.VeriIslemler(SqlStr);
                        }

                        //  this.Close();
                        //

                        LBLOG.Items.Add("Aktarım Tamamlandı.");

                    }
                    else
                    {
                        string result = "XML ErrorList:";
                        if (fatura.ErrorCode != 0)
                        {
                            result = fatura.ErrorCode.ToString() +
                                 fatura.ErrorDesc + fatura.DBErrorDesc;
                        }
                        else if (fatura.ValidateErrors.Count > 0)
                        {
                            for (int k = 0; k < fatura.ValidateErrors.Count; k++)
                            {
                                result += "(" + fatura.ValidateErrors[k].ID.ToString() + ") - " + fatura.ValidateErrors[k].Error;
                            }
                        }
                        LogoTiger.Disconnect();
                        //LBLOG.Items.Clear();
                        HataMesaj = LogoTiger.GetLastErrorString() + "Cari Kodu" + GFirmaKodu + " " + result;

                        Form2 frm2 = new Form2();
                        frm2.Show();
                        timer1.Enabled = false;
                        LOBJECTKill();
                        LBLOG.SelectedIndex = LBLOG.Items.Count - 1;
                    }
                }
                catch (Exception s)
                {
                    LogoTiger.Disconnect();
                    LBLOG.Items.Add(s.ToString());
                    LOBJECTKill();
                }
                finally
                {
                    LOBJECTKill();
                }

            }

            //listbox taki logları txtye aktar.
            //  StreamWriter Dosya = File.AppendText("dosya.txt");
            //Dosya.WriteLine("\n\n\n"); // Dosya.WriteLine ile dosyaya isim ve soyisim text kutularındaki değerleri aralrına bir tab boşluk bırakarak ekledik.
            //for (int i = 0; i < LBLOG.Items.Count; i++)
            //{
            //    Dosya.WriteLine(LBLOG.Items[i].Text);
            //}
            //Dosya.Close(); // Dosya yı kapattık.
            //


            GridGetir();
            // System.Windows.Forms.Application.Restart();
        }

        public static string HataMesaj;
        private void timer1_Tick(object sender, EventArgs e)
        {
            timer2.Enabled = false;
            //siparişler 
            Aktar();
            MYAktar();
            //irsaliyeler
            SatisIrsaliyeAktar();
            MYSatisIrsaliyeAktar();
            GridGetir();
            timer2.Enabled = true;
        }

        private void programıGösterToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Show();
        }

        private void yeniToolStripMenuItem_Click(object sender, EventArgs e)
        {
            System.Windows.Forms.Application.Restart();
        }

        private void loglarıGösterToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void çıkışToolStripMenuItem_Click(object sender, EventArgs e)
        {
            System.Windows.Forms.Application.Exit();
        }

        private void radButton1_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void timer2_Tick(object sender, EventArgs e)
        {
            LOBJECTKill();
            System.Windows.Forms.Application.Restart();
        }
    }
}
