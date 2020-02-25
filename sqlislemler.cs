using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
namespace seyhandagitim
{
    public class sqlislemler
    {
        baglanti bag = new baglanti();
        
        
        public  DataTable caricek(string ad,string bolge) {
            bag.acik();
            SqlDataAdapter kyt = new SqlDataAdapter("select  LOGREF,Firma_Bilgisi,Sehir,isnull(sum(Peşin),0)as Peşin,isnull(Sum(Vadeli),0) as Vadeli,isnull(sum(Sezon),0) as Sezon,isnull(Sum(Sorunlu),0) as Sorunlu from (SELECT DEFINITION_ as Firma_Bilgisi,CITY as Sehir ,SUM(PBAKIYE)AS Peşin,SUM(VBAKIYE)AS Vadeli,SUM(SBAKIYE)AS Sezon,SUM(DBAKIYE)AS Sorunlu,CYPHCODE FROM( SELECT LOGICALREF,DEFINITION_,CITY,ROUND(DEBIT-CREDIT,2) AS PBAKIYE,0 AS VBAKIYE,0 AS SBAKIYE,0 AS DBAKIYE,CYPHCODE FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,CYPHCODE  FROM LG_" + login.GDFirma + "_CLCARD WHERE ACTIVE=0) AS C LEFT OUTER JOIN(SELECT CARDREF,TOTTYP,DEBIT,CREDIT FROM LG_" + login.GDFirma + "_01_GNTOTCL) AS CL ON C.LOGICALREF=CL.CARDREF WHERE LEFT(RIGHT(C.CODE,3),1)='P' Union All SELECT LOGICALREF,DEFINITION_,CITY,0 AS PBAKIYE,ROUND(DEBIT-CREDIT,2) AS VBAKIYE,0 AS SBAKIYE,0 AS DBAKIYE,CYPHCODE FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,CYPHCODE  FROM LG_" + login.GDFirma + "_CLCARD WHERE ACTIVE=0) AS C LEFT OUTER JOIN(SELECT CARDREF,TOTTYP,DEBIT,CREDIT FROM LG_" + login.GDFirma + "_01_GNTOTCL) AS CL ON C.LOGICALREF=CL.CARDREF WHERE LEFT(RIGHT(C.CODE,3),1)='V' Union All SELECT LOGICALREF,DEFINITION_,CITY,0 AS PBAKIYE,0 AS VBAKIYE,0 AS SBAKIYE,ROUND(DEBIT-CREDIT,2) AS DBAKIYE,CYPHCODE FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,CYPHCODE  FROM LG_" + login.GDFirma + "_CLCARD WHERE ACTIVE=0) AS C LEFT OUTER JOIN(SELECT CARDREF,TOTTYP,DEBIT,CREDIT FROM LG_" + login.GDFirma + "_01_GNTOTCL) AS CL ON C.LOGICALREF=CL.CARDREF WHERE LEFT(RIGHT(C.CODE,3),1)='*' Union All SELECT LOGICALREF,DEFINITION_,CITY,0 AS PBAKIYE,0 AS VBAKIYE,ROUND(DEBIT-CREDIT,2) AS SBAKIYE,0 AS DBAKIYE,CYPHCODE FROM(SELECT LOGICALREF,CODE,DEFINITION_,CITY,CYPHCODE  FROM LG_" + login.GDFirma + "_CLCARD WHERE ACTIVE=0) AS C LEFT OUTER JOIN(SELECT CARDREF,TOTTYP,DEBIT,CREDIT FROM LG_" + login.GDFirma + "_01_GNTOTCL) AS CL ON C.LOGICALREF=CL.CARDREF WHERE LEFT(RIGHT(C.CODE,3),1)='S') AS Y  GROUP BY DEFINITION_,CITY,LOGICALREF,CYPHCODE ) as GG left outer join (select max(LOGICALREF) AS LOGREF,DEFINITION_ AS LOGDEF from LG_" + login.GDFirma + "_clcard group by DEFINITION_) AS TT ON GG.Firma_Bilgisi=TT.LOGDEF where Firma_Bilgisi like '" + ad + "%" + "' and CYPHCODE='" + bolge + "' group by LOGREF,Firma_Bilgisi,Sehir order by Firma_Bilgisi", bag.Gcnn);
            DataTable tablo = new DataTable();
            kyt.Fill(tablo);
            bag.kapali();
            return tablo;
          

       
        }
    }
}