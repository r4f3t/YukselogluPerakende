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
        protected void BilgiCek() {
            string stockref = Request.QueryString["stref"];
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            string CURR="0";
            HFVade.Value = "0";
            HFMik.Value = "0";
            HFCURRATE.Value = "1";
            decimal FrmtSayi = 0;
            //price cek
            oku = baglanti.DataReaderAl("select PRICE,CURRENCY from LG_" + baglanti.GFirma + "_PRCLIST where BEGDATE<='" + DateTime.Now.ToString("MM/dd/yyyy") + "' and ENDDATE>='" + DateTime.Now.ToString("MM/dd/yyyy") + "' and CARDREF=" + stockref + " and PTYPE=2 ");
            if (oku.Read())
            {
                HFPRCPRICE.Value = oku["PRICE"].ToString();
                FrmtSayi = Convert.ToDecimal(HFPRCPRICE.Value);
                TXTBRF.Text = FrmtSayi.ToString(",0.00")+" €";
                TXTBRF.ToolTip = FrmtSayi.ToString(",0.00");
                TXTTLFiyat.Text = FrmtSayi.ToString(",0.00");
                CURR = oku[1].ToString();
            }
            else
            {
                LBLMAx.Text = "Ürün Fiyatlandırılmamıştır Bayiye Başvurun!";
                Button1.Enabled = false;
                return;
            }

            //döviz kuru al
            oku = baglanti.DataReaderAl("select RATES2 from LG_EXCHANGE_"+baglanti.GFirma+" where CRTYPE="+CURR+" and EDATE='"+DateTime.Now.ToString("MM/dd/yyyy")+"'");
            if (oku.Read())
            {
                HFCURRATE.Value = oku[0].ToString();
            }
            TXTTLFiyat.Text = (Convert.ToDouble(TXTBRF.ToolTip)*Convert.ToDouble(HFCURRATE.Value)).ToString();
            TXTTLFiyat.ToolTip= (Convert.ToDouble(TXTBRF.ToolTip) * Convert.ToDouble(HFCURRATE.Value)).ToString();
          
            //cari kontrol
            string icSql="";
            double INDKatsayi = 1,INDORAN;
            double CURRATE = Convert.ToDouble(HFCURRATE.Value);
            oku = baglanti.DataReaderAl("select SQLSTR,VADEREF,MIKREF,INDORAN from " + baglanti.INITIAL2 + "..A_CMPGNLine where CLIENTREF=" + CLIENTREF + "");
            while (oku.Read())
            { 
                icSql=oku[0].ToString();
                SqlDataReader oku2 = baglanti.DataReaderAl("select CODE,SPECODE as [P114],SPECODE2 as [P118],SPECODE3 as  [P119] ,LOGICALREF from LG_"+baglanti.GFirma+"_ITEMS  where LOGICALREF=" + stockref + " " + icSql + "");
                if (oku2.Read()) {
                    HFCOND.Value = icSql;
                    HFVade.Value = oku[1].ToString();
                    HFMik.Value = oku[2].ToString();
                    INDORAN=Convert.ToDouble(oku[3].ToString());
                    HFUCODE.Value = oku2["CODE"].ToString();
                    HFUP114.Value = oku2["P114"].ToString();
                    HFUP118.Value = oku2["P118"].ToString();
                    HFUP119.Value = oku2["P119"].ToString();
                    HFUREF.Value = oku2["LOGICALREF"].ToString();
                  
                    INDKatsayi -= INDORAN / 100;
                    FrmtSayi = Convert.ToDecimal((Convert.ToDouble(HFPRCPRICE.Value) * INDKatsayi));
                    TXTBRF.Text = FrmtSayi.ToString(",0.00") + " €";
                    TXTBRF.ToolTip = (Convert.ToDouble(HFPRCPRICE.Value) * INDKatsayi).ToString();
                    TXTTLFiyat.Text = (Convert.ToDouble(HFPRCPRICE.Value) * INDKatsayi*CURRATE).ToString();
                    TXTTLFiyat.ToolTip = (Convert.ToDouble(HFPRCPRICE.Value) * INDKatsayi*CURRATE).ToString();
                }
          
            }
            TXTTLFiyat.Text = Convert.ToDecimal(TXTTLFiyat.Text).ToString(",0.00");
           
        }

        protected void KampanyaCheck() {
            double mikoran = 0,vadoran=0;
            if (HFVade.Value == "0" && HFMik.Value == "0") { return; }
            oku = baglanti.DataReaderAl("select max(INDORAN) as MINDORAN from "+baglanti.INITIAL2+"..A_MikLine where MREF="+HFMik.Value+"");
            if (oku.Read())
            {
                mikoran = Convert.ToDouble(oku[0].ToString());
            }
            oku = baglanti.DataReaderAl("select max(INDORAN) as VINDORAN from " + baglanti.INITIAL2 + "..A_VadeLine where VREF=" + HFVade.Value + "");
            if (oku.Read())
            {
                vadoran = Convert.ToDouble(oku[0].ToString());
            }
            double yuzde = 1 - ((vadoran / 100) + (mikoran / 100));
            double bFiyat = Convert.ToDouble(TXTBRF.ToolTip);
            Label7.Text = "Bu Ürünü";
            LBLMAx.Text ="Vadeyi Kısa Miktarı Çok Seçerek "+ Convert.ToDecimal((bFiyat * yuzde)*Convert.ToDouble(HFCURRATE.Value)).ToString(",0.00")+" TL den Alabilirsiniz!!!";
          }

        protected void CMBCEK() {
            CMBVade.Items.Clear();
            CMBVade.Items.Add("CC",0);
            oku = baglanti.DataReaderAl("select VADESTR,INDORAN from " + baglanti.INITIAL2 + "..A_VadeLine where VREF=" + HFVade.Value + " order by TRIMSTR asc");
            while (oku.Read())
            {
                CMBVade.Items.Add(oku[0].ToString(), oku[1].ToString());
            }
            CMBVade.SelectedIndex = 0;

            CMBMiktar.Items.Clear();
            oku = baglanti.DataReaderAl("select MIKSTR,INDORAN from " + baglanti.INITIAL2 + "..A_MikLine where MREF=" + HFMik.Value + " order by TRIMSTR asc");
            while (oku.Read())
            {
                CMBMiktar.Items.Add(oku[0].ToString(), oku[1].ToString());
            }
            CMBMiktar.SelectedIndex = 0;
            }
      
     
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BilgiCek();
                CMBCEK();
                KampanyaCheck();
            
            }            
        }
        string GSipId;
        protected void Button1_Click(object sender, EventArgs e)
        {

            string stockref = Request.QueryString["stref"];
            string BFiyat = "0", miktar = TXTMik.Text;
            //  string Aciklama = TXTAcik.Text;
            object UREF = "1";
            BFiyat = HFVFiyat.Value;
            HttpCookie giris = Request.Cookies["giris"];
            HttpCookie user = Request.Cookies["MyCerez"];
            string CariId = user["CLIENTREF"];
            oku = baglanti.DataReaderAl("select SipStr,SipID from ZTbLUseR where UserId='" + giris["userid"] + "'");
            if (oku.Read()) { GSipId = oku[0].ToString() + "-" + (Convert.ToInt64(oku[1].ToString()) + 1).ToString(); }
            baglanti.VeriIslemler("insert into ZTbL_Siparisler (DURUM,CariId,UrunId,SipNo,Miktar,UserId,Tarih,BFiyat,FirmaNo,UREF,Aciklama,AddDate)" +
            " values (0," + CariId + "," + stockref + ",'" + GSipId + "'," + miktar + "," + giris["userid"] + ",'" + DateTime.Now.ToString("MM/dd/yyyy") + "'," + BFiyat.ToString().Replace(",", ".") + "," + baglanti.GFirma + "," + UREF.ToString() + ",'Açıklama Satırı','" + DateTime.Now.ToString("MM/dd/yyyy") + "')");

            string startUpScript = string.Format("window.parent.HidePopupAndShowInfo('Server','rafet');");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "ANY_KEY", startUpScript, true);
        }

        protected void TXTMik_TextChanged(object sender, EventArgs e)
        {
            string[] STRMik =new string[50];
            int i = 0;
            int IMik = Convert.ToInt32(TXTMik.Text);
            TXTTopTut.Text=(IMik*Convert.ToDouble(TXTBRF.ToolTip)).ToString();
            oku = baglanti.DataReaderAl("select MIKSTR,INDORAN from " + baglanti.INITIAL2 + "..A_MikLine where MREF=" + HFMik.Value + " ");
            while (oku.Read())
            {
                STRMik[i] = oku[0].ToString();
                int ksayi = Convert.ToInt32(STRMik[i].Split('-')[0]), bsayi =Convert.ToInt32(STRMik[i].Split('-')[1]);
                if (ksayi<=IMik && IMik<=bsayi)
                {
                    //indirim yaptır
                    double yuzde = 1 - ((Convert.ToDouble(CMBVade.SelectedItem.Value) / 100) + (Convert.ToDouble(oku[1].ToString()) / 100));
                    double bFiyat = Convert.ToDouble(TXTBRF.ToolTip);
                    TXTBRF.Text = (bFiyat * yuzde).ToString();
                    HFVFiyat.Value = (bFiyat * yuzde).ToString();
                    double TLbfiyat = Convert.ToDouble(TXTTLFiyat.ToolTip);
                    TXTTLFiyat.Text = (TLbfiyat * yuzde).ToString();
                    TXTTopTut.Text = (IMik * (TLbfiyat * yuzde)).ToString();
                    TXTTLFiyat.Text = Convert.ToDecimal(TXTTLFiyat.Text).ToString(",0.00");
                    TXTTopTut.Text = Convert.ToDecimal(TXTTopTut.Text).ToString(",0.00");
                    TXTBRF.Text = Convert.ToDecimal((bFiyat * yuzde)).ToString(",0.00") + " €";
                    
                    CMBMiktar.Text = ksayi+"-"+bsayi;
                    return;
                }
                i++;
            }
            
        }

        protected void CMBVade_SelectedIndexChanged(object sender, EventArgs e)
        {

            double yuzde = 1 - ((Convert.ToDouble(CMBVade.SelectedItem.Value) / 100) + (Convert.ToDouble(CMBMiktar.SelectedItem.Value) / 100));
            double bFiyat = Convert.ToDouble(TXTBRF.ToolTip);
            TXTBRF.Text = (bFiyat * yuzde).ToString() + " €";
            double TLbfiyat=Convert.ToDouble(TXTTLFiyat.ToolTip);
            TXTTLFiyat.Text = (TLbfiyat * yuzde).ToString();
            TXTTLFiyat.Text = Convert.ToDecimal(TXTTLFiyat.Text).ToString(",0.00");
            TXTBRF.Text = Convert.ToDecimal((bFiyat * yuzde)).ToString(",0.00") + " €";
            TXTMik.Text = "";
            TXTTopTut.Text = "";
        }

        protected void CMBMiktar_SelectedIndexChanged(object sender, EventArgs e)
        {
            double yuzde = 1 - ((Convert.ToDouble(CMBVade.SelectedItem.Value) / 100) + (Convert.ToDouble(CMBMiktar.SelectedItem.Value) / 100));
            double bFiyat = Convert.ToDouble(TXTBRF.ToolTip);
            TXTBRF.Text = (bFiyat * yuzde).ToString() + " €";
            double TLbfiyat = Convert.ToDouble(TXTTLFiyat.ToolTip);
            TXTTLFiyat.Text = (TLbfiyat * yuzde).ToString();
            TXTTLFiyat.Text = Convert.ToDecimal(TXTTLFiyat.Text).ToString(",0.00");
            TXTBRF.Text = Convert.ToDecimal((bFiyat * yuzde)).ToString(",0.00") + " €";
            TXTMik.Text = "";
            TXTTopTut.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string startUpScript = string.Format("window.parent.HidePopupAndShowInfo('Server','');");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "ANY_KEY", startUpScript, true);  
        }

     
        
    }
}


