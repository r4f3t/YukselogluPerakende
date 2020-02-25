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
    /// Summary description for AutoComplete1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]

    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class AutoComplete : System.Web.Services.WebService
    {
        [WebMethod]
        public string[] GetCompletionList(string prefixText, int count)
        {
            if (count == 0)
            {
                count = 10;
            }
            DataTable dt = GetRecords(prefixText);
            List<string> items = new List<string>(count);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string strName = dt.Rows[i][0].ToString();
                items.Add(strName);
            }
            return items.ToArray();
        }

        public DataTable GetRecords(string strName)
        {

            SqlConnection con = baglanti.Connection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Parameters.AddWithValue("@Name", strName);
            cmd.CommandText = "Select NAME from LG_" + baglanti.GFirma + "_ITEMS where replace(NAME,' ','') like '%'+@Name+'%' or replace(CODE,' ','') like '%'+@Name+'%' or code like '%'+@NAME+'%'";
            DataSet objDs = new DataSet();
            SqlDataAdapter dAdapter = new SqlDataAdapter();
            dAdapter.SelectCommand = cmd;
            con.Open();
            dAdapter.Fill(objDs);
            con.Close();
            return objDs.Tables[0];
        }
    }
}
