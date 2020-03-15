using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Diagnostics;
using UnityObjects;

namespace B2BAdmin
{
    public partial class FrmSipLine : Form
    {
        public FrmSipLine()
        {
            InitializeComponent();
        }
        private void TXTDoldur() {
            SqlDataReader oku = baglanti.DataReaderAl("select S.FICHENO,C.DEFINITION_,S.DATE_,isnull(ROUND(SUM(AMOUNT*PRICE),2),0)as LineTutar,ROUND(isnull(SUM(PRICE*(GENELIORAN/100)*AMOUNT),0),2)as GenelI,ROUND(isnull(SUM(PRICE*(VADORAN/100)*AMOUNT),0),2)as VADI,ROUND(isnull(SUM(PRICE*(MIKORAN/100)*AMOUNT),0),2)as MIKI from Z_SipLine as S inner join (select LOGICALREF,DEFINITION_ from " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_CLCARD) as C on S.CLIENTREF=C.LOGICALREF where S.LOGICALREF>0 and Durum>0 and S.FICHENO='"+FrmSepet.GSipId+"' and S.CLIENTREF="+FrmSepet.GCLIENTREF+"  group by SIPID,S.FICHENO,C.DEFINITION_,S.DATE_");
            if (oku.Read())
            {
            TXTSatirTop.Text = Convert.ToDecimal(oku["LineTutar"].ToString()).ToString("#,##.##");
            TXTGenelInd.Text = Convert.ToDecimal(oku["GenelI"].ToString()).ToString("#,##.##");
            TXTVadeInd.Text = Convert.ToDecimal(oku["VADI"].ToString()).ToString("#,##.##");
            TXTMikInd.Text = Convert.ToDecimal(oku["MIKI"].ToString()).ToString("#,##.##");;
            TXTGenelTop.Text =  Convert.ToDecimal(oku["LineTutar"].ToString()).ToString("#,##.##");
            
            }
            
            
          
        }
        private void SVeriGetir() {

            string SQLAra = " and FICHENO='" + FrmSepet.GSipId + "'  and CLIENTREF=" + FrmSepet.GCLIENTREF + "";

            GridLine.DataSource = baglanti.TabloAl("SELECT[LOGICALREF],[SIPID],[FICHENO],[DATE_],[STOCKREF],[STOCKCODE],[STOCKNAME],[AMOUNT],[PRICE],[GENELIORAN],[VADORAN],[MIKORAN],[GENELITUTAR],[VADTUTAR],[MIKTUTAR],[LINEEXP],(AMOUNT*PRICE)AS SATIRTOP   FROM [LOGOKAMP].[dbo].[Z_SipLine] where LOGICALREF>0  and Durum<>4  " + SQLAra);
        }

        private void FrmSipLine_Load(object sender, EventArgs e)
        {
            this.Text = FrmSepet.GSipId;
            TXTDoldur();
            SVeriGetir();
        }

        private void FrmSipLine_SizeChanged(object sender, EventArgs e)
        {
            GridLine.Width = this.Width - 50;
        }

        private void BTNLSil_Click(object sender, EventArgs e)
        {
              DialogResult dialogResult = MessageBox.Show("SAtır Silinecektir!!!", "", MessageBoxButtons.YesNo);
              if (dialogResult == DialogResult.Yes) {
                  if(LLOGICALREF==""){return;}
                  baglanti.VeriIslemler("Update Z_SipLine set DURUM=4 where DURUM=1 and LOGICALREF=" +LLOGICALREF+ "");
                  SVeriGetir();
                  TXTDoldur();
              }
        }
        string LLOGICALREF,LFICHENO;
        private void GridLine_CellDoubleClick(object sender, Telerik.WinControls.UI.GridViewCellEventArgs e)
        {
          
        }

        private void GridLine_CellClick(object sender, Telerik.WinControls.UI.GridViewCellEventArgs e)
        {
            LLOGICALREF = GridLine.CurrentRow.Cells["LOGICALREF"].Value.ToString();
            LFICHENO = GridLine.CurrentRow.Cells["FICHENO"].Value.ToString();
        }

        private void BTNSSil_Click(object sender, EventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("Sepet Silinecektir!!!", "", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                if (FrmSepet.GSipId == "") { return; }
                baglanti.VeriIslemler("Update Z_SipLine set DURUM=4 where DURUM=1 and FICHENO='" + FrmSepet.GSipId + "'");
                SVeriGetir();
                TXTDoldur();
            }
        }

        private void BTN_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        
        private void BTNAktar_Click(object sender, EventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("TIGER a Aktarım Yapılacaktır Onaylıyor musunuz ?", "Uyarı!!!", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                string[] UCODE = new string[50];
                string[] UMik = new string[50];
                string[] URef = new string[50];
                string[] UBFiyat = new string[50];//saır miktarı kontrolü yapılırken ORFLINEDEN ALINACAK,
                string[] UVAT = new string[50];
                string[] ULAmbarId = new string[50];
                string[] UVIND = new string[50];
                string[] UVINDORAN = new string[50];
                string[] UVINDCode = new string[50];
                string[] UMIND = new string[50];
                string[] UMINDORAN = new string[50];
                string[] UMINDCode = new string[50];
                string[] UIND = new string[50];
                string[] UINDORAN = new string[50];
                string[] UINDCode = new string[50];
                string[] UYIND = new string[50];
                string[] UYINDORAN = new string[50];
                string[] UYINDCode = new string[50];
                string[] SDATE = new string[50];
                string[] VADESTR = new string[50];
                string[] MIKSTR = new string[50];
                string[] CURRID = new string[50];
                string[] CURRRATE = new string[50];
                string[] CURRPRICE = new string[50];
                double[] INDORANTOP = new double[50];
                string GFirmaKodu = "",CLIENTREF="",LFICHENO="",SLSMANCODE="",CSPECODE="";
                int LineType=0;
                LFICHENO=FrmSepet.GSipId;
                int i = 0, a = 0;
                SqlDataReader oku = baglanti.DataReaderAl("SELECT[LOGICALREF],[SIPID],[FICHENO],[DATE_],[STOCKREF],[STOCKCODE],[STOCKNAME],[AMOUNT],[PRICE],[GENELIORAN],[VADORAN],[MIKORAN],ROUND(isnull((PRICE*(GENELIORAN/100)*AMOUNT),0),2) AS[GENELITUTAR],ROUND(isnull((PRICE*(VADORAN/100)*AMOUNT),0),2) AS [VADTUTAR],ROUND(isnull((PRICE*(MIKORAN/100)*AMOUNT),0),2) AS [MIKTUTAR],[LINEEXP],(AMOUNT*PRICE)AS SATIRTOP,ROUND(isnull((PRICE*(YINDORAN/100)*AMOUNT),0),2)as YINDTUTAR,[YINDORAN],CLIENTREF ,VAT,VADESTR,MIKSTR,CURRID,CURRRATE,LISTFIYAT  FROM [LOGOKAMP].[dbo].[Z_SipLine] where LOGICALREF>0  and Durum<>4 and FICHENO='" + FrmSepet.GSipId + "' and CLIENTREF=" + FrmSepet.GCLIENTREF + "  ");
                while (oku.Read())
                {
                   UCODE[i]=oku["STOCKCODE"].ToString();
                   UMik[i] = oku["AMOUNT"].ToString();
                   UBFiyat[i] = (Convert.ToDouble(oku["LISTFIYAT"].ToString()) * Convert.ToDouble(oku["CURRRATE"].ToString())).ToString();
                   CURRPRICE[i] = oku["LISTFIYAT"].ToString();
                   UVAT[i] = oku["VAT"].ToString();
                   UVIND[i]=oku["VADTUTAR"].ToString();
                   UVINDORAN[i] = oku["VADORAN"].ToString();
                   UMIND[i]=oku["MIKTUTAR"].ToString();
                   UMINDORAN[i] = oku["MIKORAN"].ToString();
                   UIND[i] = oku["GENELITUTAR"].ToString();
                   UINDORAN[i] = oku["GENELIORAN"].ToString();
                   UYIND[i] = oku["YINDTUTAR"].ToString();
                   UYINDORAN[i] = oku["YINDORAN"].ToString();
                   CLIENTREF=oku["CLIENTREF"].ToString();
                   SDATE[i]=oku["DATE_"].ToString();
                   VADESTR[i] = oku["VADESTR"].ToString(); if (VADESTR[i] == "CC") { VADESTR[i]= ""; }
                   MIKSTR[i]= oku["MIKSTR"].ToString();
                   CURRID[i] = oku["CURRID"].ToString();
                   CURRRATE[i] = oku["CURRRATE"].ToString();
                   INDORANTOP[i] =100-(100 * ((100 - Convert.ToDouble(UVINDORAN[i])) / 100) * ((100 - Convert.ToDouble(UMINDORAN[i])) / 100) * ((100 - Convert.ToDouble(UINDORAN[i])) / 100) * ((100 - Convert.ToDouble(UYINDORAN[i])) / 100));

                   UVINDCode[i] = UVINDORAN[i]; if (UVINDCode[i].Length == 4) { UVINDCode[i] = "0" + UVINDCode[i].Substring(0, 1); } if (UVINDCode[i].Length == 5) { UVINDCode[i] = UVINDCode[i].Substring(0, 2); }
                   UMINDCode[i] = UMINDORAN[i]; if (UMINDCode[i].Length == 4) { UMINDCode[i] = "0" + UMINDCode[i].Substring(0, 1); } if (UMINDCode[i].Length == 5) { UMINDCode[i] = UMINDCode[i].Substring(0, 2); }
                   UINDCode[i] = UINDORAN[i]; if (UINDCode[i].Length == 4) { UINDCode[i] = "0" + UINDCode[i].Substring(0, 1); } if (UINDCode[i].Length == 5) { UINDCode[i] = UINDCode[i].Substring(0, 2); }
                   UYINDCode[i] = UYINDORAN[i]; if (UYINDCode[i].Length == 4) { UYINDCode[i] = "0" + UYINDCode[i].Substring(0, 1); } if (UYINDCode[i].Length == 5) { UYINDCode[i] = UYINDCode[i].Substring(0, 2); } 
                   i++;
                }
                if (i == 0) { MessageBox.Show("Şartları Sağlayan Kayıtlar Bulunamadı!!!","HATA!!!!"); return; }
                SqlDataReader oku2 = baglanti.DataReaderAl("select CODE,SPECODE FROM "+baglanti.INITIAL2+"..LG_"+baglanti.GFirma+"_CLCARD where LOGICALREF="+CLIENTREF+"");
                if (oku2.Read()) { GFirmaKodu = oku2["CODE"].ToString(); CSPECODE = oku2["SPECODE"].ToString(); } else { MessageBox.Show("Cari Ticari sistemde Bulunamadı!!!"); return; }
                SqlDataReader oku3 = baglanti.DataReaderAl("select CODE FROM " + baglanti.INITIAL2 + "..LG_SLSMAN where CODE like '%"+CSPECODE+"%' and FIRMNR="+baglanti.GFirma+"");
                if (oku3.Read()) { SLSMANCODE=oku3["CODE"].ToString(); } else { MessageBox.Show("Cari Ticari sistemde Bulunamadı!!!"); return; }



                UnityApplication LogoTiger = new UnityApplication();
              //  MessageBox.Show("1" + LogoTiger.GetLastErrorString());
                UnityObjects.Data fatura = null;
                LogoTiger.Connect();
             //   MessageBox.Show("2" + LogoTiger.GetLastErrorString());
                if (LogoTiger.LoggedIn) LogoTiger.UserLogout();
                LogoTiger.UserLogin(baglanti.GLOGOUSER, baglanti.GLOGOPASS);
            //    MessageBox.Show("3" + LogoTiger.GetLastErrorString());
                if (LogoTiger.CompanyLoggedIn) LogoTiger.CompanyLogout();
                LogoTiger.CompanyLogin(Convert.ToInt32(baglanti.GFirma), 1);//firma no ,Periyot no
             //   MessageBox.Show("4" + LogoTiger.GetLastErrorString());
                fatura = LogoTiger.NewDataObject(DataObjectType.doSalesOrderSlip);
             //   MessageBox.Show("5" + LogoTiger.GetLastErrorString());
                fatura.New();
                fatura.DataFields.FieldByName("NUMBER").Value = LFICHENO; //1 Alıcı, 2 Satıcı, 3 Alıcı-Satıcı MessageBox.Show("4 Girdi");
                fatura.DataFields.FieldByName("DATE").Value = Convert.ToDateTime(SDATE[0]).ToShortDateString(); 

                fatura.DataFields.FieldByName("ARP_CODE").Value = GFirmaKodu;
               // fatura.DataFields.FieldByName("DEPARTMENT").Value = GBolumNR;
               // fatura.DataFields.FieldByName("GL_CODE").Value = GFirmaKodu;
                fatura.DataFields.FieldByName("AUXIL_CODE").Value = "9";
                fatura.DataFields.FieldByName("AUTH_CODE").Value = "9";
                fatura.DataFields.FieldByName("DIVISION").Value = "1";
                fatura.DataFields.FieldByName("DOC_NUMBER").Value = "RAFET";
                fatura.DataFields.FieldByName("CURRSEL_TOTAL").Value = 2;   
                fatura.DataFields.FieldByName("CURRSEL_DETAILS").Value = 4;
                fatura.DataFields.FieldByName("TRADING_GRP").Value = "02 MAVİ";
                fatura.DataFields.FieldByName("SALESMAN_CODE").Value = SLSMANCODE;
                fatura.DataFields.FieldByName("DATE_CREATED").Value = DateTime.Now.Date;
                fatura.DataFields.FieldByName("HOUR_CREATED").Value = DateTime.Now.Hour;
                fatura.DataFields.FieldByName("MIN_CREATED").Value = DateTime.Now.Minute;
                fatura.DataFields.FieldByName("SEC_CREATED").Value = DateTime.Now.Second;
                fatura.DataFields.FieldByName("DATE_MODIFIED").Value = DateTime.Now.Date;
                fatura.DataFields.FieldByName("HOUR_MODIFIED").Value = DateTime.Now.Hour;
                fatura.DataFields.FieldByName("MIN_MODIFIED").Value = DateTime.Now.Minute;
                fatura.DataFields.FieldByName("SEC_MODIFIED").Value = DateTime.Now.Second;
                ILines faturasatiri = fatura.DataFields.FieldByName("TRANSACTIONS").Lines;
                for (int j = 0; j < i*5;)
                {
                if (faturasatiri.AppendLine())
                {
                  //  MessageBox.Show(j.ToString()+" satır -" + LogoTiger.GetLastErrorString());
                    LineType = 0;
                    faturasatiri[j].FieldByName("TYPE").Value = LineType;
                    faturasatiri[j].FieldByName("MASTER_CODE").Value = UCODE[a];
                    faturasatiri[j].FieldByName("QUANTITY").Value = UMik[a].Replace(",",".");//miktar
                    faturasatiri[j].FieldByName("PRICE").Value = UBFiyat[a].Replace(",",".");
                    faturasatiri[j].FieldByName("PC_PRICE").Value = CURRPRICE[a].Replace(",",".");
                    faturasatiri[j].FieldByName("VAT_RATE").Value = UVAT[a].Replace(",",".");
                    faturasatiri[j].FieldByName("PAYMENT_CODE").Value =VADESTR[a];
                    faturasatiri[j].FieldByName("PR_RATE").Value = CURRRATE[a];
                    faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a]; 
                    faturasatiri[j].FieldByName("CURR_PRICE").Value = CURRID[a];
                    faturasatiri[j].FieldByName("UNIT_CODE").Value = "ADET";// MessageBox.Show(CURRID[a]);
                    faturasatiri[j].FieldByName("UNIT_CONV1").Value = "1";
                    faturasatiri[j].FieldByName("UNIT_CONV2").Value = "1";
                 
                    
                    j++;
                 //   MessageBox.Show(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                    if (faturasatiri.AppendLine()) {
                        LineType = 2;
                        faturasatiri[j].FieldByName("TYPE").Value = LineType;
                        faturasatiri[j].FieldByName("MASTER_CODE").Value = UVINDCode[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                        faturasatiri[j].FieldByName("TOTAL").Value = UVIND[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UVINDORAN[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                      
                        faturasatiri[j].FieldByName("TRANS_DESCRIPTION").Value = "Vade İndirimi. Top.Oran:"+INDORANTOP[a].ToString();
                        j++;
                    }
                   // MessageBox.Show(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                    if (faturasatiri.AppendLine()) {
                        LineType = 2;
                        faturasatiri[j].FieldByName("TYPE").Value = LineType;
                        faturasatiri[j].FieldByName("MASTER_CODE").Value = UMINDCode[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                        faturasatiri[j].FieldByName("TOTAL").Value = UMIND[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UMINDORAN[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                        faturasatiri[j].FieldByName("TRANS_DESCRIPTION").Value = "Miktar İndirimi. Top.Oran:" + INDORANTOP[a].ToString();
                        j++;
                    }
                 //   MessageBox.Show(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                    if (faturasatiri.AppendLine())
                    {
                        LineType = 2;
                        faturasatiri[j].FieldByName("TYPE").Value = LineType;
                        faturasatiri[j].FieldByName("MASTER_CODE").Value = UINDCode[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                        faturasatiri[j].FieldByName("TOTAL").Value = UIND[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UINDORAN[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                        faturasatiri[j].FieldByName("TRANS_DESCRIPTION").Value = "Genel İndirim.Top.Oran:" + INDORANTOP[a].ToString();
                        j++;
                    }
                  //  MessageBox.Show(j.ToString() + " satır -" + LogoTiger.GetLastErrorString());
                    if (faturasatiri.AppendLine())
                    {
                        LineType = 2;
                        faturasatiri[j].FieldByName("TYPE").Value = LineType;
                        faturasatiri[j].FieldByName("MASTER_CODE").Value = UYINDCode[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("QUANTITY").Value = 0;//miktar
                        faturasatiri[j].FieldByName("TOTAL").Value = UYIND[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("DISCOUNT_RATE").Value = UYINDORAN[a].Replace(",", ".");
                        faturasatiri[j].FieldByName("RC_XRATE").Value = CURRRATE[a];
                        faturasatiri[j].FieldByName("TRANS_DESCRIPTION").Value = "Yetki Kodu İndirimi. Top.Oran:" + INDORANTOP[a].ToString();
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
                        SqlDataReader oku4 = baglanti.DataReaderAl("select LOGICALREF FROM " + baglanti.INITIAL2 + "..LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_ORFICHE where FICHENO='" + FrmSepet.GSipId + "' and CANCELLED=0");
                        if (oku4.Read())
                        {
                            baglanti.VeriIslemler("update Z_SipLine set DURUM=2,AKTARIM=" + oku4[0].ToString() + " where FICHENO=" + FrmSepet.GSipId + " and CLIENTREF=" + FrmSepet.GCLIENTREF + "");
                        }

                        this.Close();
                        //

                        MessageBox.Show("Aktarım Tamamlandı.");

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

                        MessageBox.Show(result);

                    }
                }
                catch (Exception s)
                {
                    LogoTiger.Disconnect();
                    MessageBox.Show(s.ToString());
                }
                finally {
                    foreach (var process in Process.GetProcessesByName("lobject"))
                    {
                        process.Kill();
                    }
                
                
                }



            }
        }
    }
}
