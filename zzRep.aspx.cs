using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace seyhandagitim
{
    public partial class zzRep : System.Web.UI.Page
    {
        protected void RepCek(){
            try
            {
                string USERNAME="Alpay",PASS="",INIT="KOZA",INIT2="MY2",IPS="88.247.77.21",IPS2="95.9.67.14";
                string crptAra = "";
            if (CMBReps.SelectedItem.Value== "0")
            {
                if (TXTCAri.Text != "") { crptAra = "{TAHSILAT.DEFINITION_} like '*" + TXTCAri.Text + "*'"; }
                if (DTPBas.Text != "" && DTPBit.Text != "") { crptAra += "{TAHSILAT.Tarih}>=Date (" + DTPBas.Date.ToString("yyyy,MM,dd") + ") and {TAHSILAT.Tarih}<=Date (" + DTPBit.Date.ToString("yyyy,MM,dd") + ") "; }
                webrpts.E_GenelDurum crt = new webrpts.E_GenelDurum();
                crt.Load(Server.MapPath("/webrpts/E_GenelDurum.rpt"));
                crt.DataSourceConnections.Clear();
                //crt.SetDatabaseLogon(USERNAME, "", @"95.9.67.14", "MY2");
                crt.RecordSelectionFormula = crptAra;
                CrystalReportViewer1.ReportSource = crt;
                CrystalReportViewer1.RefreshReport(); 
            }
           
            if (CMBReps.SelectedItem.Value == "2")
            {
                if (TXTCAri.Text != "") { crptAra = " {MenaFSC.CariAdi} like '*" + TXTCAri.Text + "*'"; }
                if (DTPBas.Text != "" && DTPBit.Text != "") { crptAra = "{MenaFSC.FaturaTarih}>=Date (" + DTPBas.Date.ToString("yyyy,MM,dd") + ") and {MenaFSC.FaturaTarih}<=Date (" + DTPBit.Date.ToString("yyyy,MM,dd") + ") "; }
                webrpts.T_1AlisSatisGenelPlasiyer crt = new webrpts.T_1AlisSatisGenelPlasiyer();
                crt.Load(Server.MapPath("/webrpts/T_1AlisSatisGenelPlasiyer.rpt"));
                crt.SetDatabaseLogon(USERNAME, "", @"88.247.77.21", "KOZA");
                crt.RecordSelectionFormula = crptAra;
                CrystalReportViewer1.ReportSource = crt;
                CrystalReportViewer1.RefreshReport();
            }
            if (CMBReps.SelectedItem.Value == "5")
            {
                if (TXTCAri.Text != "") { crptAra = " {MenaFSC.CariAdi} like '*" + TXTCAri.Text + "*'"; }
                if (DTPBas.Text != "" && DTPBit.Text != "") { crptAra = "{MenaFSC.FaturaTarih}>=Date (" + DTPBas.Date.ToString("yyyy,MM,dd") + ") and {MenaFSC.FaturaTarih}<=Date (" + DTPBit.Date.ToString("yyyy,MM,dd") + ") "; }
                webrpts.T_6_Satis_Kar_Cari_ crt = new webrpts.T_6_Satis_Kar_Cari_();
                crt.Load(Server.MapPath("/webrpts/T_6_Satis_Kar_Cari_.rpt"));
                crt.SetDatabaseLogon(USERNAME, "", @"88.247.77.21", "KOZA");
                crt.RecordSelectionFormula = crptAra;
                CrystalReportViewer1.ReportSource = crt;
                CrystalReportViewer1.RefreshReport();
            }
            if (CMBReps.SelectedItem.Value == "1")
            {
                if (TXTCAri.Text != "") { crptAra = "{TAHSILAT.DEFINITION_} like '*" + TXTCAri.Text + "*'"; }
                if (DTPBas.Text != "" && DTPBit.Text != "") { crptAra += "{TAHSILAT.Tarih}>=Date (" + DTPBas.Date.ToString("yyyy,MM,dd") + ") and {TAHSILAT.Tarih}<=Date (" + DTPBit.Date.ToString("yyyy,MM,dd") + ") "; }
                webrpts.E_GenelTahsilat crt = new webrpts.E_GenelTahsilat();
                crt.Load(Server.MapPath("/webrpts/E_GenelTahsilat.rpt"));
               // crt.SetDatabaseLogon(USERNAME, "", @"88.247.77.21", "KOZA");
                crt.RecordSelectionFormula = crptAra;
                CrystalReportViewer1.ReportSource = crt;
                CrystalReportViewer1.RefreshReport();
            }
            if (CMBReps.SelectedItem.Value == "4")
            {
                if (TXTCAri.Text != "") { crptAra = "{SrGHizmet.DEFINITION_} like '*" + TXTCAri.Text + "*'"; }
                if (DTPBas.Text != "" && DTPBit.Text != "") { crptAra += "{SrGHizmet.DATE_}>=Date (" + DTPBas.Date.ToString("yyyy,MM,dd") + ") and {SrGHizmet.DATE_}<=Date (" + DTPBit.Date.ToString("yyyy,MM,dd") + ") "; }
                webrpts.Mizan crt = new webrpts.Mizan();
                crt.Load(Server.MapPath("/webrpts/Mizan.rpt"));
                // crt.SetDatabaseLogon(USERNAME, "", @"88.247.77.21", "KOZA");
                crt.RecordSelectionFormula = crptAra;
                CrystalReportViewer1.ReportSource = crt;
                CrystalReportViewer1.RefreshReport();
            }
            if (CMBReps.SelectedItem.Value == "3")
            {
                if (TXTCAri.Text != "") { crptAra = " {MenaFSC.CariAdi} like '*" + TXTCAri.Text + "*'"; }
                if (DTPBas.Text != "" && DTPBit.Text != "") { crptAra = "{MenaFSC.FaturaTarih}>=Date (" + DTPBas.Date.ToString("yyyy,MM,dd") + ") and {MenaFSC.FaturaTarih}<=Date (" + DTPBit.Date.ToString("yyyy,MM,dd") + ") "; }
                webrpts.T_1AlisSatisGenel crt = new webrpts.T_1AlisSatisGenel();
                crt.Load(Server.MapPath("/webrpts/T_1AlisSatisGenel.rpt"));
                crt.SetDatabaseLogon(USERNAME, "", @"88.247.77.21", "KOZA");
                crt.RecordSelectionFormula = crptAra;
                CrystalReportViewer1.ReportSource = crt;
                CrystalReportViewer1.RefreshReport();
            }
          
          
            }
            catch (Exception)
            {

               // throw;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            RepCek();
        }

        protected void CrystalReportViewer1_DataBinding(object sender, EventArgs e)
        {
            RepCek();
        }

        protected void CrystalReportViewer1_Load(object sender, EventArgs e)
        {
            RepCek();
        }

        protected void CrystalReportViewer1_ReportRefresh(object source, CrystalDecisions.Web.ViewerEventArgs e)
        {
            RepCek();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            RepCek();
        }

        protected void BTNCLEAR_Click(object sender, EventArgs e)
        {
            DTPBas.Text = "";
            DTPBit.Text = "";
            TXTCAri.Text = "";
            RepCek();
        }
    }
}