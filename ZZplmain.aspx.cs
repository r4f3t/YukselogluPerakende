using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace seyhandagitim
{
    public partial class ZZplmain : System.Web.UI.Page
    {
        protected void GridGetir() {

            string SqlAra = "";
            if (CMBSepetSart.SelectedIndex != -1) 
            {
                if (CMBSepetSart.SelectedItem.Value == "1") { SqlAra = " and ZZ.SonTarih is not null "; }            
            }

            HttpCookie giris = Request.Cookies["giris"];
              string yetkisi=giris["yetki"];
              if (yetkisi == "4")
              {
                  string PLCODE = giris["PLCODE"];
                  string [] APCode = PLCODE.Split(' ');
                  SqlAra += " and (C.SPECODE='" + APCode[0] + "' or C.SPECODE='" + APCode[1] + "')";
              }



                //HttpCookie user = Request.Cookies["myCerez"];

              GridCari.DataSource = baglanti.TabloAl("select C.DEFINITION_ as Firma_Bilgisi,C.CODE as KODU,C.CITY as Sehir,C.LOGICALREF as LOGREF,"+
                  "ZZ.SonTarih "+
                  "   from LG_"+baglanti.GFirma+"_CLCARD as C  left outer join (select  MAX(DATE_) as SonTarih,CLIENTREF  from "+baglanti.INITIAL2+ "..Z_SipLine where Durum=0 group by CLIENTREF) as ZZ on C.LOGICALREF=ZZ.CLIENTREF where  CARDTYPE=1 and LOGICALREF in (40110,40111)  " + SqlAra+"   order by Firma_Bilgisi asc");
              GridCari.DataBind();
        }

        FacebookIslemleri Face = new FacebookIslemleri();

        protected void Page_Load(object sender, EventArgs e)
        {
            //string code = Request.QueryString["code"];
            //string state = "";
            //string type = "";
            //dynamic token = Face.GetAccessToken(code, state, type);
            //FacebookProfil Profil = Face.GetUserInfo(token);
            //Session.Add("Profil", Profil);

            //Label1.Text = Profil.EMail;
            GridGetir();
        }

        protected void GridCari_CustomButtonCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCustomButtonCallbackEventArgs e)
        {
            if (e.ButtonID == "CBtnSec")
            {
                HttpCookie giris = Request.Cookies["giris"];
                baglanti.VeriIslemler("Update ZTbLUser set SipID=SipID+1 where  UserId=" + giris["userid"] + "");
                string CLIENTREF = (sender as DevExpress.Web.ASPxGridView.ASPxGridView).GetRowValues(e.VisibleIndex, "LOGREF").ToString();
                DevExpress.Web.ASPxGridView.ASPxGridView.RedirectOnCallback("zzplcbilg.aspx");
                HttpCookie user = new HttpCookie("myCerez");
                user["CLIENTREF"] = CLIENTREF;
                string GFirmaKodu = "";
                SqlDataReader oku2 = baglanti.DataReaderAl("select CODE,SPECODE FROM LG_" + baglanti.GFirma + "_CLCARD where LOGICALREF=" + CLIENTREF + "");
                if (oku2.Read())
                {
                    GFirmaKodu = oku2["CODE"].ToString();
                    if (GFirmaKodu.Substring(GFirmaKodu.Length - 2, 2) == " 9")
                    {
                        user["DIVISION"] = "1";
                        user["KDVVAR"] = "1";
                        user["TRADINGGRP"] = "02 MAVi";
                    }
                    else {
                        user["TRADINGGRP"] = "02 SİYAH";
                        user["KDVVAR"] = "0";
                    }
                }
                else
                {
                    return;
                }



                user.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(user);
            }

        }

        protected void GridCari_HtmlDataCellPrepared(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewTableDataCellEventArgs e)
        {
            //if (e.DataColumn.FieldName == "STarih")
            //{
            //    e.Cell.Attributes.Add("onclick", "ShowDetailPopup('" + e.KeyValue + "');");
            //}
            //if (e.DataColumn.FieldName == "Firma_Bilgisi")
            //{
            //    e.Cell.Attributes.Add("onclick", "ShowDetailPopup2('" + e.KeyValue + "');");
            //}
        }
        protected void GridCari_HtmlCommandCellPrepared(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewTableCommandCellEventArgs e)
        {

        }

        protected void GridCari_CustomButtonInitialize(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCustomButtonEventArgs e)
        {
            
        }

        protected void CMBSepetSart_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridGetir();
        }
    }
}