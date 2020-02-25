using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using DevExpress.Web.ASPxGridView;
using DevExpress.Web.ASPxEditors;
using System.Data;
using Telerik.Web.UI;

namespace seyhandagitim
{
    public partial class gsip : System.Web.UI.Page
    {
        SqlDataReader Goku;
        protected void URLCheck()
        {
            try
            {
                string Yontem = Request.QueryString["kind"];
                if (Yontem == "0")
                {
                    PNLBagli.Visible = false;
                    PNLNormal.Visible = true;
                    UCMBUretici.Text = "";
                    UCMBFType.Text = "";
                    UCMBMANUFF.Text = "";
                    UCMBModel.Text = "";
                    UCMBMotorG.Text = "";
                    UCMBMType.Text = "";
                }
                if (Yontem == "1")
                {
                    PNLBagli.Visible = true;
                    PNLNormal.Visible = false;
                }
                string MarkaAraması = Request.QueryString["1923"];
                if (MarkaAraması == "1")
                {
                    TXTTemizle();
                    PNLTXTler.Visible = false;
                    PNLCombolar.Visible = true;
                }
            }
            catch (Exception)
            {
                PNLBagli.Visible = false;
                PNLNormal.Visible = true;
            }
        }

        protected void XLSSegmentDoldur()
        {
            //segment al
            string SEGMENT = Request.QueryString["SEGMENT"]; if (SEGMENT == null) return;
            SEGMENT = SEGMENT.Replace("%", "+");
            UCMBUretici.Items.Clear();
            UCMBUretici.Items.Add("");
            Goku = baglanti.DataReaderAl("select AK.MAKE from(select MAKE from INFO_AKT_DATA where SEGMENT='" + SEGMENT + "' group by MAKE) as AK order by AK.MAKE ");
            while (Goku.Read())
            {
                UCMBUretici.Items.Add(Goku[0].ToString());
            }
        }
        // sayı getirme*/
        /*
         select SipId,COUNT(*) OVER (PARTITION BY 1) as RowCnt from ZTbL_Siparisler where SipId=-200001
         * sayı 1 ise 1 sonrakini aç
         */
        protected void XLSMODELDoldur()
        {
            UCMBModel.Text = "";
            try
            {

                //segment al
                string CSqlAra = "MAKE='" + UCMBUretici.SelectedItem.Text + "' ";
                int Isayi = 0;
                UCMBModel.Items.Clear();
                UCMBModel.Items.Add("");
                Goku = baglanti.DataReaderAl("select AK.MODELSERIES,AK.RowCnt from(select MODELSERIES,COUNT(*) OVER (PARTITION BY 1) as RowCnt from INFO_AKT_DATA where " + CSqlAra + " group by MODELSERIES) as AK order by AK.MODELSERIES ");
                while (Goku.Read())
                {
                    UCMBModel.Items.Add(Goku[0].ToString());
                    Isayi = Convert.ToInt32(Goku[1].ToString()); if (Isayi == 1)
                    {
                        UCMBModel.SelectedIndex = 1;
                        XLSMODELTipDoldur();
                        UCMBMType.Visible = true;
                        break;
                    }
                }

            }
            catch (Exception)
            {

            }
        }

        protected void XLSMODELTipDoldur()
        {
            UCMBMType.Text = "";
            try
            {

                //segment al
                string CSqlAra = "MAKE='" + UCMBUretici.SelectedItem.Text + "' and MODELSERIES='" + UCMBModel.SelectedItem.Text + "' ";
                int Isayi = 0;
                UCMBMType.Items.Clear();
                UCMBMType.Items.Add("");
                Goku = baglanti.DataReaderAl("select AK.MODELTYPE,AK.RowCnt from(select MODELTYPE,COUNT(*) OVER (PARTITION BY 1) as RowCnt from INFO_AKT_DATA where " + CSqlAra + " group by MODELTYPE) as AK order by AK.MODELTYPE ");
                while (Goku.Read())
                {

                    UCMBMType.Items.Add(Goku[0].ToString());
                    Isayi = Convert.ToInt32(Goku[1].ToString()); if (Isayi == 1)
                    {
                        UCMBMType.SelectedIndex = 1;
                        XLSHPDoldur();
                        UCMBMotorG.Visible = true;
                        break;
                    }
                }

            }
            catch (Exception)
            {

            }
        }

        protected void XLSHPDoldur()
        {
            try
            {
                UCMBMotorG.Text = "";
                //segment al
                string CSqlAra = "MAKE='" + UCMBUretici.SelectedItem.Text + "' and MODELSERIES='" + UCMBModel.SelectedItem.Text + "' and MODELTYPE='" + UCMBMType.SelectedItem.Text + "' ";
                int Isayi = 0;
                UCMBMotorG.Items.Clear();
                UCMBMotorG.Items.Add("");
                Goku = baglanti.DataReaderAl("select AK.HP,AK.RowCnt from(select HP,COUNT(*) OVER (PARTITION BY 1) as RowCnt from INFO_AKT_DATA where " + CSqlAra + " group by HP) as AK order by AK.HP ");
                while (Goku.Read())
                {

                    UCMBMotorG.Items.Add(Goku[0].ToString());
                    Isayi = Convert.ToInt32(Goku[1].ToString()); if (Isayi == 1)
                    {
                        UCMBMotorG.SelectedIndex = 1;
                        XLSMANUFFDoldur();
                        UCMBMANUFF.Visible = true;
                        break;
                    }
                }

            }
            catch (Exception)
            {

            }
        }

        protected void XLSMANUFFDoldur()
        {
            try
            {
                UCMBMANUFF.Text = "";
                //segment al
                string CSqlAra = "MAKE='" + UCMBUretici.SelectedItem.Text + "' and MODELSERIES='" + UCMBModel.SelectedItem.Text + "' and MODELTYPE='" + UCMBMType.SelectedItem.Text + "' and HP='" + UCMBMotorG.SelectedItem.Text + "' ";
                int Isayi = 0;
                UCMBMANUFF.Items.Clear();
                UCMBMANUFF.Items.Add("");
                Goku = baglanti.DataReaderAl("select AK.MANUFFROM,AK.RowCnt from(select MANUFFROM,COUNT(*) OVER (PARTITION BY 1) as RowCnt from INFO_AKT_DATA where " + CSqlAra + " group by MANUFFROM) as AK order by AK.MANUFFROM ");
                while (Goku.Read())
                {

                    UCMBMANUFF.Items.Add(Goku[0].ToString());
                    Isayi = Convert.ToInt32(Goku[1].ToString()); if (Isayi == 1)
                    {
                        UCMBMANUFF.SelectedIndex = 1;
                        XLSFuelTypeDoldur();
                        UCMBFType.Visible = true;
                        break;
                    }
                }

            }
            catch (Exception)
            {

            }
        }

        protected void XLSFuelTypeDoldur()
        {
            try
            {
                UCMBFType.Text = "";
                //segment al
                string CSqlAra = "MAKE='" + UCMBUretici.SelectedItem.Text + "' and MODELSERIES='" + UCMBModel.SelectedItem.Text + "' and MODELTYPE='" + UCMBMType.SelectedItem.Text + "' and HP='" + UCMBMotorG.SelectedItem.Text + "' and MANUFFROM='" + UCMBMANUFF.SelectedItem.Text + "'";
                int Isayi = 0;
                UCMBFType.Items.Clear();
                UCMBFType.Items.Add("");
                Goku = baglanti.DataReaderAl("select AK.FUELTYPE,AK.RowCnt from(select FUELTYPE,COUNT(*) OVER (PARTITION BY 1) as RowCnt from INFO_AKT_DATA where " + CSqlAra + " group by FUELTYPE) as AK order by AK.FUELTYPE ");
                while (Goku.Read())
                {
                    UCMBFType.Items.Add(Goku[0].ToString());
                    Isayi = Convert.ToInt32(Goku[1].ToString()); if (Isayi == 1)
                    {
                        UCMBFType.SelectedIndex = 1;
                        FGridDoldur();
                        break;
                    }

                }

            }
            catch (Exception)
            {

            }
        }

        protected void cmbDoldur()
        {

            string cSqlAra = "";

            if (CMBMARKA.Text != "")
            {
                cSqlAra += " and STGRPCODE='" + CMBMARKA.Text + "'";
                return;
            }
            if (CMBASPE2.Text != "")
            {
                cSqlAra += " and SPECODE2='" + CMBASPE2.Text + "'";
            }
            if (CMBASPE3.Text != "")
            {
                cSqlAra += " and SPECODE3='" + CMBASPE3.Text + "'";
            }
            if (CMBASPE4.Text != "")
            {
                cSqlAra += " and SPECODE4='" + CMBASPE4.Text + "'";
            }
            if (CMBASPE5.Text != "")
            {
                cSqlAra += " and SPECODE5='" + CMBASPE5.Text + "'";
            }
            CMBMARKA.Items.Clear();

            CMBMARKA.Items.Add("");
            SqlDataReader oku = baglanti.DataReaderAl("select M.STGRPCODE from (select STGRPCODE from LG_" + baglanti.GFirma + "_ITEMS where ACTIVE=0 and CLASSTYPE=0 " + cSqlAra + " group by STGRPCODE) as M order by M.STGRPCODE");
            while (oku.Read())
            {
                RadComboBoxItem rvi = new RadComboBoxItem();
                rvi.Text = oku[0].ToString();
                CMBMARKA.Items.Add(oku[0].ToString());
            }

        }
        protected void CMBASPE2Doldur()
        {

            string cSqlAra = "";
            if (CMBMARKA.Text != "")
            {
                cSqlAra += " and STGRPCODE='" + CMBMARKA.Text + "'";

            }
            if (CMBASPE2.Text != "")
            {
                cSqlAra += " and SPECODE2='" + CMBASPE2.Text + "'";
                return;
            }
            if (CMBASPE3.Text != "")
            {
                cSqlAra += " and SPECODE3='" + CMBASPE3.Text + "'";
            }
            if (CMBASPE4.Text != "")
            {
                cSqlAra += " and SPECODE4='" + CMBASPE4.Text + "'";
            }
            if (CMBASPE5.Text != "")
            {
                cSqlAra += " and SPECODE5='" + CMBASPE5.Text + "'";
            }
            CMBASPE2.Items.Clear();

            CMBASPE2.Items.Add("");
            Goku = baglanti.DataReaderAl("select M.SPECODE2 from (select SPECODE2 from LG_" + baglanti.GFirma + "_ITEMS where ACTIVE=0 and CLASSTYPE=0 " + cSqlAra + " group by SPECODE2) as M order by M.SPECODE2");
            while (Goku.Read())
            {

                CMBASPE2.Items.Add(Goku[0].ToString());
            }
        }
        protected void CMBASPE3Doldur()
        {

            string cSqlAra = "";
            if (CMBMARKA.Text != "")
            {
                cSqlAra += " and STGRPCODE='" + CMBMARKA.Text + "'";

            }
            if (CMBASPE2.Text != "")
            {
                cSqlAra += " and SPECODE2='" + CMBASPE2.Text + "'";

            }
            if (CMBASPE3.Text != "")
            {
                cSqlAra += " and SPECODE3='" + CMBASPE3.Text + "'";
                return;
            }
            if (CMBASPE4.Text != "")
            {
                cSqlAra += " and SPECODE4='" + CMBASPE4.Text + "'";
            }
            if (CMBASPE5.Text != "")
            {
                cSqlAra += " and SPECODE5='" + CMBASPE5.Text + "'";
            }
            CMBASPE3.Items.Clear();

            CMBASPE3.Items.Add("");
            Goku = baglanti.DataReaderAl("select M.SPECODE3 from (select SPECODE3 from LG_" + baglanti.GFirma + "_ITEMS where ACTIVE=0 and CLASSTYPE=0 " + cSqlAra + " group by SPECODE3) as M order by M.SPECODE3");
            while (Goku.Read())
            {

                CMBASPE3.Items.Add(Goku[0].ToString());
            }
        }
        protected void CMBASPE4Doldur()
        {

            string cSqlAra = "";
            if (CMBMARKA.Text != "")
            {
                cSqlAra += " and STGRPCODE='" + CMBMARKA.Text + "'";

            }
            if (CMBASPE2.Text != "")
            {
                cSqlAra += " and SPECODE2='" + CMBASPE2.Text + "'";

            }
            if (CMBASPE3.Text != "")
            {
                cSqlAra += " and SPECODE3='" + CMBASPE3.Text + "'";

            }
            if (CMBASPE4.Text != "")
            {
                cSqlAra += " and SPECODE4='" + CMBASPE4.Text + "'";
                return;
            }
            if (CMBASPE5.Text != "")
            {
                cSqlAra += " and SPECODE5='" + CMBASPE5.Text + "'";
            }
            CMBASPE4.Items.Clear();

            CMBASPE4.Items.Add("");
            Goku = baglanti.DataReaderAl("select M.SPECODE4 from (select SPECODE4 from LG_" + baglanti.GFirma + "_ITEMS where ACTIVE=0 and CLASSTYPE=0 " + cSqlAra + " group by SPECODE4) as M order by M.SPECODE4");
            while (Goku.Read())
            {

                CMBASPE4.Items.Add(Goku[0].ToString());
            }
        }
        protected void CMBASPE5Doldur()
        {
            string cSqlAra = "";
            if (CMBMARKA.Text != "")
            {
                cSqlAra += " and STGRPCODE='" + CMBMARKA.Text + "'";

            }
            if (CMBASPE2.Text != "")
            {
                cSqlAra += " and SPECODE2='" + CMBASPE2.Text + "'";

            }
            if (CMBASPE3.Text != "")
            {
                cSqlAra += " and SPECODE3='" + CMBASPE3.Text + "'";

            }
            if (CMBASPE4.Text != "")
            {
                cSqlAra += " and SPECODE4='" + CMBASPE4.Text + "'";

            }
            if (CMBASPE5.Text != "")
            {
                cSqlAra += " and SPECODE5='" + CMBASPE5.Text + "'";
                return;
            }

            CMBASPE5.Items.Clear();

            CMBASPE5.Items.Add("");
            Goku = baglanti.DataReaderAl("select M.SPECODE5 from (select SPECODE5 from LG_" + baglanti.GFirma + "_ITEMS where ACTIVE=0 and CLASSTYPE=0 " + cSqlAra + " group by SPECODE5) as M order by M.SPECODE5");
            while (Goku.Read())
            {
                CMBASPE5.Items.Add(Goku[0].ToString());
            }
        }
        protected void CMBAITOZSPEDoldur()
        {
            CMBAITOZSPE.Items.Clear();
            CMBAITOZSPE.Items.Add("");
            //Goku = baglanti.DataReaderAl("select CODE,LOGICALREF from LG_" + baglanti.GFirma + "_CHARCODE as M order by CODE");
            Goku = baglanti.DataReaderAl("select * from (select SPECODE from LG_" + baglanti.GFirma + "_CHARCODE group by SPECODE) as r order by r.SPECODE");
            while (Goku.Read())
            {
                CMBAITOZSPE.Items.Add(Goku[0].ToString());
            }
        }
        protected void CMBAITOZDoldur()
        {
            string cSqlAra = "";
            if (CMBMARKA.Text != "")
            {
                cSqlAra += " and I.STGRPCODE='" + CMBMARKA.Text + "'";

            }
            if (CMBASPE2.Text != "")
            {
                cSqlAra += " and I.SPECODE2='" + CMBASPE2.Text + "'";

            }
            if (CMBASPE3.Text != "")
            {
                cSqlAra += " and I.SPECODE3='" + CMBASPE3.Text + "'";

            }
            if (CMBASPE4.Text != "")
            {
                cSqlAra += " and I.SPECODE4='" + CMBASPE4.Text + "'";

            }
            if (CMBASPE5.Text != "")
            {
                cSqlAra += " and I.SPECODE5='" + CMBASPE5.Text + "'";
                return;
            }
            string CHARCODESqlAra = (CMBAITOZSPE.SelectedItem.Text != "") ? " and SPECODE='" + CMBAITOZSPE.Text + "' " : "";
            CMBAITOZ.Items.Clear();
            CMBAITOZ.Items.Add("");
            //Goku = baglanti.DataReaderAl("select CODE,LOGICALREF from LG_" + baglanti.GFirma + "_CHARCODE as M order by CODE");
            Goku = baglanti.DataReaderAl("select ANA.CODE,ANA.CHARCODEREF,ANA.NAME from  (select CC.CODE,CH.CHARCODEREF,CC.NAME from LG_" + baglanti.GFirma + "_ITEMS as I  left outer join LG_" + baglanti.GFirma + "_CHARASGN as CH on I.LOGICALREF=CH.ITEMREF left outer join (select CODE,LOGICALREF,NAME from LG_" + baglanti.GFirma + "_CHARCODE where 1=1 " + CHARCODESqlAra + " ) as CC on CH.CHARCODEREF=CC.LOGICALREF where I.LOGICALREF>0 " + cSqlAra + " group by CH.CHARCODEREF,CC.CODE,CC.NAME) as ANA where CODE is not null  order by ANA.CODE");
            while (Goku.Read())
            {
                CMBAITOZ.Items.Add(Goku[0].ToString() + "  " + Goku[2].ToString(), Goku[1].ToString());
            }
        }
        protected void KAMPCMBGetir()
        {
            CMBKAMP.Items.Clear();
            CMBKAMP.Items.Add("");
            Goku = baglanti.DataReaderAl("select KAMPANYA,YETKISTR from " + baglanti.INITIAL2 + "..AA_KAMPYETKI where FLAG=0 order by KAMPANYA");
            while (Goku.Read())
            {
                CMBKAMP.Items.Add(Goku[0].ToString(), Goku[1].ToString());
            }
            //miktar kampanyası kontrolü
            Goku = baglanti.DataReaderAl("select MREF from LOGOKAMP_MY..IND_UrunMikVade where  Baslangic<=CONVERT(date, getdate()) and Bitis>=CONVERT(date, getdate()) ");
            if (Goku.Read())
            {
                CHCKMikKamp.Visible = true;
            }
            Goku = baglanti.DataReaderAl("select URUNKODU from LOGOKAMP_MY..IND_URUN where Baslangic<=CONVERT(date, getdate()) and Bitis>=CONVERT(date, getdate()) ");
            if (Goku.Read())
            {
                CHCKSonFiyatKamp.Visible = true;
            }

        }
        protected void TXTTemizle()
        {
            TXTGSEarch.Text = "";
            TXTGSEarchCode.Text = "";

        }

        protected void CMBTemizle()
        {
            CMBMARKA.Text = "";
            CMBASPE2.Text = "";
            CMBASPE3.Text = "";
            CMBASPE4.Text = "";
            CMBASPE5.Text = "";
            CMBAITOZ.Text = "";
            CMBMARKA.Text = "";

        }
        protected string SQLSTRVer(string prefixText)
        {

            string NGSqlAra = "", SGSqlAra = "", CGSqlAra = "", STGSqlAra = "";
            int konum = prefixText.IndexOf(" ");
            int j = 0;
            string rft;
            while (konum != -1) //www.gorselprogramlama.com
            {
                konum = prefixText.IndexOf(" ", konum + 1);
                j++;
            }
            for (int i = 0; i <= j; i++)
            {
                rft = prefixText.Split(' ')[i].Replace(" ", "");
                //   NGSqlAra += " and replace(ITM.NAME3+ITM.NAME,' ','') ='" + rft + "' ";
                NGSqlAra += " and lower(replace(ITM.PRODUCERCODE+ITM.SPECODE+ITM.NAME+ITM.NAME3+ITM.SPECODE3+ITM.CODE+ITM.NAME4,' ','')) like '%" + rft.ToLower()+"%' or XI.B2BACK1='" + rft + "' or replace(XI.B2BACK1,' ','')='" + rft + "' or XI.B2BACK2='" + rft + "' or replace(XI.B2BACK2,' ','')='" + rft + "'  or XI.B2BACK3='" + rft + "' or replace(XI.B2BACK3,' ','')='" + rft + "' or XI.B2BACK4='" + rft + "' or replace(XI.B2BACK4,' ','')='" + rft + "' or XI.B2BACK5='" + rft + "' or replace(XI.B2BACK5,' ','')='" + rft + "' ";//andi or yaptık 28052016
            }

            return NGSqlAra;
        }



        int AmbarNo = -1;
        protected void FGridDoldur3()
        {
            string sqlara = "";
            try
            {
                HttpCookie user = Request.Cookies["myCerez"];
                string CLIENTREF = user["CLIENTREF"];
                string SqlJoin = "";

                if (PNLNormal.Visible == true)
                {
                    if (CMBKAMP.SelectedIndex > 0)
                    {
                        sqlara = " and ITM.CYPHCODE like '" + CMBKAMP.SelectedItem.Value + "%'";
                        TXTTemizle();
                    }
                    if (CMBKAMP.Text == "" && CMBMARKA.Text == "" && CMBASPE2.Text == "" && CMBASPE3.Text == "" && CMBASPE4.Text == "" && CMBASPE5.Text == "" && TXTGSEarch.Text == "" && TXTGSEarchCode.Text == "" && CMBAITOZ.Text == "" && TXTGSEarchDifCode.Text == "") { sqlara = "and ITM.LOGICALREF=0"; }
                }
                else if (PNLBagli.Visible == true)
                {
                    SqlJoin = "left outer join (select LOGOREF,FUELTYPE,MAKE,MODELSERIES,MODELTYPE,HP from INFO_AKT_DATA ) as AKT on AKT.LOGOREF=ITM.LOGICALREF ";
                    sqlara = "and MAKE='" + UCMBUretici.SelectedItem.Text + "' and MODELSERIES='" + UCMBModel.SelectedItem.Text + "' and MODELTYPE='" + UCMBMType.SelectedItem.Text + "' and HP='" + UCMBMotorG.SelectedItem.Text + "' and AKT.FUELTYPE='" + UCMBFType.SelectedItem.Text + "'";
                }
                if (CHCKMikKamp.Checked)
                {
                    sqlara = " and IUM.CODE is not null ";
                }
                if (CHCKSonFiyatKamp.Checked)
                {
                    sqlara = " and ISF.URUNKODU is not null ";
                }
                //   Label2.Text = sqlara+" --cmbkamp.tex="+CMBKAMP.Text;
                //      SqlDataSource1.ConnectionString = baglanti.ConnectSTR;
                GridSqlCommand(sqlara, SqlJoin);
                HFAramaDeger.Value = "2";
                //GridViewDataColumn column = (GridViewDataColumn)GridItem.Columns[4];
                //column.DataItemTemplate = new ImageTemplate();

                HttpCookie giris = Request.Cookies["giris"];
                string userid = giris["userid"];

            }
            catch (Exception s)
            {


            }
        }
        protected void FGridDoldur2(string SqlStrYapik)
        {
            string sqlara = SqlStrYapik;
            try
            {
                HttpCookie user = Request.Cookies["myCerez"];
                string CLIENTREF = user["CLIENTREF"];
                string SqlJoin = "";

                if (PNLNormal.Visible == true)
                {
                    if (CMBKAMP.SelectedIndex > 0)
                    {
                        sqlara = " and ITM.CYPHCODE like '" + CMBKAMP.SelectedItem.Value + "%'";
                        TXTTemizle();
                    }
                    if (CMBKAMP.Text == "" && CMBMARKA.Text == "" && CMBASPE2.Text == "" && CMBASPE3.Text == "" && CMBASPE4.Text == "" && CMBASPE5.Text == "" && TXTGSEarch.Text == "" && TXTGSEarchCode.Text == "" && CMBAITOZ.Text == "" && TXTGSEarchDifCode.Text == "") { sqlara = "and ITM.LOGICALREF=0"; }
                }
                else if (PNLBagli.Visible == true)
                {
                    SqlJoin = "left outer join (select LOGOREF,FUELTYPE,MAKE,MODELSERIES,MODELTYPE,HP from INFO_AKT_DATA ) as AKT on AKT.LOGOREF=ITM.LOGICALREF ";
                    sqlara = "and MAKE='" + UCMBUretici.SelectedItem.Text + "' and MODELSERIES='" + UCMBModel.SelectedItem.Text + "' and MODELTYPE='" + UCMBMType.SelectedItem.Text + "' and HP='" + UCMBMotorG.SelectedItem.Text + "' and AKT.FUELTYPE='" + UCMBFType.SelectedItem.Text + "'";
                }

                //   Label2.Text = sqlara+" --cmbkamp.tex="+CMBKAMP.Text;
                //      SqlDataSource1.ConnectionString = baglanti.ConnectSTR;
                GridSqlCommand(sqlara, SqlJoin);
                HFAramaDeger.Value = "1";
                //GridViewDataColumn column = (GridViewDataColumn)GridItem.Columns[4];
                //column.DataItemTemplate = new ImageTemplate();

                HttpCookie giris = Request.Cookies["giris"];
                string userid = giris["userid"];

            }
            catch (Exception s)
            {


            }
        }
        protected void FGridDoldur()
        {
            string sqlara = "";
            try
            {
                HttpCookie user = Request.Cookies["myCerez"];
                string CLIENTREF = user["CLIENTREF"];
                string SqlJoin = "";

                if (PNLNormal.Visible == true)
                {
                    if (TXTGSEarch.Text != "")
                    {
                        string rft = TXTGSEarch.Text.Replace(" ", "");
                        // sqlara = " and (ITM.PRODUCERCODE like '%" + rft + "%' or replace(ITM.PRODUCERCODE,' ','') like '%" + rft + "%' or  ITM.SPECODE like '%" + rft + "%' or replace(ITM.SPECODE,' ','') like '%" + rft + "%'   or ITM.NAME like '%" + rft + "%' or replace(ITM.NAME,' ','') like '%" + rft + "%'  or ITM.NAME3 like '%" + rft + "%' or replace(ITM.NAME3,' ','') like '%" + rft + "%' or ITM.NAME3+ITM.NAME like '%" + rft + "%' or replace(ITM.NAME3+ITM.NAME,' ','') like '%" + rft + "%'  or ITM.SPECODE3 like '%" + rft + "%' or replace(ITM.SPECODE3,' ','') like '%" + rft + "%' or ITM.CODE like '%" + rft + "%' or replace(ITM.CODE,' ','') like '%" + rft + "%'   ) ";
                        sqlara += " " + SQLSTRVer(TXTGSEarch.Text);
                        CMBTemizle();
                    }


                    if (TXTGSEarchCode.Text != "")
                    {
                        string rft = TXTGSEarchCode.Text.Replace(" ", "");
                        //  SqlJoin = "left outer join Y_Katalog..M_Katalog as KTA on ITM.CODE=KTA.MKodu  COLLATE Turkish_CI_AS";
                        sqlara = " and ((ITM.CODE like '%" + rft + "%' or replace(ITM.CODE,' ','') like '%" + rft + "%'   ) )";
                        CMBMARKA.Text = "";

                        CMBTemizle();
                    }
                    if (TXTGSEarchDifCode.Text != "")
                    {
                        string ITEMCLASS = "0";
                        string rft = TXTGSEarchDifCode.Text.Replace(" ", "");
                        SqlDataReader oku = baglanti.DataReaderAl("select ITEMCODE,CLASS,MARKA from Y_Katalog..[CROSS]  where 1=1 and replace(ITEMCODE,' ','')='" + rft.Replace(" ", "") + "' ");
                        if (oku.Read())
                        {
                            ITEMCLASS = oku[1].ToString();
                            GridItem.SettingsText.Title = "Orjinal Marka : " + oku[2].ToString();
                        }
                        SqlJoin = "inner join Y_Katalog..[CROSS] as KTA on Replace(ITM.CODE,' ','')=Replace(KTA.ITEMCODE,' ','') COLLATE Turkish_CI_AS AND CLASS=" + ITEMCLASS + "  ";
                        //  sqlara = " and (( KTA.UKodu like '%" + rft + "%' or replace(KTA.UKodu,' ','') like '%" + rft + "%'    ) )";
                        CMBMARKA.Text = "";
                        CMBTemizle();
                    }
                    if (CMBAITOZ.Text != "")
                    {
                        sqlara = " and CHA.CHARCODEREF='" + CMBAITOZ.SelectedItem.Value + "'";
                        SqlJoin = "left outer join LG_" + baglanti.GFirma + "_CHARASGN as CHA on ITM.LOGICALREF=CHA.ITEMREF";
                        //CMBMARKA.Text = "";
                        //CMBASPE2.Text = "";
                        //CMBASPE3.Text = "";
                        //CMBASPE4.Text = "";
                        //CMBASPE5.Text = "";
                        //CMBKAMP.Text = "";
                        TXTTemizle();
                    }

                    if (CMBKAMP.Text == "" && CMBMARKA.Text == "" && CMBASPE2.Text == "" && CMBASPE3.Text == "" && CMBASPE4.Text == "" && CMBASPE5.Text == "" && TXTGSEarch.Text == "" && TXTGSEarchCode.Text == "" && CMBAITOZ.Text == "" && TXTGSEarchDifCode.Text == "") { sqlara = "and ITM.LOGICALREF=0"; }
                }
                else if (PNLBagli.Visible == true)
                {
                    SqlJoin = "left outer join (select LOGOREF,FUELTYPE,MAKE,MODELSERIES,MODELTYPE,HP from INFO_AKT_DATA ) as AKT on AKT.LOGOREF=ITM.LOGICALREF ";
                    sqlara = "and MAKE='" + UCMBUretici.SelectedItem.Text + "' and MODELSERIES='" + UCMBModel.SelectedItem.Text + "' and MODELTYPE='" + UCMBMType.SelectedItem.Text + "' and HP='" + UCMBMotorG.SelectedItem.Text + "' and AKT.FUELTYPE='" + UCMBFType.SelectedItem.Text + "'";
                }

                //   Label2.Text = sqlara+" --cmbkamp.tex="+CMBKAMP.Text;
                //   SqlDataSource1.ConnectionString = baglanti.ConnectSTR;

                //   GridItem.DataSource = SqlDataSource1;
                GridSqlCommand(sqlara, SqlJoin);
                HFAramaDeger.Value = "0";
                //GridViewDataColumn column = (GridViewDataColumn)GridItem.Columns[4];
                //column.DataItemTemplate = new ImageTemplate();

                HttpCookie giris = Request.Cookies["giris"];
                string userid = giris["userid"];

            }
            catch (Exception s)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('" + s.ToString() + "');", true);


            }
        }
        protected void GridSqlCommand(string sqlara, string SqlJoin)
        {
            //TXTGSEarch.Text = "SELECT ITM.NAME3,ITM.LOGICALREF, ITM.CODE AS Ürün_Kodu,ITM.NAME as Ürün_Adı,ITM.SPecode as Urun_Ozel,ITM.SPECODE5 as SKURU,isnull(st.onhand,0)as G_Stok,(isnull(st.onhand,0)-isnull(st.RESERVED,0))AS F_Stok,R.CODE,R.UREF,ITM.VAT,R.SETREF,ITM.DOMINANTREFS5,ITM.STGRPCODE,ITM.SPECODE3,(CASE WHEN DOMINANTREFS5<>0 THEN 'Alternatifi de Var' else '' end) as ALTERNATE,ITM.SPECODE2,(CASE WHEN LEN(ITM.CYPHCODE)>0 THEN 'Kampanya Var' else '' end ) as ISKAMPANYA,Z.ACIKLAMA" +
            //  " FROM (SELECT CYPHCODE,LOGICALREF,CODE,NAME,SPECODE,VAT,UNITSETREF,ISONR,SPECODE5,STGRPCODE,DOMINANTREFS5,SPECODE3,SPECODE4,SPECODE2,PRODUCERCODE,NAME3,CARDTYPE,NAME4 FROM LG_" + baglanti.GFirma + "_ITEMS WHERE ACTIVE=0 AND CLASSTYPE = 0) as ITM left outer join (SELECT STOCKREF,SUM(ONHAND)AS ONHAND,SUM(RESERVED) AS RESERVED,SUM(SALAMNT) AS SATILAN FROM    " +
            //  " LV_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STINVTOT WHERE INVENNO=0 GROUP BY STOCKREF) as ST ON ITM.LOGICALREF=ST.STOCKREF left outer join" +
            //  " (SELECT isnull(LOGICALREF,0) AS UREF,CODE, NAME AS BIRIM,UNITSETREF AS SETREF  FROM LG_" + baglanti.GFirma + "_UNITSETL where MAINUNIT=1) as R  " +
            //  "ON ITM.UNITSETREF=R.SETREF left outer join LG_XT1001_" + baglanti.GFirma + " as XI on ITM.LOGICALREF=XI.PARLOGREF " +
            //  " left outer join " + baglanti.INITIAL2 + "..ZZ_StokSinir as Z on    isnull(st.onhand,0)>=Z.SMIN and  isnull(st.onhand,0)<=Z.SMAX  and ITM.SPECODE=Z.OK COLLATE Turkish_CI_AS                   " + SqlJoin +
            //  " where ITM.LOGICALREF>0 and ITM.CARDTYPE<>4 " + sqlara + " group by ITM.NAME3,ITM.CYPHCODE,Z.ACIKLAMA,ITM.LOGICALREF, ITM.CODE,ITM.NAME,ITM.SPecode ,ITM.SPECODE5,isnull(st.onhand,0),(isnull(st.onhand,0)-isnull(st.RESERVED,0)),R.CODE,R.UREF,ITM.VAT,R.SETREF,ITM.DOMINANTREFS5,ITM.STGRPCODE,ITM.SPECODE3,(CASE WHEN DOMINANTREFS5<>0 THEN 'Alternatifi VAR' else '' end),ITM.SPECODE2"
            //  + "  order by ITM.SPECODE";
            SqlDataSource1.SelectCommand = "SELECT ITM.NAME3,ITM.LOGICALREF, ITM.CODE AS Ürün_Kodu,ITM.NAME as Ürün_Adı,ITM.SPecode as Urun_Ozel,ITM.SPECODE5 as SKURU,isnull(st.onhand,0)as G_Stok,(isnull(st.onhand,0)-isnull(st.RESERVED,0))AS F_Stok,R.CODE,R.UREF,ITM.VAT,R.SETREF,ITM.DOMINANTREFS5,ITM.STGRPCODE,ITM.SPECODE3,(CASE WHEN DOMINANTREFS5<>0 THEN 'Alternatifi de Var' else '' end) as ALTERNATE,ITM.SPECODE2,(CASE WHEN LEN(ITM.CYPHCODE)>0 THEN 'Kampanya Var' else '' end ) as ISKAMPANYA,Z.ACIKLAMA" +
              " FROM (SELECT CYPHCODE,LOGICALREF,CODE,NAME,SPECODE,VAT,UNITSETREF,ISONR,SPECODE5,STGRPCODE,DOMINANTREFS5,SPECODE3,SPECODE4,SPECODE2,PRODUCERCODE,NAME3,CARDTYPE,NAME4 FROM LG_" + baglanti.GFirma + "_ITEMS WHERE ACTIVE=0 AND CLASSTYPE = 0) as ITM left outer join (SELECT STOCKREF,SUM(ONHAND)AS ONHAND,SUM(RESERVED) AS RESERVED,SUM(SALAMNT) AS SATILAN FROM    " +
              " LV_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STINVTOT WHERE INVENNO=0 GROUP BY STOCKREF) as ST ON ITM.LOGICALREF=ST.STOCKREF left outer join" +
              " (SELECT isnull(LOGICALREF,0) AS UREF,CODE, NAME AS BIRIM,UNITSETREF AS SETREF  FROM LG_" + baglanti.GFirma + "_UNITSETL where MAINUNIT=1) as R  " +
              "ON ITM.UNITSETREF=R.SETREF left outer join LG_XT1001_" + baglanti.GFirma + " as XI on ITM.LOGICALREF=XI.PARLOGREF " +
              " left outer join " + baglanti.INITIAL2 + "..ZZ_StokSinir as Z on    isnull(st.onhand,0)>=Z.SMIN and  isnull(st.onhand,0)<=Z.SMAX  and ITM.SPECODE=Z.OK COLLATE Turkish_CI_AS " +
              " left outer join (select CODE from LOGOKAMP..IND_URUNMikVade ) as IUM on ITM.CODE=IUM.CODE COLLATE Turkish_CI_AS  "
              + " left outer join (select URUNKODU from LOGOKAMP..IND_URUN ) as ISF on ITM.CODE=ISF.URUNKODU COLLATE Turkish_CI_AS  "
              + SqlJoin +
              " where ITM.LOGICALREF>0 and ITM.CARDTYPE<>4 " + sqlara + " group by ITM.NAME3,ITM.CYPHCODE,Z.ACIKLAMA,ITM.LOGICALREF, ITM.CODE,ITM.NAME,ITM.SPecode ,ITM.SPECODE5,isnull(st.onhand,0),(isnull(st.onhand,0)-isnull(st.RESERVED,0)),R.CODE,R.UREF,ITM.VAT,R.SETREF,ITM.DOMINANTREFS5,ITM.STGRPCODE,ITM.SPECODE3,(CASE WHEN DOMINANTREFS5<>0 THEN 'Alternatifi VAR' else '' end),ITM.SPECODE2"
              + "  order by ITM.SPECODE";

            GridItem.DataBind();
        }
        protected void SepetYenile()
        {
            HttpCookie giris = Request.Cookies["giris"];
            string userid = giris["userid"];
            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            ASPxPopupControl1.PopupHorizontalAlign = DevExpress.Web.ASPxClasses.PopupHorizontalAlign.WindowCenter;
            ASPxPopupControl1.PopupVerticalAlign = DevExpress.Web.ASPxClasses.PopupVerticalAlign.WindowCenter;

            HttpCookie user = Request.Cookies["myCerez"];
            string CLIENTREF = user["CLIENTREF"];
            HttpCookie giris = Request.Cookies["giris"];
            string userid = giris["userid"];
            string yetki = giris["yetki"];
            if (yetki == "2")
            {

            }

            SepetYenile();
            if (!IsPostBack)
            {
                URLCheck();
                cmbDoldur();
                CMBASPE2Doldur();
                CMBASPE3Doldur();
                CMBASPE4Doldur();
                CMBASPE5Doldur();
                CMBAITOZSPEDoldur();
                //CMBAITOZDoldur();
                KAMPCMBGetir();
                XLSSegmentDoldur();

            }



        }

        protected void RadButton1_Click(object sender, EventArgs e)
        {
            FGridDoldur();


        }
        protected string MarkaSqlSTRVer()
        {
            string cSqlAra = "";
            if (CMBMARKA.Text != "")
            {
                cSqlAra += " and ITM.STGRPCODE='" + CMBMARKA.Text + "'";

            }
            if (CMBASPE2.Text != "")
            {
                cSqlAra += " and ITM.SPECODE2='" + CMBASPE2.Text + "'";

            }
            if (CMBASPE3.Text != "")
            {
                cSqlAra += " and ITM.SPECODE3='" + CMBASPE3.Text + "'";

            }
            if (CMBASPE4.Text != "")
            {
                cSqlAra += " and ITM.SPECODE4='" + CMBASPE4.Text + "'";

            }
            if (CMBASPE5.Text != "")
            {
                cSqlAra += " and ITM.SPECODE5='" + CMBASPE5.Text + "'";

            }
            return cSqlAra;
        }
        protected void GridItem_Load(object sender, EventArgs e)
        {
            if (HFAramaDeger.Value == "0")
            {
                FGridDoldur();
            }
            else if (HFAramaDeger.Value == "1")
            {

                FGridDoldur2(MarkaSqlSTRVer());
            }
            else if (HFAramaDeger.Value == "2")
            {
                FGridDoldur3();
            }
        }
        class ImageTemplate : ITemplate
        {
            public void InstantiateIn(Control container)
            {
                //Image image = new Image();
                //GridViewDataItemTemplateContainer gridContainer = (GridViewDataItemTemplateContainer)container;
                //string textField = DataBinder.Eval(gridContainer.DataItem, "G_Stok").ToString();
                //if (textField == "0")
                //    image.ImageUrl = "dogan/stokyok.png";
                //else
                //    image.ImageUrl = "dogan/stokvar.png";
                //container.Controls.Add(image);
            }
        }

        protected void GridItem_PageIndexChanged(object sender, EventArgs e)
        {
            //FGridDoldur();
        }

        protected void GridItem_PageSizeChanged(object sender, EventArgs e)
        {
            // FGridDoldur();
        }

        protected void BTNASepet_Click(object sender, EventArgs e)
        {

        }
        string GSipId;
        protected void GridItem_CustomButtonCallback(object sender, ASPxGridViewCustomButtonCallbackEventArgs e)
        {


        }

        protected void GridItem_HtmlDataCellPrepared(object sender, ASPxGridViewTableDataCellEventArgs e)
        {
            if (e.DataColumn.Caption == "Sipariş")
            {
                string KampSection = Request.QueryString["1923"];

                e.Cell.Attributes.Add("onclick", "EditorOnInit(" + e.KeyValue + ",'" + GridItem.GetRowValues(e.VisibleIndex, "Ürün_Kodu").ToString() + "-" + GridItem.GetRowValues(e.VisibleIndex, "Ürün_Adı").ToString() + "','" + KampSection + "');");

            }
            if (e.DataColumn.Caption == "Alternatif")
            {
                e.Cell.Attributes.Add("onclick", "ShowDetailPopup(" + GridItem.GetRowValues(e.VisibleIndex, "DOMINANTREFS5").ToString() + ");");
            }
        }

        protected void ASPxCallbackPanel1_Callback(object sender, DevExpress.Web.ASPxClasses.CallbackEventArgsBase e)
        {

        }

        protected void GridItem_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e)
        {

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {

        }

        protected void GridItem_CustomButtonInitialize(object sender, ASPxGridViewCustomButtonEventArgs e)
        {
            if (e.VisibleIndex > 0)
            {
                //if (e.ButtonID == "CBtnSepet")
                //{
                //    HttpCookie user = Request.Cookies["myCerez"];
                //    string CLIENTREF = user["CLIENTREF"];
                //    string keyv = GridItem.GetRowValues(e.VisibleIndex, "LOGICALREF").ToString();
                //    SqlDataReader oku = baglanti.DataReaderAl("select LogicalRef,Miktar from ZTbl_Siparisler where UrunId=" + keyv + " and Durum=0 and CariId=" + CLIENTREF + "");
                //    if (oku.Read())
                //    {
                //        e.Enabled = false;
                //    }

                //}
                if (e.ButtonID == "CBtnHier")
                {

                    string keyv = GridItem.GetRowValues(e.VisibleIndex, "DOMINANTREFS5").ToString();


                }
            }

        }


        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]
        public static List<string> SearchCustomers(string prefixText, int count)
        {

            List<string> customers = new List<string>();
            if (prefixText != "")
            {
                string NGSqlAra = "", SGSqlAra = "", CGSqlAra = "", STGSqlAra = "";
                int konum = prefixText.IndexOf(" ");
                int j = 0;
                while (konum != -1) //www.gorselprogramlama.com
                {
                    konum = prefixText.IndexOf(" ", konum + 1);
                    j++;
                }
                for (int i = 0; i <= j; i++)
                {
                    NGSqlAra += " and replace(NAME,' ','') like '%" + prefixText.Split(' ')[i].Replace(" ", "") + "%' ";
                }
                for (int i = 0; i <= j; i++)
                {
                    SGSqlAra += " and replace(NAME3,' ','') like '%" + prefixText.Split(' ')[i].Replace(" ", "") + "%' ";
                }



                using (SqlConnection conn = baglanti.Connection())
                {
                    SqlDataReader oku2 = baglanti.DataReaderAl("select NAME from LG_" + baglanti.GFirma + "_ITEMS where ACTIVE=0 AND CLASSTYPE = 0 " + NGSqlAra + " group by NAME");
                    while (oku2.Read())
                    {
                        customers.Add(oku2["NAME"].ToString());
                    }
                    SqlDataReader oku4 = baglanti.DataReaderAl("select NAME3 from LG_" + baglanti.GFirma + "_ITEMS where ACTIVE=0 AND CLASSTYPE = 0 " + SGSqlAra + " group by NAME3");
                    while (oku4.Read())
                    {
                        customers.Add(oku4["NAME3"].ToString());
                    }


                }
            }
            return customers;
        }


        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]
        public static List<string> SearchCustomersCODE(string prefixText, int count)
        {

            List<string> customers = new List<string>();
            if (prefixText != "")
            {
                string NGSqlAra = "", SGSqlAra = "", CGSqlAra = "", STGSqlAra = "";
                int konum = prefixText.IndexOf(" ");
                int j = 0;
                while (konum != -1) //www.gorselprogramlama.com
                {
                    konum = prefixText.IndexOf(" ", konum + 1);
                    j++;
                }

                //for (int i = 0; i <= j; i++)
                //{
                //    SGSqlAra += " and replace(PRODUCERCODE,' ','') like '%" + prefixText.Split(' ')[i].Replace(" ", "") + "%' ";
                //}
                for (int i = 0; i <= j; i++)
                {
                    CGSqlAra += " and replace(ITEMCODE,' ','') like '" + prefixText.Split(' ')[i].Replace(" ", "") + "%'";
                }


                using (SqlConnection conn = baglanti.Connection())
                {
                    SqlDataReader oku = baglanti.DataReaderAl("select ITEMCODE from Y_Katalog..[CROSS] where 1=1 " + CGSqlAra + "");

                    while (oku.Read())
                    {
                        customers.Add(oku["ITEMCODE"].ToString());
                    }
                    //SqlDataReader oku2 = baglanti.DataReaderAl("select PRODUCERCODE from LG_" + baglanti.GFirma + "_ITEMS where ACTIVE=0 AND CLASSTYPE = 0 " + SGSqlAra + " group by PRODUCERCODE");
                    //while (oku2.Read())
                    //{
                    //    customers.Add(oku2["PRODUCERCODE"].ToString());
                    //}



                }
            }
            return customers;
        }


        protected void CMBMARKA_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CMBModel_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridItem_ProcessColumnAutoFilter(object sender, ASPxGridViewAutoFilterEventArgs e)
        {
            //FGridDoldur();
        }

        protected void btSearch_Click(object sender, EventArgs e)
        {
            GridItem.SettingsText.Title = "";


            TXTGSEarchDifCode.Text = "";
            GridItem.FilterExpression = "";
            CMBMARKA.Text = "";
            CMBASPE2.Text = "";
            CMBASPE3.Text = "";
            CMBASPE4.Text = "";
            CMBASPE5.Text = "";
            CMBAITOZ.Text = "";
            //CMBAITOZ.SelectedItem.Value = "";
            CMBKAMP.Value = "";
            CMBKAMP.Text = "";
            cmbDoldur();
            CMBASPE2Doldur();
            CMBASPE3Doldur();
            CMBASPE4Doldur();
            CMBASPE5Doldur();
            // CMBAITOZDoldur();

            FGridDoldur();

        }

        protected void TXTGSEarch_TextChanged(object sender, EventArgs e)
        {

            //  FGridDoldur();
        }

        protected void BTNTemizle_Click(object sender, EventArgs e)
        {
            GridItem.SettingsText.Title = "";
            GridItem.FilterExpression = "";
            TXTGSEarch.Text = ""; TXTGSEarchCode.Text = ""; TXTGSEarchDifCode.Text = "";
            CMBMARKA.Text = "";
            CMBASPE2.Text = "";
            CMBASPE3.Text = "";
            CMBASPE4.Text = "";
            CMBASPE5.Text = "";
            CMBAITOZ.Text = "";
            //CMBAITOZ.SelectedItem.Value = "";
            CMBKAMP.Value = "";
            CMBKAMP.Text = "";
            //   CMBMARKA.Value = "";
            FGridDoldur();
            cmbDoldur();
            CMBASPE2Doldur();
            CMBASPE3Doldur();
            CMBASPE4Doldur();
            CMBASPE5Doldur();
            // CMBAITOZDoldur();
        }
        protected void TXTGSEarchCode_TextChanged(object sender, EventArgs e)
        {
            TXTGSEarch.Text = "";
            FGridDoldur();
        }

        protected void CMBMARKA_SelectedIndexChanged2(object sender, EventArgs e)
        {
            TXTGSEarch.Text = ""; TXTGSEarchCode.Text = ""; GridItem.FilterExpression = "";
            CMBAITOZ.Text = "";
            // CMBAITOZ.SelectedItem.Value = "";
            CMBKAMP.Value = "";
            CMBKAMP.Text = "";
            HFAramaDeger.Value = "";
            FGridDoldur2(MarkaSqlSTRVer());
            TXTTemizle();
            //cmbDoldur();
            CMBASPE2Doldur();
            CMBASPE3Doldur();
            CMBASPE4Doldur();
            CMBASPE5Doldur();
            //  CMBAITOZDoldur();
            GridItem.PageIndex = 0;
            //  FGridDoldur();
        }

        protected void CMBASPE2_SelectedIndexChanged1(object sender, EventArgs e)
        {
            TXTGSEarch.Text = ""; TXTGSEarchCode.Text = ""; GridItem.FilterExpression = "";
            CMBAITOZ.Text = "";
            //CMBAITOZ.SelectedItem.Value = "";
            CMBKAMP.Value = "";
            CMBKAMP.Text = "";
            // FGridDoldur();
            HFAramaDeger.Value = "";
            FGridDoldur2(MarkaSqlSTRVer());
            TXTTemizle();
            cmbDoldur();
            //CMBASPE2Doldur();
            CMBASPE3Doldur();
            CMBASPE4Doldur();
            CMBASPE5Doldur();
            //  CMBAITOZDoldur();
            GridItem.PageIndex = 0;
        }

        protected void CMBASPE3_SelectedIndexChanged1(object sender, EventArgs e)
        {
            TXTGSEarch.Text = ""; TXTGSEarchCode.Text = ""; GridItem.FilterExpression = "";
            CMBAITOZ.Text = "";
            //CMBAITOZ.SelectedItem.Value = "";
            CMBKAMP.Value = "";
            CMBKAMP.Text = "";
            HFAramaDeger.Value = "";
            FGridDoldur2(MarkaSqlSTRVer());
            TXTTemizle();
            cmbDoldur();
            CMBASPE2Doldur();
            //CMBASPE3Doldur();
            CMBASPE4Doldur();
            CMBASPE5Doldur();
            //  CMBAITOZDoldur();
            GridItem.PageIndex = 0;
        }

        protected void CMBAITOZ_SelectedIndexChanged1(object sender, EventArgs e)
        {
            TXTTemizle();
            GridItem.FilterExpression = "";
            CMBMARKA.Text = "";
            CMBASPE2.Text = "";
            CMBASPE3.Text = "";
            CMBASPE4.Text = "";
            CMBASPE5.Text = "";
            CMBKAMP.Value = "";

            CMBKAMP.Text = "";
            HFAramaDeger.Value = "";
            FGridDoldur();
            //CMBMARKA.Text = ""; CMBASPE2.Text = ""; 
            //CMBASPE3.Text = "";
            //CMBASPE4.Text = "";
            //CMBASPE5.Text = "";

            //  FGridDoldur();
        }

        protected void CMBASPE5_SelectedIndexChanged1(object sender, EventArgs e)
        {
            TXTGSEarch.Text = ""; TXTGSEarchCode.Text = ""; GridItem.FilterExpression = "";
            HFAramaDeger.Value = "";
            FGridDoldur2(MarkaSqlSTRVer());
            TXTTemizle();
            cmbDoldur();
            CMBASPE2Doldur();
            CMBASPE3Doldur();
            CMBASPE4Doldur();
            //CMBASPE5Doldur();
            //  CMBAITOZDoldur();
            GridItem.PageIndex = 0;

        }

        protected void CMBASPE4_SelectedIndexChanged1(object sender, EventArgs e)
        {
            TXTGSEarch.Text = ""; TXTGSEarchCode.Text = ""; GridItem.FilterExpression = "";
            HFAramaDeger.Value = "";
            FGridDoldur2(MarkaSqlSTRVer());
            TXTTemizle();
            cmbDoldur();
            CMBASPE2Doldur();
            CMBASPE3Doldur();
            //CMBASPE4Doldur();
            CMBASPE5Doldur();
            //  CMBAITOZDoldur();
            GridItem.PageIndex = 0;

        }

        protected void TXTGSEarchCode_TextChanged1(object sender, EventArgs e)
        {
            CMBTemizle();
        }

        protected void UCMBUretici_SelectedIndexChanged(object sender, EventArgs e)
        {
            UCMBModel.Visible = true;
            UCMBMType.Visible = false;
            UCMBMotorG.Visible = false;
            UCMBMANUFF.Visible = false;
            UCMBFType.Visible = false;

            XLSMODELDoldur();

        }

        protected void UCMBModel_SelectedIndexChanged(object sender, EventArgs e)
        {
            XLSMODELTipDoldur();
            UCMBModel.Visible = true;
            UCMBMType.Visible = true;
            UCMBMotorG.Visible = false;
            UCMBMANUFF.Visible = false;
            UCMBFType.Visible = false;
        }

        protected void UCMBMType_SelectedIndexChanged(object sender, EventArgs e)
        {
            UCMBModel.Visible = true;
            UCMBMType.Visible = true;
            UCMBMotorG.Visible = true;
            UCMBMANUFF.Visible = false;
            UCMBFType.Visible = false;
            XLSHPDoldur();

        }

        protected void UCMBMotorG_SelectedIndexChanged(object sender, EventArgs e)
        {
            UCMBModel.Visible = true;
            UCMBMType.Visible = true;
            UCMBMotorG.Visible = true;
            UCMBMANUFF.Visible = true;
            UCMBFType.Visible = false;
            XLSMANUFFDoldur();

        }

        protected void UCMBMANUFF_SelectedIndexChanged(object sender, EventArgs e)
        {
            UCMBModel.Visible = true;
            UCMBMType.Visible = true;
            UCMBMotorG.Visible = true;
            UCMBMANUFF.Visible = true;
            UCMBFType.Visible = true;
            XLSFuelTypeDoldur();

        }

        protected void UCMBFType_SelectedIndexChanged(object sender, EventArgs e)
        {
            //listele
        }

        protected void CMBKAMPS_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CMBKAMP_SelectedIndexChanged(object sender, EventArgs e)
        {
            TXTGSEarch.Text = ""; TXTGSEarchCode.Text = ""; GridItem.FilterExpression = "";
            CMBMARKA.Text = "";
            CMBASPE2.Text = "";
            CMBASPE3.Text = "";
            CMBASPE4.Text = "";
            CMBASPE5.Text = "";
            CMBAITOZ.Text = "";
            //CMBAITOZ.SelectedItem.Value = "";
            HFAramaDeger.Value = "";
            CMBAITOZ.Visible = false;
            LBLAracSinif.Visible = false;
            CMBAITOZSPE.Text = "";
            FGridDoldur3();
        }

        protected void CMBMARKA_ButtonClick(object source, ButtonEditClickEventArgs e)
        {
            TXTTemizle();
        }

        protected void CMBMARKA_TextChanged(object sender, EventArgs e)
        {
            TXTTemizle();
        }

        protected void CMBMARKA_Init(object sender, EventArgs e)
        {

        }

        protected void CMBMARKA_Callback(object sender, DevExpress.Web.ASPxClasses.CallbackEventArgsBase e)
        {

        }

        protected void BTNGenel_Click(object sender, EventArgs e)
        {
            GridItem.SettingsText.Title = "";
            TXTGSEarchCode.Text = "";
            TXTGSEarchDifCode.Text = "";
            GridItem.FilterExpression = "";
            CMBMARKA.Text = "";
            CMBASPE2.Text = "";
            CMBASPE3.Text = "";
            CMBASPE4.Text = "";
            CMBASPE5.Text = "";
            CMBAITOZ.Text = "";
            //CMBAITOZ.SelectedItem.Value = "";
            CMBKAMP.Value = "";
            CMBKAMP.Text = "";
            cmbDoldur();
            CMBASPE2Doldur();
            CMBASPE3Doldur();
            CMBASPE4Doldur();
            CMBASPE5Doldur();
            // CMBAITOZDoldur();

            FGridDoldur();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            TXTGSEarchCode.Text = "";
            TXTGSEarch.Text = "";
            GridItem.FilterExpression = "";
            CMBMARKA.Text = "";
            CMBASPE2.Text = "";
            CMBASPE3.Text = "";
            CMBASPE4.Text = "";
            CMBASPE5.Text = "";
            CMBAITOZ.Text = "";
            //CMBAITOZ.SelectedItem.Value = "";
            CMBKAMP.Value = "";
            CMBKAMP.Text = "";
            cmbDoldur();
            CMBASPE2Doldur();
            CMBASPE3Doldur();
            CMBASPE4Doldur();
            CMBASPE5Doldur();
            // CMBAITOZDoldur();

            FGridDoldur();

        }

        protected void CMBAITOZSPE_SelectedIndexChanged(object sender, EventArgs e)
        {
            CMBAITOZ.Visible = true;
            LBLAracSinif.Visible = true;
            CMBAITOZDoldur();
        }

        protected void CHCKMikKamp_CheckedChanged(object sender, EventArgs e)
        {
            TXTGSEarch.Text = ""; TXTGSEarchCode.Text = ""; GridItem.FilterExpression = "";
            CMBMARKA.Text = "";
            CMBASPE2.Text = "";
            CMBASPE3.Text = "";
            CMBASPE4.Text = "";
            CMBASPE5.Text = "";
            CMBAITOZ.Text = "";
            //CMBAITOZ.SelectedItem.Value = "";
            HFAramaDeger.Value = "";
            CMBAITOZ.Visible = false;
            LBLAracSinif.Visible = false;
            CMBAITOZSPE.Text = "";
            CHCKSonFiyatKamp.Checked = false;
            FGridDoldur3();
        }

        protected void CHCKSonFiyatKamp_CheckedChanged(object sender, EventArgs e)
        {
            TXTGSEarch.Text = ""; TXTGSEarchCode.Text = ""; GridItem.FilterExpression = "";
            CMBMARKA.Text = "";
            CMBASPE2.Text = "";
            CMBASPE3.Text = "";
            CMBASPE4.Text = "";
            CMBASPE5.Text = "";
            CMBAITOZ.Text = "";
            //CMBAITOZ.SelectedItem.Value = "";
            HFAramaDeger.Value = "";
            CMBAITOZ.Visible = false;
            LBLAracSinif.Visible = false;
            CMBAITOZSPE.Text = "";
            CHCKMikKamp.Checked = false;
            FGridDoldur3();
        }
    }
}