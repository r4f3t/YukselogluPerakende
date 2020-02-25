using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;

namespace seyhandagitim
{
    /// <summary>
    /// Summary description for myWebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class myWebService : System.Web.Services.WebService
    {

[WebMethod]
    public List<chart1> getList1(string CLIENTREF)
    {
     
        List<chart1> Liste = new List<chart1>();
        SqlDataReader oku = baglanti.DataReaderAl("SELECT TOP 10 ST.LOGICALREF, dbo.LG_" + baglanti.GFirma + "_ITEMS.CODE,left(dbo.LG_" + baglanti.GFirma + "_ITEMS.NAME,28) as URUNADI, ST.AMOUNT as URUNMIKTARI, ST.PRICE BIRIMFIYAT, ST.TOTAL as SATIRTUTARI, ST.DISTDISC, ST.VATAMNT, ST.VATMATRAH,ST.INVOICEREF,ST.DATE_ FROM dbo.LG_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STLINE AS ST INNER JOIN dbo.LG_" + baglanti.GFirma + "_ITEMS ON ST.STOCKREF = dbo.LG_" + baglanti.GFirma + "_ITEMS.LOGICALREF INNER JOIN (SELECT     LOGICALREF, DEFINITION_ FROM  dbo.LG_" + baglanti.GFirma + "_CLCARD) AS C ON ST.CLIENTREF = C.LOGICALREF WHERE     (ST.CANCELLED = 0) AND (C.LOGICALREF = " + CLIENTREF + ") ORDER BY ST.DATE_ DESC");
        if (oku.HasRows)
        {
            while (oku.Read())
            {
                string uad=oku[1].ToString();
                decimal DMiktar = Convert.ToDecimal(oku[3].ToString());

                Liste.Add(new chart1 { UrunAdi = uad, Miktarı = DMiktar.ToString("N") });
            }
        }
    return Liste;
    }
  }
}
