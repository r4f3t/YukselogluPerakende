using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace seyhandagitim
{
    public partial class Profil : System.Web.UI.Page
    {
        FacebookIslemleri Face = new FacebookIslemleri();

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["Profil"] == null || Session["Profil"].ToString() == string.Empty)
            //{
            //    string code = Request.QueryString["code"];
            //    string state = "";
            //    string type = "";
            //    dynamic token = Face.GetAccessToken(code, state, type);
            //    FacebookProfil Profil = Face.GetUserInfo(token);
            //    Session.Add("Profil", Profil);

            //    lblEPosta.Text = Profil.EMail;
            //    lblID.Text = Profil.ID;
            //    lblKullaniciAdi.Text = Profil.KullaniciAdi;
            //    lblKullanıcıAdSoyad.Text = Profil.Adi + " " + Profil.Soyadi;
            //    imgProfilResmi.ImageUrl = Profil.ProfilResmi;
            //}
            //else
            //{
            //    FacebookProfil Profil = Session["Profil"] as FacebookProfil;

            //    lblEPosta.Text = Profil.EMail;
            //    lblID.Text = Profil.ID;
            //    lblKullaniciAdi.Text = Profil.KullaniciAdi;
            //    lblKullanıcıAdSoyad.Text = Profil.Adi + " " + Profil.Soyadi;
            //    imgProfilResmi.ImageUrl = Profil.ProfilResmi;
            //}
                string code = Request.QueryString["code"];
                string state = "";
                string type = "";
                dynamic token = Face.GetAccessToken(code, state, type);
                FacebookProfil Profil = Face.GetUserInfo(token);
                Session.Add("Profil", Profil);

                lblEPosta.Text = Profil.EMail;
                lblID.Text = Profil.ID;
                lblKullaniciAdi.Text = Profil.KullaniciAdi;
                lblKullanıcıAdSoyad.Text = Profil.Adi + " " + Profil.Soyadi;
                imgProfilResmi.ImageUrl = Profil.ProfilResmi;
        }
    }
}