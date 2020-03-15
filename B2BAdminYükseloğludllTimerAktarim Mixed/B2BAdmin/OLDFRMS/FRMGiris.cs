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
    public partial class FRMGiris : Form
    {
        public FRMGiris()
        {
            InitializeComponent();
        }
        private void Gir() {
            SqlDataReader oku = baglanti.DataReaderAl("select * from " + baglanti.INITIAL2 + "..ZTBlUseR where Adi='" + TXTUNAME.Text + "' and Sifresi='" + TXTUPASS.Text + "' and Yetkisi=3");
            if (oku.Read())
            {
                FRMAna fa = new FRMAna();
                fa.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Şifre Hatalı !!!");
            }
        }
        private void BTNGiris_Click(object sender, EventArgs e)
        {
            Gir();
        }

        private void TXTUPASS_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar==13)
            {
                Gir();
            }
        }
    }
}
