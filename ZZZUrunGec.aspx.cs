using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace seyhandagitim
{
    public partial class ZZZUrunGec : System.Web.UI.Page
    {
        SqlDataReader oku;


        private void KilitCheck()
        {
            oku = baglanti.DataReaderAl("select * from " + baglanti.INITIAL2 + "..ZZZ_KILIT");
            if (oku.Read())
            {
                string LKILIT = oku["KILIT"].ToString();
                if (LKILIT == "1")
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('" + oku["ACIKLAMA"].ToString() + "');", true);
                    string startUpScript = string.Format("window.parent.HidePopupAndShowInfoOneri2('Server','');");
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "ANY_KEY", startUpScript, true);
                }
            }

        }

        protected void KoliBilgisiCek()
        {
            string stockref = Request.QueryString["stref"];
            oku = baglanti.DataReaderAl("select Z from LG_XT1001_" + baglanti.GFirma + " where PARLOGREF=" + stockref + "");
            if (oku.Read())
            {
                //  LBLKoli.Text = "Koli Adeti:" + oku["Z"].ToString();
            }

        }
        protected void SipKontrol()
        {
            string stockref = Request.QueryString["stref"];
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            oku = baglanti.DataReaderAl("select sum(AMOUNT) as Mik,sum(SHIPPEDAMOUNT) as SMik,sum(AMOUNT-SHIPPEDAMOUNT) as Sayi,ORDFICHEREF,STATUS from LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_ORFLINE where CLIENTREF=" + CLIENTREF + " and STOCKREF=" + stockref + " and STATUS in (1,4) and CANCELLED=0 group by STATUS,AMOUNT,SHIPPEDAMOUNT,AMOUNT-SHIPPEDAMOUNT,ORDFICHEREF");
            while (oku.Read())
            {
                string LStatus = oku["STATUS"].ToString();
                if (oku["Sayi"].ToString() != "0")
                {
                    if (LStatus == "1")
                    {
                        LBLUyar.Text = "Bu Üründen Eski Siparişiniz Sistemimizde " + oku["Sayi"].ToString() + " Adet ONAY Beklemekte.\n";
                    }
                    if (LStatus == "4")
                    {
                        LBLUyar.Text = "Bu Üründen Eski Siparişiniz Sistemimizde " + oku["Sayi"].ToString() + " Adet SEVK Beklemekte.";
                    }
                }
            }
        }
        protected void BilgiCek()
        {
            string stockref = Request.QueryString["stref"];
            HttpCookie user = Request.Cookies["myCerez"];
            HttpCookie giris = Request.Cookies["giris"];
            string LFiyatG = giris["LFiyatg"];
            string CLIENTREF = user["CLIENTREF"];
            string USERID = user["userid"];
            string CURR = "0";
            HFVade.Value = "0";
            HFMik.Value = "0";
            HFVadeOran.Value = "0";
            HFMikOran.Value = "0";
            HFGenelOran.Value = "0";
            HFCURRATE.Value = "1";

            HFYetkiOran.Value = "0";
            decimal FrmtSayi = 0;
            TXTBRF.Visible = false;
            TXTTLFiyat.Visible = false;
            TXTTLKDVliFiyat.Visible = false;
            TXTMik.Visible = false;
            PNLListe.Visible = (LFiyatG == "1") ? true : false;

            //price cek
            oku = baglanti.DataReaderAl("select PRICE,CURRENCY from LG_" + baglanti.GFirma + "_PRCLIST where BEGDATE<='" + DateTime.Now.ToString("MM/dd/yyyy") + "' and ENDDATE>='" + DateTime.Now.ToString("MM/dd/yyyy") + "' and CARDREF=" + stockref + " and PTYPE=2 ");
            if (oku.Read())
            {
                HFPRCPRICE.Value = oku["PRICE"].ToString();
                //cookie yetki kontrolü
                //SqlDataReader sread = baglanti.DataReaderAl("select ListeFiyatGor from " + baglanti.INITIAL2 + "..ZZ_URoles where UserId=" + USERID + "");
                //if (sread.Read())
                //{
                //    LBLLfiyati.Text = Convert.ToDecimal(HFPRCPRICE.Value).ToString(",0.00");
                //}
                //control bitir
                FrmtSayi = Convert.ToDecimal(HFPRCPRICE.Value);
                TXTBRF.ToolTip = HFPRCPRICE.Value;
                TXTTLFiyat.Text = FrmtSayi.ToString(",0.00");
                CURR = oku[1].ToString();

                if (CURR == "20") { HFCURRSYM.Value = "€"; }
                if (CURR == "1") { HFCURRSYM.Value = "$"; }
                if (CURR == "160") { HFCURRSYM.Value = "₺"; }
                HFCURR.Value = CURR;
                TXTBRF.Text = FrmtSayi.ToString(",0.00") + " " + HFCURRSYM.Value;
                LBLListe.Text += FrmtSayi.ToString(",0.00") + " " + HFCURRSYM.Value;
            }
            else
            {
                LBLFiyatUyar.Text = "Ürün Fiyatlandırılmamıştır Bayiye Başvurun!";
                LBLFiyatUyar.Visible = true;
                TXTMik.Visible = false;
                Button1.Enabled = false;
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Ürün Fiyatlandırılmamıştır Lütfen Yetkilinize Başvurun !!! ');", true);
                string startUpScript = string.Format("window.parent.HidePopupAndShowInfoOneri2('Server','');");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ANY_KEY", startUpScript, true);
                return;

            }

            //döviz kuru al
            oku = baglanti.DataReaderAl("select rates3 from LG_EXCHANGE_" + baglanti.GFirma + " where CRTYPE=" + CURR + " and EDATE='" + DateTime.Now.ToString("MM/dd/yyyy") + "'");
            if (oku.Read())
            {
                HFCURRATE.Value = oku[0].ToString();
            }
            else if (CURR != "160")
            {
                LBLMAx.Text = "Günlük Kurlar Sisteme Girilmemiştir!";
                TXTMik.ReadOnly = true;
                Button1.Enabled = false;
                return;
            }

            LBLListeTl.Text += Convert.ToDecimal(Convert.ToDouble(HFPRCPRICE.Value) * Convert.ToDouble(HFCURRATE.Value)).ToString(",0.00") + " ₺";
            if (CURR == "160") { HFCURRATE.Value = "1"; }
            TXTTLFiyat.Text = (Convert.ToDouble(TXTBRF.ToolTip) * Convert.ToDouble(HFCURRATE.Value)).ToString();
            TXTTLFiyat.ToolTip = (Convert.ToDouble(TXTBRF.ToolTip) * Convert.ToDouble(HFCURRATE.Value)).ToString();

            string icSql = "";
            double INDKatsayi = 1, INDKatsayi2 = 1, INDORAN, INDKatsayi3 = 1, INDKatsayiKamp = 1;
            double CURRATE = Convert.ToDouble(HFCURRATE.Value);
            oku = baglanti.DataReaderAl("select INDORAN,SQLSTR from " + baglanti.INITIAL2 + "..IND_GRUP where Baslangic<=CONVERT(date, getdate()) and Bitis>=CONVERT(date, getdate()) ");
            while (oku.Read())
            {
                string LSqlSTR = oku[1].ToString();
                SqlDataReader oku2 = baglanti.DataReaderAl("select LOGICALREF from LG_" + baglanti.GFirma + "_ITEMS where LOGICALREF=" + stockref + " " + LSqlSTR);
                if (oku2.Read())
                {
                    HFKAMPORAN.Value = oku[0].ToString();
                    INDKatsayiKamp -= (Convert.ToDouble(oku[0].ToString())) / 100;

                    break;
                }

            }
            oku = baglanti.DataReaderAl("select CODE,NAME,VAT,SPECODE,SPECODE2,SPECODE3,LOGICALREF,CYPHCODE from LG_" + baglanti.GFirma + "_ITEMS where LOGICALREF=" + stockref + "");
            if (oku.Read())
            {

                HFUCODE.Value = oku["CODE"].ToString();
                HFUNAME.Value = oku["NAME"].ToString();
                HFUP114.Value = oku["SPECODE"].ToString();
                HFUP118.Value = oku["SPECODE2"].ToString();
                HFUP119.Value = oku["SPECODE3"].ToString();
                HFUREF.Value = oku["LOGICALREF"].ToString();
                HFCYPHCODE.Value = oku["CYPHCODE"].ToString();
                //car, kodu 9 lu ise kdvli değilse 0

                HFVAT.Value = (user["KDVVAR"] == "1") ? oku["VAT"].ToString() : "0";
                if (HFVAT.Value == "0")
                {
                    HFTRADINGGRP.Value = user["TRADINGGRP"];
                    HFVATINC.Value = "0";
                    HFDIVISION.Value = "0";
                }
                else
                {
                    HFTRADINGGRP.Value = "02 MAVi";
                    HFVATINC.Value = "1";
                    HFDIVISION.Value = "1";
                }
            }
            HFCURROran.Value = "0";
            //kur indirimi kontrol et
            double INDKurOran = 0;
            oku = baglanti.DataReaderAl("select YeniKur from " + baglanti.INITIAL2 + "..ZZ_KUR where OzelKod='" + HFUP114.Value + "' and OzelKod2='" + HFUP118.Value + "'");
            if (oku.Read())
            {

                INDKurOran = Convert.ToDouble(oku[0].ToString());
                HFCURROran.Value = INDKurOran.ToString().Replace(",", ".");
            }
            //
            #region ürün grup kampanyası
            oku = baglanti.DataReaderAl("select SQLSTR,VADEREF,MIKREF,INDORAN,isnull(YINDORAN,0) as YINDORAN,YetkiRef from " + baglanti.INITIAL2 + "..A_CMPGNLineUrun where URUNKODU='" + HFUCODE.Value + "' and Baslangic<=CONVERT(date, getdate()) and Bitis>=CONVERT(date, getdate()) ");
            while (oku.Read())
            {
                icSql = oku[0].ToString();
                string YetkiRef = oku["YetkiRef"].ToString();

                HFCOND.Value = icSql;
                HFVade.Value = oku[1].ToString();
                HFMik.Value = oku[2].ToString();
                INDORAN = Convert.ToDouble(oku[3].ToString());
                HFGenelOran.Value = oku[3].ToString();

                SqlDataReader oku3 = baglanti.DataReaderAl("select VADESTR,INDORAN from " + baglanti.INITIAL2 + "..A_CYPHCODELine where VREF=" + YetkiRef + "");
                while (oku3.Read())
                {
                    string YetkiSTR = oku3["VADESTR"].ToString();
                    if (YetkiSTR == HFCYPHCODE.Value) { HFYetkiOran.Value = oku3[1].ToString(); }
                }

                INDKatsayi -= INDORAN / 100;
                INDKatsayi2 -= (Convert.ToDouble(HFYetkiOran.Value)) / 100;
                INDKatsayi3 -= (INDKurOran) / 100;
                FrmtSayi = Convert.ToDecimal(((Convert.ToDouble(HFPRCPRICE.Value) * INDKatsayi)) * INDKatsayi2 * INDKatsayi3 * INDKatsayiKamp);
                TXTBRF.Text = FrmtSayi.ToString(",0.00") + " " + HFCURRSYM.Value;
                TXTBRF.ToolTip = ((Convert.ToDouble(HFPRCPRICE.Value) * INDKatsayi) * INDKatsayi2 * INDKatsayi3 * INDKatsayiKamp).ToString();
                TXTTLFiyat.Text = (Convert.ToDouble(HFPRCPRICE.Value) * INDKatsayi * CURRATE * INDKatsayi2 * INDKatsayi3 * INDKatsayiKamp).ToString();


                TXTTLFiyat.ToolTip = (Convert.ToDouble(HFPRCPRICE.Value) * INDKatsayi * CURRATE * INDKatsayi2 * INDKatsayi3 * INDKatsayiKamp).ToString();
                goto rafet;


            }


            #endregion

            #region ön kampanya
            //Ön Kampanya
            oku = baglanti.DataReaderAl("select SQLSTR,VADEREF,MIKREF,INDORAN,isnull(YINDORAN,0) as YINDORAN,YetkiRef from " + baglanti.INITIAL2 + "..A_CMPGNLineOn where CLIENTREF=" + CLIENTREF + "");
            while (oku.Read())
            {
                icSql = oku[0].ToString();
                string YetkiRef = oku["YetkiRef"].ToString();
                SqlDataReader oku2 = baglanti.DataReaderAl("select CODE,SPECODE as [P114],SPECODE2 as [P118],SPECODE3 as  [P119] ,LOGICALREF,NAME,CYPHCODE,VAT from LG_" + baglanti.GFirma + "_ITEMS  where LOGICALREF=" + stockref + " " + icSql + "");
                if (oku2.Read())
                {
                    HFCOND.Value = icSql;
                    HFVade.Value = oku[1].ToString();
                    HFMik.Value = oku[2].ToString();
                    INDORAN = Convert.ToDouble(oku[3].ToString());
                    HFGenelOran.Value = oku[3].ToString();


                    HFCYPHCODE.Value = oku2["CYPHCODE"].ToString();
                    HFUCODE.Value = oku2["CODE"].ToString();
                    HFUNAME.Value = oku2["NAME"].ToString();
                    HFUP114.Value = oku2["P114"].ToString();
                    HFUP118.Value = oku2["P118"].ToString();
                    HFUP119.Value = oku2["P119"].ToString();
                    HFUREF.Value = oku2["LOGICALREF"].ToString();


                    SqlDataReader oku3 = baglanti.DataReaderAl("select VADESTR,INDORAN from " + baglanti.INITIAL2 + "..A_CYPHCODELine where VREF=" + YetkiRef + "");
                    while (oku3.Read())
                    {
                        string YetkiSTR = oku3["VADESTR"].ToString();
                        if (YetkiSTR == HFCYPHCODE.Value) { HFYetkiOran.Value = oku3[1].ToString(); }
                    }




                    INDKatsayi -= INDORAN / 100;
                    INDKatsayi2 -= (Convert.ToDouble(HFYetkiOran.Value)) / 100;
                    INDKatsayi3 -= (INDKurOran) / 100;
                    FrmtSayi = Convert.ToDecimal(((Convert.ToDouble(HFPRCPRICE.Value) * INDKatsayi)) * INDKatsayi2 * INDKatsayi3 * INDKatsayiKamp);
                    TXTBRF.Text = FrmtSayi.ToString(",0.00") + " " + HFCURRSYM.Value;
                    TXTBRF.ToolTip = ((Convert.ToDouble(HFPRCPRICE.Value) * INDKatsayi) * INDKatsayi2 * INDKatsayi3 * INDKatsayiKamp).ToString();
                    TXTTLFiyat.Text = (Convert.ToDouble(HFPRCPRICE.Value) * INDKatsayi * CURRATE * INDKatsayi2 * INDKatsayi3 * INDKatsayiKamp).ToString();


                    TXTTLFiyat.ToolTip = (Convert.ToDouble(HFPRCPRICE.Value) * INDKatsayi * CURRATE * INDKatsayi2 * INDKatsayi3 * INDKatsayiKamp).ToString();
                    goto rafet;
                }

            }
            #endregion
            #region normal kampanya
            //Normal Kampanya
            oku = baglanti.DataReaderAl("select SQLSTR,VADEREF,MIKREF,INDORAN,isnull(YINDORAN,0) as YINDORAN,YetkiRef from " + baglanti.INITIAL2 + "..A_CMPGNLine where CLIENTREF=" + CLIENTREF + "");
            while (oku.Read())
            {
                icSql = oku[0].ToString();
                string YetkiRef = oku["YetkiRef"].ToString();
                SqlDataReader oku2 = baglanti.DataReaderAl("select CODE,SPECODE as [P114],SPECODE2 as [P118],SPECODE3 as  [P119] ,LOGICALREF,NAME,CYPHCODE,VAT from LG_" + baglanti.GFirma + "_ITEMS  where LOGICALREF=" + stockref + " " + icSql + "");
                if (oku2.Read())
                {
                    HFCOND.Value = icSql;
                    HFVade.Value = oku[1].ToString();
                    HFMik.Value = oku[2].ToString();
                    INDORAN = Convert.ToDouble(oku[3].ToString());
                    HFGenelOran.Value = oku[3].ToString();

                    HFCYPHCODE.Value = oku2["CYPHCODE"].ToString();
                    HFUCODE.Value = oku2["CODE"].ToString();
                    HFUNAME.Value = oku2["NAME"].ToString();
                    HFUP114.Value = oku2["P114"].ToString();
                    HFUP118.Value = oku2["P118"].ToString();
                    HFUP119.Value = oku2["P119"].ToString();
                    HFUREF.Value = oku2["LOGICALREF"].ToString();

                    SqlDataReader oku3 = baglanti.DataReaderAl("select VADESTR,INDORAN from " + baglanti.INITIAL2 + "..A_CYPHCODELine where VREF=" + YetkiRef + "");
                    while (oku3.Read())
                    {
                        string YetkiSTR = oku3["VADESTR"].ToString();
                        if (YetkiSTR == HFCYPHCODE.Value) { HFYetkiOran.Value = oku3[1].ToString(); }
                    }

                    INDKatsayi -= INDORAN / 100;
                    INDKatsayi2 -= (Convert.ToDouble(HFYetkiOran.Value)) / 100;
                    INDKatsayi3 -= (INDKurOran) / 100;
                    FrmtSayi = Convert.ToDecimal(((Convert.ToDouble(HFPRCPRICE.Value) * INDKatsayi)) * INDKatsayi2 * INDKatsayi3 * INDKatsayiKamp);
                    TXTBRF.Text = FrmtSayi.ToString(",0.00") + " " + HFCURRSYM.Value;
                    TXTBRF.ToolTip = ((Convert.ToDouble(HFPRCPRICE.Value) * INDKatsayi) * INDKatsayi2 * INDKatsayi3 * INDKatsayiKamp).ToString();
                    TXTTLFiyat.Text = (Convert.ToDouble(HFPRCPRICE.Value) * INDKatsayi * CURRATE * INDKatsayi2 * INDKatsayi3 * INDKatsayiKamp).ToString();


                    TXTTLFiyat.ToolTip = (Convert.ToDouble(HFPRCPRICE.Value) * INDKatsayi * CURRATE * INDKatsayi2 * INDKatsayi3 * INDKatsayiKamp).ToString();

                }

            }
            #endregion
            //son fiyat
            oku = baglanti.DataReaderAl("select SONFIYAT from LOGOKAMP..IND_URUN where URUNKODU='" + HFUCODE.Value + "' and Baslangic<=CONVERT(date, getdate()) and Bitis>=CONVERT(date, getdate())");
            if (oku.Read())
            {
                FrmtSayi = Convert.ToDecimal(oku[0].ToString());
                // HFPRCPRICE.Value = oku[0].ToString();
                HFSONFIYAT.Value = oku[0].ToString();
                HFSONFIYATORAN.Value = (100 - ((Convert.ToDecimal(HFSONFIYAT.Value) / Convert.ToDecimal(HFPRCPRICE.Value)) * 100)).ToString();
                TXTBRF.Text = FrmtSayi.ToString(",0.00") + " " + HFCURRSYM.Value;
                TXTBRF.ToolTip = Convert.ToDecimal(oku[0].ToString()).ToString("N");
                TXTTLFiyat.Text = (Convert.ToDouble(oku[0].ToString()) * CURRATE).ToString();
                TXTTLFiyat.ToolTip = TXTTLFiyat.Text;

                TXTBRF.Visible = true;
                TXTTLFiyat.Visible = true;
                TXTTLKDVliFiyat.Visible = true;
                TXTMik.Visible = true;
                RPTVade.Visible = false;
                CMBMiktar.Visible = false;
            }
            //son miktar kampanyası
            oku = baglanti.DataReaderAl("select MREF from LOGOKAMP..IND_UrunMikVade where CODE='" + HFUCODE.Value + "'  and Baslangic<=CONVERT(date, getdate()) and Bitis>=CONVERT(date, getdate()) ");
            if (oku.Read())
            {
                HFMik.Value = oku[0].ToString();
                // HFVade.Value = "0";
                RPTVade.Visible = true;
                LBLVADE.Visible = true;
                if (HFVade.Value == "0")
                {
                    TXTBRF.Visible = true;
                    TXTTLFiyat.Visible = true;
                    TXTTLKDVliFiyat.Visible = true;
                    TXTMik.Visible = true;
                }

                LBLMikKampanyasi.Visible = true;
            }

            rafet:
            double KDVMik = (HFVAT.Value == "0") ? 1 : (Convert.ToDouble(HFVAT.Value) / 100) + 1;
            TXTTLKDVliFiyat.Text = (Convert.ToDouble(TXTTLFiyat.ToolTip) * KDVMik).ToString();
            TXTTLKDVliFiyat.Text = Convert.ToDecimal(TXTTLKDVliFiyat.Text).ToString(",0.00");
            //   lblkdv.Text = KDVMik.ToString();
            TXTTLFiyat.Text = Convert.ToDecimal(TXTTLFiyat.ToolTip).ToString(",0.00");
            if (HFSONFIYAT.Value == "0" && HFMik.Value == "0")
            {
                GenelIndirimKontrolu();
            }

        }

        protected void GenelIndirimKontrolu()
        {

            if (HFGenelOran.Value == "0")
            {
                LBLUyar.Text = "Satış Şartı Girilmemiş Bir Ürün Ekleyemezsiniz \n Lütfen Yetkilinize Başvurun!!!";
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Satış Şartı Girilmemiş Bir Ürün Ekleyemezsiniz Lütfen Yetkilinize Başvurun !!! ');", true);
                string startUpScript = string.Format("window.parent.HidePopupAndShowInfoOneri2('Server','');");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ANY_KEY", startUpScript, true);
                return;
            }
            else
            {
                //TXTTLFiyat.Visible = true;
                //TXTBRF.Visible = true;
                //TXTTLKDVliFiyat.Visible = true;
            }

        }

        protected void KampanyaCheck()
        {
            double mikoran = 0, vadoran = 0;
            if (HFVade.Value == "0" && HFMik.Value == "0") { return; }
            oku = baglanti.DataReaderAl("select isnull(max(INDORAN),0) as MINDORAN from " + baglanti.INITIAL2 + "..A_MikLine where MREF=" + HFMik.Value + "");
            if (oku.Read())
            {
                mikoran = Convert.ToDouble(oku[0].ToString());
            }
            oku = baglanti.DataReaderAl("select isnull(max(INDORAN),0) as VINDORAN from " + baglanti.INITIAL2 + "..A_VadeLine where VREF=" + HFVade.Value + "");
            if (oku.Read())
            {
                vadoran = Convert.ToDouble(oku[0].ToString());
            }
            double yuzde = 1 - ((vadoran / 100));
            double yuzde2 = 1 - (mikoran / 100);
            double bFiyat = Convert.ToDouble(TXTBRF.ToolTip);
            Label7.Text = "Bu Ürünü";
            LBLMAx.Text = "Vadeyi Kısa Miktarı Çok Seçerek " + Convert.ToDecimal(((bFiyat * yuzde) * yuzde2) * Convert.ToDouble(HFCURRATE.Value)).ToString(",0.00") + " TL ye kadar Alabilirsiniz!!!";
        }

        protected void CMBCEK()
        {
            int a = 0, b = 0;
            string ad = "", oran = "";
            CMBVade.Items.Clear();
            CMBVade.Items.Add("CC", 0);
            rafet:
            oku = baglanti.DataReaderAl("select (CASE WHEN VADESTR='0' THEN 'PEŞİN' ELSE VADESTR END)AS VADESTR,INDORAN,LOGICALREF from " + baglanti.INITIAL2 + "..A_VadeLine where VREF=" + HFVade.Value + " order by TRIMSTR asc");
            while (oku.Read())
            {
                ad = oku[0].ToString(); oran = oku[1].ToString();
                CMBVade.Items.Add(ad, oran);
                a++;
            }
            if (a == 0) { CMBVade.Items.Add("", "0"); }
            CMBVade.SelectedIndex = 0;
            CMBMiktar.Items.Clear();
            oku = baglanti.DataReaderAl("select MIKSTR,INDORAN,LOGICALREF from " + baglanti.INITIAL2 + "..A_MikLine where MREF=" + HFMik.Value + " order by TRIMSTR asc");
            while (oku.Read())
            {
                //LBLKazanc.Visible = true;
                CMBMiktar.Items.Add(oku[0].ToString(), oku[1].ToString());
                b++;
            }
            if (b == 0) { CMBMiktar.Items.Add("", "0"); }
            CMBMiktar.SelectedIndex = 0;
            if (a == 1) { CMBVade.Items.Clear(); CMBVade.Items.Add(ad, oran); CMBVade.SelectedIndex = 0; CMBHesap(); }
            if (HFVade.Value == "0" && HFMik.Value == "0")
            {
                LBLMiktar.Visible = false;
                LBLVADE.Visible = false;
                TXTBRF.Visible = true; TXTTLFiyat.Visible = true; TXTTLKDVliFiyat.Visible = true;
                TXTMik.Visible = true;
                CMBMiktar.Visible = false;
                LBLKazanc.Visible = false;
                CMBVade.Visible = false;
                UPDRPTVade.Visible = false;
            }
        }

        protected void SepetCheck()
        {
            string stockref = Request.QueryString["stref"];
            HttpCookie giris = Request.Cookies["giris"];
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            string yetki = giris["yetki"];
            string ISADD = Request.QueryString["ISADD"];
            oku = baglanti.DataReaderAl("select AMOUNT as Miktar,LOGICALREF as LSayi from " + baglanti.INITIAL2 + "..Z_SipLine where CLIENTREF=" + CLIENTREF + " and STOCKREF=" + stockref + " and DURUM=0  ");
            if (oku.Read())
            {
                if (oku[0].ToString() == "") { return; }
                else
                {
                    if (ISADD == "1")
                    {
                        LBLSepet.Text = "Sepetinizde!!! Bu Üründen Toplam:" + oku[0].ToString() + " Adet " + oku[1].ToString() + " Satırda Bulunmaktadır.";
                        HFISADD.Value = "0";
                        HFSipLineRef.Value = oku[1].ToString();
                    }
                }

            }
            else
            {
                HFISADD.Value = "1";
            }

        }
        protected void UPDSEPET()
        {
            string ISADD = Request.QueryString["ISADD"];
            if (ISADD == "1") { return; }
            string SipRef = Request.QueryString["SipRef"];
            string CURR = "";
            oku = baglanti.DataReaderAl("select TOPTLFIYAT, VADESTR,VADORAN,MIKSTR,MIKORAN,PRICE,AMOUNT,(PRICE*AMOUNT) as LINENET,CURRID,TLFIYAT from " + baglanti.INITIAL2 + "..Z_SipLine where LOGICALREF=" + SipRef + "");
            if (oku.Read())
            {
                CURR = oku["CURRID"].ToString();
                CMBVade.SelectedItem = CMBVade.Items.FindByText(oku["VADESTR"].ToString());
                CMBMiktar.SelectedItem = CMBMiktar.Items.FindByText(oku["MIKSTR"].ToString());
                HFMikOran.Value = oku["MIKORAN"].ToString();
                HFVFiyat.Value = oku["PRICE"].ToString();
                if (CURR == "20") { HFCURRSYM.Value = "€"; }
                if (CURR == "1") { HFCURRSYM.Value = "$"; }
                if (CURR == "160") { HFCURRSYM.Value = "₺"; }
                HFCURR.Value = CURR;
                TXTTLFiyat.Text = oku["TLFIYAT"].ToString();
                TXTBRF.Text = oku["PRICE"].ToString() + " " + HFCURRSYM.Value;
                TXTMik.Text = Convert.ToDouble(oku["AMOUNT"].ToString()).ToString("#");
                TXTTopTut.Text = Convert.ToDouble(oku["TOPTLFIYAT"].ToString()).ToString("#.##");
                TXTBRF.Visible = true;
                TXTTLFiyat.Visible = true;
                TXTTLKDVliFiyat.Visible = true;
                TXTMik.Visible = true;
            }
        }
        private void VADEFiyatGetir()
        {
            if (TXTBRF.ToolTip == "") { return; }
            double CURRATE = Convert.ToDouble(HFCURRATE.Value);
            RPTVade.DataSource = baglanti.TabloAl("select (CASE WHEN VADESTR='0' THEN 'PEŞİN' ELSE VADESTR END)AS VADESTR," + TXTBRF.ToolTip.Replace(",", ".") + "*(1-INDORAN/100)*(1-" + HFMikOran.Value.Replace(",", ".") + "/100) as Fiyat," +
                " (" + TXTBRF.ToolTip.Replace(",", ".") + "*(1-INDORAN/100)*(1-" + HFMikOran.Value.Replace(",", ".") + "/100)*" + CURRATE.ToString().Replace(",", ".") + ") as TLFiyat," +
                "(CASE WHEN '" + CMBVade.Text.Replace("PEŞİN", "0") + "'=VADESTR THEN 'background:#aaa;' END) AS TRBG," +
                "INDORAN,'" + HFCURRSYM.Value + "' as CURRSYMB from LOGOKAMP..A_VadeLine where VREF=" + HFVade.Value + " order by CAST(VADESTR AS int) ");
            RPTVade.DataBind();
            UPDRPTVade.Update();


        }
        private void UrunAmbarStokCek()
        {
            string stockref = Request.QueryString["stref"];
            oku = baglanti.DataReaderAl("SELECT STOCKREF,SUM(ONHAND) as R FROM LV_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STINVTOT WHERE INVENNO=1 and STOCKREF=" + stockref + " GROUP BY STOCKREF");
            if (oku.Read())
            {
                LBLAmbarStok.Text = "Ambar Stoğu : " + oku[1].ToString();
            }
            else
            {
                LBLAmbarStok.Text = "Ambar Stoğu Kaydı Bulunamamıştır. ";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //TXTMik.Attributes["onmouseover"] = "javascript:this.focus();";
            TXTMik.Attributes["onfocus"] = "javascript:this.select();";

            if (!IsPostBack)
            {
                UrunAmbarStokCek();
                //    KilitCheck();
                // KoliBilgisiCek();
                // SipKontrol();
                BilgiCek();
                CMBCEK();

                KampanyaCheck();
                //SepetCheck();
                UPDSEPET();
                VADEFiyatGetir();
            }
            if (CMBMiktar.Visible == false)
            {
                LBLKazanc.Visible = false;
            }

        }

        private void SonTutariYuvarla()
        {
            var tlFiyat = Convert.ToDouble(TXTTLKDVliFiyat.Text) / 1.18;
            var brFiyat = tlFiyat / Convert.ToDouble(HFCURRATE.Value);
            var tlTopFiyat = Convert.ToDouble(TXTTLKDVliToplam.Text) / 1.18;
            TXTBRF.Text = Convert.ToDecimal(brFiyat).ToString(",0.00");
            TXTTLFiyat.Text = Convert.ToDecimal(tlFiyat).ToString(",0.00");
            TXTTopTut.Text = Convert.ToDecimal(tlTopFiyat).ToString(",0.00");
            HFVFiyat.Value = Convert.ToDecimal(brFiyat).ToString(",0.00");
            var reverseGenel = 1 - Convert.ToDouble(HFGenelOran.Value) / 100;
            var reverseMik = 1 - Convert.ToDouble(HFMikOran.Value) / 100;
            var reverseVade = 1 - Convert.ToDouble(HFVadeOran.Value) / 100;
            var reverseYetki = 1 - Convert.ToDouble(HFYetkiOran.Value) / 100;

            var listeFiyat = brFiyat / reverseGenel / reverseMik / reverseVade / reverseYetki;
            HFPRCPRICE.Value = Convert.ToDecimal(listeFiyat).ToString();
        }

        string GSipId;
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TXTMik.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Miktar Giriniz Ve Sepete Ekle Tuşuna Tekrar Basınız !!! ');", true);
                return;
            }
            if (TXTTopTut.Text == "") { return; }
            string ISADD = Request.QueryString["ISADD"];
            string stockref = Request.QueryString["stref"];
            string SipRef = Request.QueryString["SipRef"];
            string sayfaYenile = Request.QueryString["sayfaYenile"];
            string BFiyat = "0", miktar = TXTMik.Text;
          
            //  string Aciklama = TXTAcik.Text;
            object UREF = "1";
            string SipId = "0";
            string LineExp = CMBVade.SelectedItem.Text + " Gün Vadeli " + CMBMiktar.SelectedItem.Text + " Adet Arası Fiyatı  ";
            BFiyat = HFVFiyat.Value;
            HttpCookie giris = Request.Cookies["giris"];
            HttpCookie user = Request.Cookies["MyCerez"];
            string CariId = user["CLIENTREF"];
            string CTarih = DateTime.Now.ToString("MM/dd/yyyy");
            oku = baglanti.DataReaderAl("select SipStr,SipID from ZTbLUseR where UserId='" + giris["userid"] + "'");
            if (oku.Read()) { GSipId = oku[0].ToString() + "-" + (Convert.ToInt64(oku[1].ToString()) + 1).ToString(); SipId = (Convert.ToInt64(oku[1].ToString()) + 1).ToString(); }
            double CURRATE = Convert.ToDouble(HFCURRATE.Value);
            if (HFGenelOran.Value == "0" && HFSONFIYAT.Value == "0")
            {
                LBLUyar.Text = "Satış Şartı Girilmemiş Bir Ürün Ekleyemezsiniz \n Lütfen Yetkilinize Başvurun!!!";
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Satış Şartı Girilmemiş Bir Ürün Ekleyemezsiniz Lütfen Yetkilinize Başvurun !!! ');", true);
                return;
            }
            if (ISADD == "1")
            {

                baglanti.VeriIslemler("insert into " + baglanti.INITIAL2 + "..Z_SipLine (SONFIYAT,SONFIYATORAN,KAMPORAN,KURINDORAN,KIMDEN,TRADINGGRP,VATINC,DIVISION,TOPTLFIYAT,VAT,TLFIYAT,LISTFIYAT,CURRID,CURRRATE,VADESTR,MIKSTR,ADDDATE,YINDORAN,CLIENTREF,DURUM,SIPID,FICHENO,DATE_,STOCKREF,STOCKCODE,STOCKNAME,AMOUNT,PRICE,GENELIORAN,VADORAN,MIKORAN,LINEEXP) values" +
            "(" + HFSONFIYAT.Value.Replace(",", ".") + "," + HFSONFIYATORAN.Value.Replace(",", ".") + "," + HFKAMPORAN.Value.Replace(",", ".") + "," + HFCURROran.Value + "," + giris["yetki"] + ",'" + HFTRADINGGRP.Value + "'," + HFVATINC.Value + "," + HFDIVISION.Value + "," + TXTTopTut.Text.Replace(",", ".") + "," + HFVAT.Value + "," + TXTTLFiyat.Text.Replace(",", ".") + "," + HFPRCPRICE.Value.Replace(",", ".") + "," + HFCURR.Value + "," + CURRATE.ToString().Replace(",", ".") + ",'" + CMBVade.Text + "','" + CMBMiktar.Text + "','" + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss ") + "'," + HFYetkiOran.Value.Replace(",", ".") + "," + CariId + ",0," + SipId + ",'" + GSipId + "','" + CTarih + "'," + stockref + ",'" + HFUCODE.Value + "','" + HFUNAME.Value + "'," + TXTMik.Text + "," + HFVFiyat.Value.Replace(",", ".") + "," + HFGenelOran.Value.Replace(",", ".") + "," + CMBVade.SelectedItem.Value.ToString().Replace(",", ".") + "," + CMBMiktar.SelectedItem.Value.ToString().Replace(",", ".") + ",'" + LineExp + "')");
            }
            else
            {
                baglanti.VeriIslemler("update " + baglanti.INITIAL2 + "..Z_SipLine set KURINDORAN=" + HFCURROran.Value + ",TOPTLFIYAT=" + TXTTopTut.Text.Replace(",", ".") + ",VAT=" + HFVAT.Value + ",TLFIYAT=" + TXTTLFiyat.Text.Replace(",", ".") + ",LISTFIYAT=" + HFPRCPRICE.Value.Replace(",", ".") + ",CURRID=" + HFCURR.Value + ",CURRRATE=" + CURRATE.ToString().Replace(",", ".") + ",VADESTR='" + CMBVade.Text + "',MIKSTR='" + CMBMiktar.Text + "',EDITDATE='" + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss") + "',AMOUNT=" + TXTMik.Text + ",PRICE=" + HFVFiyat.Value.Replace(",", ".") + ",GENELIORAN=" + HFGenelOran.Value.Replace(",", ".") + ",VADORAN=" + CMBVade.SelectedItem.Value.ToString().Replace(",", ".") + ",MIKORAN=" + CMBMiktar.SelectedItem.Value.ToString().Replace(",", ".") + ",LINEEXP='" + LineExp + "' where LOGICALREF=" + SipRef + "");
            }
            //    //baglanti.VeriIslemler("update " + baglanti.INITIAL2 + "..Z_SipLine set KURINDORAN=" + HFCURROran.Value + ",TOPTLFIYAT=" + TXTTopTut.Text.Replace(",", ".") + ",VAT=" + HFVAT.Value + ",TLFIYAT=" + TXTTLFiyat.Text.Replace(",", ".") + ",LISTFIYAT=" + HFPRCPRICE.Value.Replace(",", ".") + ",CURRID=" + HFCURR.Value + ",CURRRATE=" + CURRATE.ToString().Replace(",", ".") + ",VADESTR='" + CMBVade.Text + "',MIKSTR='" + CMBMiktar.Text + "',EDITDATE='" + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss") + "',AMOUNT=" + TXTMik.Text + ",PRICE=" + HFVFiyat.Value.Replace(",", ".") + ",GENELIORAN=" + HFGenelOran.Value.Replace(",", ".") + ",VADORAN=" + CMBVade.SelectedItem.Value.ToString().Replace(",", ".") + ",MIKORAN=" + CMBMiktar.SelectedItem.Value.ToString().Replace(",", ".") + ",LINEEXP='" + LineExp + "' where LOGICALREF=" + SipRef + "");
            //    baglanti.VeriIslemler("update " + baglanti.INITIAL2 + "..Z_SipLine set EDITDATE='" + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss") + "',AMOUNT=AMOUNT+" + TXTMik.Text + " where LOGICALREF=" + HFSipLineRef.Value + "");



            //öneri kontrolü yap
            string ParentOneri = "0";
            //
            string startUpScript = string.Format("window.parent.HidePopupAndShowInfo('Server'," + ParentOneri + "," + stockref + "," + sayfaYenile + ");");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "ANY_KEY", startUpScript, true);
        }

        protected void TXTMik_TextChanged(object sender, EventArgs e)
        {
            try
            {
                if (TXTMik.Text.Length == 0) { return; }
                if (TXTBRF.Visible == false)
                {
                    LBLUyar.Text = "Lütfen Vade Tablosundan Bir Vade Şartı Seçin.";
                    return;
                }
                double KDVMik = (HFVAT.Value == "0") ? 1 : (Convert.ToDouble(HFVAT.Value) / 100) + 1;
                if (CMBMiktar.Text != "")
                {

                    int ks = (Convert.ToInt32(CMBMiktar.SelectedItem.Text.Split('-')[0]));
                    int bs = (Convert.ToInt32(CMBMiktar.SelectedItem.Text.Split('-')[1]));
                    if (Convert.ToInt32(TXTMik.Text) > bs && Button1.Enabled == true)
                    {

                        string Msg = "Miktar Aralığından Fazla Miktar Girdiniz. Daha Düşük Fiyat Alacaksınız!!!";
                        LBLUyar.Text = Msg;
                        Control c = this;
                        string scriptStr = "confirm('" + Msg + "')";
                        ScriptManager.RegisterStartupScript(c, typeof(Page), "Tampak", scriptStr, true);
                    }
                    if (Convert.ToInt32(TXTMik.Text) < ks && Button1.Enabled == true)
                    {
                        string Msg = "Miktar Aralığından Az Miktar Girdiniz. Daha Yüksek Fiyat Alacaksınız!!!";
                        LBLUyar.Text = Msg;
                        Control c = this;
                        string scriptStr = "confirm('" + Msg + "')";
                        ScriptManager.RegisterStartupScript(c, typeof(Page), "Tampak", scriptStr, true);

                    }
                }

                string[] STRMik = new string[50];
                int i = 0;
                int IMik = Convert.ToInt32(TXTMik.Text);
                double yuzde = 1, yuzde2 = 1, bFiyat = 0, TLbfiyat = 0;
                TXTTopTut.Text = (IMik * Convert.ToDouble(TXTBRF.ToolTip)).ToString();
                oku = baglanti.DataReaderAl("select MIKSTR,INDORAN from " + baglanti.INITIAL2 + "..A_MikLine where MREF=" + HFMik.Value + " ");
                while (oku.Read())
                {
                    STRMik[i] = oku[0].ToString();
                    int ksayi = Convert.ToInt32(STRMik[i].Split('-')[0]), bsayi = Convert.ToInt32(STRMik[i].Split('-')[1]);
                    if (ksayi <= IMik && IMik <= bsayi)
                    {
                        //indirim yaptır
                        yuzde2 = 1 - ((Convert.ToDouble(oku[1].ToString()) / 100));
                        HFMikOran.Value = CMBMiktar.SelectedItem.Value.ToString();
                        CMBMiktar.Text = ksayi + "-" + bsayi;
                        CMBMiktar.Value = oku[1].ToString();
                        goto rafet;
                    }
                    i++;
                }

                rafet:

                yuzde = 1 - ((Convert.ToDouble(CMBVade.SelectedItem.Value) / 100));
                HFVadeOran.Value = CMBVade.SelectedItem.Value.ToString();
                bFiyat = Convert.ToDouble(TXTBRF.ToolTip);
                TXTBRF.Text = ((bFiyat * yuzde) * yuzde2).ToString();
                HFVFiyat.Value = ((bFiyat * yuzde) * yuzde2).ToString();
                TLbfiyat = Convert.ToDouble(TXTTLFiyat.ToolTip);
                TXTTLFiyat.Text = ((TLbfiyat * yuzde) * yuzde2).ToString();
                TXTTLKDVliFiyat.Text = (((TLbfiyat * yuzde) * yuzde2) * KDVMik).ToString();
                TXTTopTut.Text = (IMik * ((TLbfiyat * yuzde) * yuzde2)).ToString();
                TXTTLKDVliFiyat.Text = Math.Round(Convert.ToDecimal(TXTTLKDVliFiyat.Text)).ToString(",0.00");
                TXTTLFiyat.Text = Convert.ToDecimal(TXTTLFiyat.Text).ToString(",0.00");
                TXTTopTut.Text = Convert.ToDecimal(TXTTopTut.Text).ToString(",0.00");
                TXTBRF.Text = Convert.ToDecimal(((bFiyat * yuzde) * yuzde2)).ToString(",0.00") + " " + HFCURRSYM.Value;
                TXTTLKDVliToplam.Text = Convert.ToDecimal((Convert.ToDecimal(TXTTLKDVliFiyat.Text) * Convert.ToDecimal(TXTMik.Text)).ToString()).ToString(",0.00");
                string kazanc = Convert.ToDecimal(Convert.ToDouble(TXTTLFiyat.ToolTip) - Convert.ToDouble(TXTTLFiyat.Text)).ToString(",0.00");
                // if (kazanc != "0,00") { LBLKazanc.Text = kazanc + " ₺ Kazançtasınız."; } else { LBLKazanc.Text = ""; }
                SonTutariYuvarla();
                double CURRATE = Convert.ToDouble(HFCURRATE.Value);
                RPTVade.DataSource = baglanti.TabloAl("select (CASE WHEN VADESTR='0' THEN 'PEŞİN' ELSE VADESTR END)AS VADESTR," + TXTBRF.ToolTip.Replace(",", ".") + "*(1-INDORAN/100)*(1-" + CMBMiktar.SelectedItem.Value.ToString().Replace(",", ".") + "/100) as Fiyat," +
                    " (" + TXTBRF.ToolTip.Replace(",", ".") + "*(1-INDORAN/100)*(1-" + CMBMiktar.SelectedItem.Value.ToString().Replace(",", ".") + "/100)*" + CURRATE.ToString().Replace(",", ".") + ") as TLFiyat," +
                     "(CASE WHEN '" + CMBVade.Text.Replace("PEŞİN", "0") + "'=VADESTR THEN 'background:#aaa;' END) AS TRBG," +
                    "INDORAN,'" + HFCURRSYM.Value + "' as CURRSYMB from LOGOKAMP..A_VadeLine where VREF=" + HFVade.Value + " order by CAST(VADESTR AS int) ");
                RPTVade.DataBind();
                UPDRPTVade.Update();


            }
            catch (Exception ex)
            {
            }

        }
        protected void CMBHesap()
        {
            double yuzde = 1 - ((Convert.ToDouble(CMBVade.SelectedItem.Value) / 100));
            HFVadeOran.Value = CMBVade.SelectedItem.Value.ToString();
            double yuzde2 = 1 - ((Convert.ToDouble(CMBMiktar.SelectedItem.Value) / 100));
            HFMikOran.Value = CMBMiktar.SelectedItem.Value.ToString();
            double bFiyat = Convert.ToDouble(TXTBRF.ToolTip);
            //TXTBRF.Text = ((bFiyat * yuzde)*yuzde2).ToString() + " "+HFCURRSYM.Value;
            double TLbfiyat = Convert.ToDouble(TXTTLFiyat.ToolTip);
            TXTTLFiyat.Text = ((TLbfiyat * yuzde) * yuzde2).ToString();
            TXTTLFiyat.Text = Convert.ToDecimal(TXTTLFiyat.Text).ToString(",0.00");
            TXTTLKDVliFiyat.Text = Convert.ToDecimal(Convert.ToDouble(TXTTLFiyat.Text) * 1.18).ToString("N");
            TXTBRF.Text = Convert.ToDecimal(((bFiyat * yuzde) * yuzde2)).ToString(",0.00") + " " + HFCURRSYM.Value;
            TXTMik.Text = "";
            TXTTopTut.Text = "";
            string kazanc = Convert.ToDecimal(Convert.ToDouble(TXTTLFiyat.ToolTip) - Convert.ToDouble(TXTTLFiyat.Text)).ToString(",0.00");
            //if (kazanc != "0,00") { LBLKazanc.Text = kazanc + " Tl Kazançtasınız."; } else { LBLKazanc.Text = ""; }

        }
        protected void CMBVade_SelectedIndexChanged(object sender, EventArgs e)
        {
            CMBHesap();

        }

        protected void CMBMiktar_SelectedIndexChanged(object sender, EventArgs e)
        {
            //CMBHesap();
            HFMikOran.Value = CMBMiktar.SelectedItem.Value.ToString();
            VADEFiyatGetir();
            CMBHesap();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string startUpScript = string.Format("window.parent.HidePopupAndShowInfoOneri2('Server','');");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "ANY_KEY", startUpScript, true);
        }

        protected void RPTVade_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            CMBVade.Items.FindByText(e.CommandArgument.ToString()).Selected = true; ;
            HFVadeSTR.Value = e.CommandArgument.ToString();
            CMBHesap();

            VADEFiyatGetir();
            TXTBRF.Visible = true;
            TXTTLFiyat.Visible = true;
            TXTTLKDVliFiyat.Visible = true;
            TXTMik.Visible = true;
        }



    }
}


