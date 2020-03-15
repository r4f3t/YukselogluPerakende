using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using System.Threading;

namespace B2BAdmin
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            bool prog;
            //Mutex mtx = new Mutex(true, "B2BAdmin", out prog);
            //if (!prog)
            //{
            //    MessageBox.Show("Bu program zaten çalışıyor Sağ Alttan Kapatıp Yeniden Açabilirsiniz.", "Uyarı!", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //    return;
            //}
            //GC.KeepAlive(mtx);
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new FRMAKTAR());
        }
    }
}
