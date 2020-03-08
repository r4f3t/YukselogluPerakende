using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Data.SqlClient;
using System.Text;
namespace seyhandagitim
{
    public partial class ZZsepet : System.Web.UI.Page
    {
        protected void KurTablosuGetir()
        {

            SqlDataReader oku = baglanti.DataReaderAl("select CRTYPE,(CASE WHEN CRTYPE=20 THEN '€' WHEN CRTYPE=1 THEN '$' END) as CURRSYM,rates3 as CURRRATE from LG_EXCHANGE_" + baglanti.GFirma + " where  EDATE='" + DateTime.Now.ToString("MM/dd/yyyy") + "' AND CRTYPE in (1,20)");
            while (oku.Read())
            {
                string CRTPY = oku[0].ToString();
                if (CRTPY == "20") { LBLEURORate.Text = oku[2].ToString(); }
                if (CRTPY == "1") { LBLUSDRate.Text = oku[2].ToString(); }
            }

        }
        private string YetkiKoduAl(string Stockref)
        {
            oku = baglanti.DataReaderAl("select CYPHCODE from LG_" + baglanti.GFirma + "_ITEMS where LOGICALREF=" + Stockref + "");
            if (oku.Read())
            {
                return oku[0].ToString();
            }
            else
            {
                return "";
            }
        }
        private void INDOranUPD()
        {
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];

            SqlDataReader sread = baglanti.DataReaderAl("select LOGICALREF,STOCKREF,STOCKCODE from " + baglanti.INITIAL2 + "..Z_SipLine where DURUM=0 and CLIENTREF=" + CLIENTREF + "");
            while (sread.Read())
            {
                decimal INDORAN = 0, VADORAN = 0, MIKORAN = 0, YetkiOran = 0;
                string STOCKREF = sread[1].ToString();
                string Lineref = sread[0].ToString();
                string CYPHCODE = YetkiKoduAl(STOCKREF);
                string STOCKCODE = sread[2].ToString();
                #region ürün bazlı grup kampanyası için kontrol
                oku = baglanti.DataReaderAl("select SQLSTR,VADEREF,MIKREF,INDORAN,isnull(YINDORAN,0) as YINDORAN,YetkiRef from " + baglanti.INITIAL2 + "..A_CMPGNLineUrun where URUNKODU='" + STOCKCODE + "'  and Baslangic<=CONVERT(date, getdate()) and Bitis>=CONVERT(date, getdate()) ");
                while (oku.Read())
                {
                    //  Label8.Text = "Önakamp";
                    string icSql = oku[0].ToString();
                    string YetkiRef = oku["YetkiRef"].ToString();
                    string MikRef = oku["MIKREF"].ToString();
                    string VADEREF = oku["VADEREF"].ToString();

                    INDORAN = Convert.ToDecimal(oku[3].ToString());
                    SqlDataReader oku3 = baglanti.DataReaderAl("select VADESTR,INDORAN from " + baglanti.INITIAL2 + "..A_CYPHCODELine where VREF=" + YetkiRef + " and VADESTR='" + CYPHCODE + "'");
                    while (oku3.Read())
                    {
                        YetkiOran = Convert.ToDecimal(oku3[1].ToString());
                    }
                    //güncelle
                    baglanti.VeriIslemler("update " + baglanti.INITIAL2 + "..Z_SipLine set GENELIORAN=" + INDORAN.ToString().Replace(",", ".") + ",YINDORAN=" + YetkiOran.ToString().Replace(",", ".") + " where LOGICALREF=" + Lineref + "");
                    goto rafet;

                }
                #endregion
                //ön kampanya için kontrol et ve güncelle
                oku = baglanti.DataReaderAl("select SQLSTR,VADEREF,MIKREF,INDORAN,isnull(YINDORAN,0) as YINDORAN,YetkiRef from " + baglanti.INITIAL2 + "..A_CMPGNLineOn where CLIENTREF=" + CLIENTREF + "");
                while (oku.Read())
                {
                    //  Label8.Text = "Önakamp";
                    string icSql = oku[0].ToString();
                    string YetkiRef = oku["YetkiRef"].ToString();
                    string MikRef = oku["MIKREF"].ToString();
                    string VADEREF = oku["VADEREF"].ToString();
                    SqlDataReader oku2 = baglanti.DataReaderAl("select CODE,SPECODE as [P114],SPECODE2 as [P118],SPECODE3 as  [P119] ,LOGICALREF,NAME,CYPHCODE,VAT from LG_" + baglanti.GFirma + "_ITEMS  where LOGICALREF=" + STOCKREF + " " + icSql + "");
                    if (oku2.Read())
                    {
                        INDORAN = Convert.ToDecimal(oku[3].ToString());
                        SqlDataReader oku3 = baglanti.DataReaderAl("select VADESTR,INDORAN from " + baglanti.INITIAL2 + "..A_CYPHCODELine where VREF=" + YetkiRef + " and VADESTR='" + CYPHCODE + "'");
                        while (oku3.Read())
                        {
                            YetkiOran = Convert.ToDecimal(oku3[1].ToString());
                        }
                        //güncelle
                        baglanti.VeriIslemler("update " + baglanti.INITIAL2 + "..Z_SipLine set GENELIORAN=" + INDORAN.ToString().Replace(",", ".") + ",YINDORAN=" + YetkiOran.ToString().Replace(",", ".") + " where LOGICALREF=" + Lineref + "");
                        goto rafet;
                    }

                }
                //Normal Kampanya
                oku = baglanti.DataReaderAl("select SQLSTR,VADEREF,MIKREF,INDORAN,isnull(YINDORAN,0) as YINDORAN,YetkiRef from " + baglanti.INITIAL2 + "..A_CMPGNLine where CLIENTREF=" + CLIENTREF + "");
                while (oku.Read())
                {
                    //Label8.Text = "Norm Kamp";
                    string icSql = oku[0].ToString();
                    string YetkiRef = oku["YetkiRef"].ToString();

                    SqlDataReader oku2 = baglanti.DataReaderAl("select CODE,SPECODE as [P114],SPECODE2 as [P118],SPECODE3 as  [P119] ,LOGICALREF,NAME,CYPHCODE,VAT from LG_" + baglanti.GFirma + "_ITEMS  where LOGICALREF=" + STOCKREF + " " + icSql + "");
                    if (oku2.Read())
                    {
                        INDORAN = Convert.ToDecimal(oku[3].ToString());

                        SqlDataReader oku3 = baglanti.DataReaderAl("select VADESTR,INDORAN from " + baglanti.INITIAL2 + "..A_CYPHCODELine where VREF=" + YetkiRef + " and VADESTR='" + CYPHCODE + "' ");
                        while (oku3.Read())
                        {
                            YetkiOran = Convert.ToDecimal(oku3[1].ToString());
                        }
                        //güncelle

                        baglanti.VeriIslemler("update " + baglanti.INITIAL2 + "..Z_SipLine set GENELIORAN=" + INDORAN.ToString().Replace(",", ".") + ",YINDORAN=" + YetkiOran.ToString().Replace(",", ".") + " where LOGICALREF=" + Lineref + "");
                    }

                }
                //rafet
                //grup oran kontrolü eğer indirim var ise onuda dahil et
                //oku = baglanti.DataReaderAl("select INDORAN,SQLSTR from " + baglanti.INITIAL2 + "..IND_GRUP where Baslangic<=CONVERT(date, getdate()) and Bitis>=CONVERT(date, getdate())");
                //while (oku.Read())
                {

                }


                //son fiyat kontrolü  var ise bir oran hesapla kamporana yaz 
                //aktarım yaparken bu oranı bir satırda belirt diğer oranları açıklamalara yaz

                rafet:
                int i = 0;
            }

        }
        private void SepetFiyatVeIndUPD()
        {
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            oku = baglanti.DataReaderAl("select LOGICALREF,STOCKREF,GENELIORAN,VADORAN,MIKORAN,YINDORAN,isnull(KAMPORAN,0) as KAMPORAN," +
                "isnull(SONFIYAT,0) as SONFIYAT,isnull(SONFIYATORAN,0) as SONFIYATORAN " +
                " from " + baglanti.INITIAL2 + "..Z_SipLine where DURUM=0 and CLIENTREF=" + CLIENTREF + "");
            while (oku.Read())
            {
                string LineRef = oku[0].ToString();
                string LSTOCKREF = oku[1].ToString();
                decimal KampOran = Convert.ToDecimal(oku["KAMPORAN"].ToString());
                decimal SONFIYATORAN = Convert.ToDecimal(oku["SONFIYATORAN"].ToString());
                decimal SONFIYAT = Convert.ToDecimal(oku["SONFIYAT"].ToString());
                decimal ListFiyat = 0, MikOran = Convert.ToDecimal(oku[4].ToString()), Vadoran = Convert.ToDecimal(oku[3].ToString());
                decimal GenOran = Convert.ToDecimal(oku[2].ToString()), YIndOran = Convert.ToDecimal(oku[5].ToString());
                SqlDataReader oku2 = baglanti.DataReaderAl("select PRICE from  LG_" + baglanti.GFirma + "_PRCLIST  where CARDREF=" + LSTOCKREF + " and getdate() between BEGDATE and ENDDATE and PTYPE=2");
                if (oku2.Read())
                {
                    ListFiyat = Convert.ToDecimal(oku2[0].ToString());
                    decimal Price = 0;
                    if (SONFIYAT > 0)
                    {
                        Price = SONFIYAT;
                    }
                    else
                    {
                        Price = ListFiyat * (1 - MikOran / 100) * (1 - Vadoran / 100) * (1 - GenOran / 100) * (1 - YIndOran / 100) * (1 - KampOran / 100);
                    }

                    baglanti.VeriIslemler("update " + baglanti.INITIAL2 + "..Z_SipLine set LISTFIYAT=" + ListFiyat.ToString().Replace(",", ".") + ",PRICE=" + Price.ToString().Replace(",", ".") + " where LOGICALREF=" + LineRef + "");
                }
            }
        }

        protected void SepetKuruUpdate()
        {
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            oku = baglanti.DataReaderAl("select LOGICALREF,CURRID,TOPTLFIYAT,TLFIYAT,AMOUNT,PRICE from " + baglanti.INITIAL2 + "..Z_SipLine where DURUM=0 and CLIENTREF=" + CLIENTREF + "");
            while (oku.Read())
            {
                string LCURRID = oku[1].ToString(), LINEREF = oku[0].ToString();
                decimal LCURRATE = 0, LTOPTLFIYAT = Convert.ToDecimal(oku[2].ToString()), LTLFIYAT = Convert.ToDecimal(oku[3].ToString()), LAMOUNT = Convert.ToDecimal(oku[4].ToString()), LPRICE = Convert.ToDecimal(oku[5].ToString());
                if (LCURRID == "20")
                {
                    LCURRATE = Convert.ToDecimal(LBLEURORate.Text);
                    LTLFIYAT = LPRICE * LCURRATE;
                    LTOPTLFIYAT = LTLFIYAT * LAMOUNT;
                    baglanti.VeriIslemler("update " + baglanti.INITIAL2 + "..Z_SipLine set TOPTLFIYAT=" + LTOPTLFIYAT.ToString().Replace(",", ".") + ",TLFIYAT=" + LTLFIYAT.ToString().Replace(",", ".") + ",CURRRATE=" + LCURRATE.ToString().Replace(",", ".") + " where  DURUM=0 and CLIENTREF=" + CLIENTREF + " and LOGICALREF=" + LINEREF + "");
                }
                if (LCURRID == "1")
                {
                    LCURRATE = Convert.ToDecimal(LBLUSDRate.Text);
                    LTLFIYAT = LPRICE * LCURRATE;
                    LTOPTLFIYAT = LTLFIYAT * LAMOUNT;
                    baglanti.VeriIslemler("update " + baglanti.INITIAL2 + "..Z_SipLine set TOPTLFIYAT=" + LTOPTLFIYAT.ToString().Replace(",", ".") + ",TLFIYAT=" + LTLFIYAT.ToString().Replace(",", ".") + ",CURRRATE=" + LCURRATE.ToString().Replace(",", ".") + " where  DURUM=0 and CLIENTREF=" + CLIENTREF + " and LOGICALREF=" + LINEREF + "");
                }
                if (LCURRID == "160")
                {
                    LCURRATE = 1;
                    LTLFIYAT = LPRICE * LCURRATE;
                    LTOPTLFIYAT = LTLFIYAT * LAMOUNT;
                    baglanti.VeriIslemler("update " + baglanti.INITIAL2 + "..Z_SipLine set TOPTLFIYAT=" + LTOPTLFIYAT.ToString().Replace(",", ".") + ",TLFIYAT=" + LTLFIYAT.ToString().Replace(",", ".") + ",CURRRATE=" + LCURRATE.ToString().Replace(",", ".") + " where  DURUM=0 and CLIENTREF=" + CLIENTREF + " and LOGICALREF=" + LINEREF + "");
                }

            }

        }


        protected void GridGetir()
        {
            HttpCookie giris = Request.Cookies["giris"];
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            string yetki = giris["yetki"];
            SqlDataSource1.SelectCommand = "select S.LOGICALREF,U.NAME as UrunAd,U.CODE as CODE,S.AMOUNT as Miktar,S.TLFIYAT as Bfiyat,TOPTLFIYAT as TFiyat,(TOPTLFIYAT)*(100+S.VAT)/100 as KDVDahil,S.LINEEXP,S.STOCKREF,S.ADDDATE,S.EDITDATE,S.VAT,(S.TLFIYAT)*(100+S.VAT)/100 AS KDVTutar,S.PRICE,(CASE WHEN CURRID=20 THEN '€' WHEN CURRID=1 THEN '$' END) as CURRSYM  from " + baglanti.INITIAL2 + "..Z_SipLine as S inner join LG_" + baglanti.GFirma + "_ITEMS as U on S.STOCKREF=U.LOGICALREF  where  S.DURUM=0 and S.CLIENTREF=" + CLIENTREF + " ";
            GridSepet.DataBind();
        }
        protected void AltToplamGetir()
        {
            HttpCookie giris = Request.Cookies["giris"];
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            string yetki = giris["yetki"];
            if (yetki == "1" || yetki == "4")
            {
                BTNIrsOnay.Visible = true;
            }
            RPTAltToplam.DataSource = baglanti.TabloAl("SELECT isnull(SUM(TOPTLFIYAT),0) AS TOPTLFIYAT,isnull(SUM(TOPTLFIYAT*VAT/100),0) AS TOPKDV,isnull(SUM((TOPTLFIYAT*VAT/100)+TOPTLFIYAT),0) AS TOPKDVTUTAR FROM " + baglanti.INITIAL2 + "..Z_SipLine  WHERE DURUM=0 and CLIENTREF=" + CLIENTREF + " ");
            RPTAltToplam.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //her girişte kur ile güncellesin

            //INDOranUPD();
            //SepetFiyatVeIndUPD();
            KurTablosuGetir();
            // SepetKuruUpdate();

            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            Label1.Text = CLIENTREF;

            GridGetir();
            AltToplamGetir();

        }

        protected void GridSepet_CustomButtonCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCustomButtonCallbackEventArgs e)
        {
            if (e.ButtonID == "GBtNSil")
            {
                string LOGREF = (sender as DevExpress.Web.ASPxGridView.ASPxGridView).GetRowValues(e.VisibleIndex, "LOGICALREF").ToString();
                baglanti.VeriIslemler("delete from " + baglanti.INITIAL2 + "..Z_SipLine where LOGICALREF=" + LOGREF + "");
                GridSepet.DataBind();
            }
        }

        protected void GridSepet_Load(object sender, EventArgs e)
        {

        }

        protected void GridSepet_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {

        }
        string LCariAd, LEMETIN;
        SqlDataReader oku;
        string[] LUrunAd = new string[50];
        string[] LUrunKod = new string[50];
        string[] LUrunMiktar = new string[50];
        string[] LUrunBFiyat = new string[50];
        string[] LUrunAciklama = new string[50];
        int i = 0;
        protected void mailYolla()
        {
            HttpCookie giris = Request.Cookies["giris"];
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            //cari ad cek
            SqlDataReader oku;
            oku = baglanti.DataReaderAl("select DEFINITION_ from LG_" + baglanti.GFirma + "_CLCARD where LOGICALREF=" + CLIENTREF + "");
            if (oku.Read())
            {
                LCariAd = oku[0].ToString();
            }
            //ürünleri cek
            oku = baglanti.DataReaderAl("select U.NAME as UrunAd,U.CODE as CODE,S.AMOUNT as Miktar,S.PRICE as Bfiyat,(S.AMOUNT*S.PRICE) as TFiyat,((S.AMOUNT*S.PRICE*18)/100)+S.AMOUNT*S.PRICE as KDV,S.LINEEXP  from " + baglanti.INITIAL2 + "..Z_SipLine as S left outer join LG_" + baglanti.GFirma + "_ITEMS as U on S.STOCKREF=U.LOGICALREF where  S.Durum=0 and S.CLIENTREF=" + CLIENTREF + "");
            while (oku.Read())
            {
                LUrunAd[i] = oku[0].ToString();
                LUrunKod[i] = oku[1].ToString();
                LUrunMiktar[i] = oku[2].ToString();
                LUrunBFiyat[i] = oku[3].ToString();
                LUrunAciklama[i] = oku["LINEEXP"].ToString();
                i++;
                // LEMETIN+="\n "+oku[0].ToString()+" Adlı "+oku[1].ToString()+" Kodlu Üründen "+oku[3].ToString()+" Birim Fiyatıyla "+oku[4].ToString()+" Adet \n";
            }
            StringBuilder mesaj = new StringBuilder();
            mesaj.Append("<table border=1; width=100%; background=#000;><tr><th>Ürün Adı</th> <th>Ürün Kodu</th> <th>Ürün Br.Fiyat</th> <th>Ürün Miktar</th></tr>");
            for (int j = 0; j < i; j++)
            {
                mesaj.Append("<tr><td>" + LUrunAd[j] + "</td> <td>" + LUrunKod[j] + "</td> <td>" + LUrunBFiyat[j] + "</td> <td>" + LUrunMiktar[j] + "</td> </tr>");
            }
            mesaj.Append("</table>");
            MailMessage ePosta = new MailMessage();
            ePosta.From = new MailAddress("dogan@mentalsoft.net");
            ePosta.To.Add("alpay@mentalsoft.net");
            ePosta.Subject = "Yeni Bir Siparişiniz Var";
            ePosta.Body = "Sipariş Bilgileri \n " + LCariAd + " Adlı Müşteri " + giris["userid"] + " Nolu Plasiyer Aracılığıyla \n " + mesaj;
            SmtpClient smtp = new SmtpClient();
            smtp.Credentials = new NetworkCredential("dogan@mentalsoft.net", "01Adana");
            smtp.Port = 587;
            smtp.Host = "mail.mentalsoft.net";
            ePosta.IsBodyHtml = true;
            smtp.Send(ePosta);
            i = 0;
        }
        SqlConnection cnn = baglanti.Connection();
        SqlConnection cnn2 = baglanti.Connection();



        int PrCLisTReF = 0;
        int grcarisayi = 0, siparissayi = 0, fissayi = 0;
        int[] urunid = new int[30];
        double[] miktar = new double[30];
        int[] cariId = new int[30];
        DateTime[] tarih = new DateTime[30];
        double[] BFiyaT = new double[30];
        double[] BTuTaR = new double[30];
        double[] KdVTuTar = new double[30];
        int[] @VAT = new int[30];
        int[] @USRef = new int[30];
        int[] @UOMRef = new int[30];

        //arraylar
        protected void BtnSipOnay_Click(object sender, EventArgs e)
        {
            SqlDataReader sread;
            //  mailYolla();
            HttpCookie cari = Request.Cookies["myCerez"];
            HttpCookie giris = Request.Cookies["giris"];
            string CLIENTREF = cari["CLIENTREF"];
            string confirmValue = Request.Form["confirm_value"];
            string yetki = giris["yetki"];


        
            string GSipId = "";
            long FisId = 0, LineID = 0;

            //sipyap
            sread = baglanti.DataReaderAl("select SipID,SipStr from ZTbLUseR where UserId='" + giris["userid"] + "'");
            if (sread.Read()) { GSipId = sread[1].ToString() + "-" + sread[0].ToString(); }
            //durum güncelle
            baglanti.VeriIslemler("Update " + baglanti.INITIAL2 + "..Z_SipLine set DURUM=1,DATE_='" + DateTime.Now.ToString("MM/dd/yyyy") + "' where DURUM=0  and CLIENTREF=" + CLIENTREF + " and KIMDEN=" + yetki + "");
            baglanti.VeriIslemler("Update ZTbLUser set SipID=SipID+1 where  UserId=" + giris["userid"] + "");

            GridSepet.DataBind();
            AltToplamGetir();
        }

        protected void ASPxCallbackPanel1_Callback(object sender, DevExpress.Web.ASPxClasses.CallbackEventArgsBase e)
        {

        }

        protected void BtnCIKTI_Click(object sender, EventArgs e)
        {
            Response.Write("<script>");
            Response.Write("window.open('zzzprint.aspx','_blank')");
            Response.Write("</script>");
        }

        protected void BtnSipSil_Click(object sender, EventArgs e)
        {
            HttpCookie cari = Request.Cookies["myCerez"];
            HttpCookie giris = Request.Cookies["giris"];
            string CLIENTREF = cari["CLIENTREF"];
            baglanti.VeriIslemler("delete from " + baglanti.INITIAL2 + "..Z_SipLine where DURUM=0 and CLIENTREF=" + CLIENTREF + "");
            Response.Redirect("zzsepet.aspx");
        }

        protected void GridSepet_HtmlDataCellPrepared(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewTableDataCellEventArgs e)
        {
            HttpCookie cookie = Request.Cookies["giris"];
            if ((cookie["yetki"] == "1" || cookie["yetki"] == "4") && e.DataColumn.Name == "UPDATECOL")
            {
                e.Cell.Attributes.Add("onclick", "EditorOnInit(" + GridSepet.GetRowValues(e.VisibleIndex, "STOCKREF").ToString() + ",'" + GridSepet.GetRowValues(e.VisibleIndex, "CODE").ToString() + "-" + GridSepet.GetRowValues(e.VisibleIndex, "UrunAd").ToString() + "'," + e.VisibleIndex + ",'" + GridSepet.GetRowValues(e.VisibleIndex, "LOGICALREF").ToString() + "');");
                // e.Cell.Attributes.Add("onclick", "onCellClick(" + e.VisibleIndex + ", '" + e.Cell.Text + "')");
                e.Cell.Text = "Satırı\nGüncelle";
            }

        }
        protected void BTNIrsOnay_Click(object sender, EventArgs e)
        {
            SqlDataReader sread;
            //  mailYolla();
            HttpCookie cari = Request.Cookies["myCerez"];
            HttpCookie giris = Request.Cookies["giris"];
            string CLIENTREF = cari["CLIENTREF"];
            string confirmValue = Request.Form["confirm_value"];
            string yetki = giris["yetki"];


            string GSipId = "";
            long FisId = 0, LineID = 0;
            //ürünlerin stok kontrolü
            decimal LFark = 0;
            string LMetin = "";
            sread = baglanti.DataReaderAl("select STOCKREF,AMOUNT,STOCKCODE FROM " + baglanti.INITIAL2 + "..Z_SipLine where  DURUM=0  and CLIENTREF=" + CLIENTREF + " and KIMDEN=" + yetki + "");
            while (sread.Read())
            {
                string stockref = sread[0].ToString();
                oku = baglanti.DataReaderAl("SELECT STOCKREF,SUM(ONHAND) as R FROM LV_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STINVTOT WHERE INVENNO=0 and STOCKREF=" + stockref + " GROUP BY STOCKREF");
                if (oku.Read())
                {

                    decimal LStok = Convert.ToDecimal(oku[1].ToString());
                    LFark = Convert.ToDecimal(Convert.ToDecimal(sread[1].ToString()) - Convert.ToDecimal(oku[1].ToString()));
                    if (LFark > 0)
                    {
                        LMetin = LStok.ToString("#") + " ADET " + sread[2].ToString() + " EKSİK ";
                        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('" + LMetin + " !!! ');", true);
                        return;
                    }

                }
                else
                {
                    LFark = Convert.ToDecimal(Convert.ToDecimal(sread[1].ToString()));
                    LMetin = "Stokta " + sread[2].ToString() + " Bulunmamaktadir :0 Adet!!!";
                    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('" + LMetin + " !!! ');", true);
                    return;
                }
            }
            //sipyap
            sread = baglanti.DataReaderAl("select SipID,SipStr from ZTbLUseR where UserId='" + giris["userid"] + "'");
            if (sread.Read()) { GSipId = sread[1].ToString() + "-" + sread[0].ToString(); }
            //durum güncelle
            baglanti.VeriIslemler("Update " + baglanti.INITIAL2 + "..Z_SipLine set DURUM=3,DATE_='" + DateTime.Now.ToString("MM/dd/yyyy") + "' where DURUM=0  and CLIENTREF=" + CLIENTREF + " and KIMDEN=" + yetki + "");
            baglanti.VeriIslemler("Update ZTbLUser set SipID=SipID+1 where  UserId=" + giris["userid"] + "");

            GridSepet.DataBind();
            AltToplamGetir();
        }

    }
}