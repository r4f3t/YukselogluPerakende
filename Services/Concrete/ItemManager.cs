using seyhandagitim.Services.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dapper;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using seyhandagitim.Models;

namespace seyhandagitim.Services.Concrete
{
    public class ItemManager : IItemService
    {
        private IDbConnection GetConnection()
        {
            return new SqlConnection(ConfigurationManager.ConnectionStrings["KOZAConnectionString"].ConnectionString);
        }
        public int GetHierarchyRef(int itemRef)
        {
            var retVal = 0;
            using (var db = GetConnection())
            {
                var result = db.Query<int>("select DOMINANTREFS5 from LG_" + baglanti.GFirma + "_ITEMS where LOGICALREF=" + itemRef + "");
                retVal = result.FirstOrDefault();
            }
            return retVal;
        }

        public IList<ItemHierarchy> GetHierarchyRefByCode(string code)
        {
            var retVal = new List<ItemHierarchy>();
            using (var db = GetConnection())
            {
                retVal = db.Query<ItemHierarchy>("select DOMINANTREFS5,CODE from LG_" + baglanti.GFirma + "_ITEMS where lower(replace(CODE,' ','')) like '%" + code.ToLower().Replace(" ", "") + "%'").ToList();
            }
            return retVal;
        }

        public IList<Item> GetItemsByDominantRef(ItemHierarchy itemHierarchy)
        {
            var retVal = new List<Item>();
            if (itemHierarchy.DOMINANTREFS5 == 0)
                return retVal;

            using (var db = GetConnection())
            {
                retVal = db.Query<Item>("SELECT ITM.NAME3,ITM.LOGICALREF, ITM.CODE AS Ürün_Kodu,ITM.NAME as Ürün_Adı,ITM.SPecode as Urun_Ozel,ITM.SPECODE5 as SKURU,isnull(st.onhand,0)as G_Stok,(isnull(st.onhand,0)-isnull(st.RESERVED,0))AS F_Stok,R.CODE,R.UREF,ITM.VAT,R.SETREF,ITM.DOMINANTREFS5,ITM.STGRPCODE,ITM.SPECODE3,'" + itemHierarchy.CODE + "' as ALTERNATE,ITM.SPECODE2,(CASE WHEN LEN(ITM.CYPHCODE)>0 THEN 'Kampanya Var' else '' end ) as ISKAMPANYA,Z.ACIKLAMA FROM (SELECT CYPHCODE,LOGICALREF,CODE,NAME,SPECODE,VAT,UNITSETREF,ISONR,SPECODE5,STGRPCODE,DOMINANTREFS5,SPECODE3,SPECODE4,SPECODE2,PRODUCERCODE,NAME3,CARDTYPE,NAME4 FROM LG_" + baglanti.GFirma + "_ITEMS WHERE ACTIVE=0 AND CLASSTYPE = 0) as ITM left outer join (SELECT STOCKREF,SUM(ONHAND)AS ONHAND,SUM(RESERVED) AS RESERVED,SUM(SALAMNT) AS SATILAN FROM     LV_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STINVTOT WHERE INVENNO=0 GROUP BY STOCKREF) as ST ON ITM.LOGICALREF=ST.STOCKREF left outer join (SELECT isnull(LOGICALREF,0) AS UREF,CODE, NAME AS BIRIM,UNITSETREF AS SETREF  FROM LG_" + baglanti.GFirma + "_UNITSETL where MAINUNIT=1) as R  ON ITM.UNITSETREF=R.SETREF left outer join LG_XT1001_" + baglanti.GFirma + " as XI on ITM.LOGICALREF=XI.PARLOGREF  left outer join LOGOKAMP..ZZ_StokSinir as Z on    isnull(st.onhand,0)>=Z.SMIN and  isnull(st.onhand,0)<=Z.SMAX  and ITM.SPECODE=Z.OK COLLATE Turkish_CI_AS  left outer join (select CODE from LOGOKAMP..IND_URUNMikVade ) as IUM on ITM.CODE=IUM.CODE COLLATE Turkish_CI_AS   left outer join (select URUNKODU from LOGOKAMP..IND_URUN ) as ISF on ITM.CODE=ISF.URUNKODU COLLATE Turkish_CI_AS   where ITM.LOGICALREF>0 and ITM.CARDTYPE<>4  and ITM.DOMINANTREFS5=" + itemHierarchy.DOMINANTREFS5 + " group by ITM.NAME3,ITM.CYPHCODE,Z.ACIKLAMA,ITM.LOGICALREF, ITM.CODE,ITM.NAME,ITM.SPecode ,ITM.SPECODE5,isnull(st.onhand,0),(isnull(st.onhand,0)-isnull(st.RESERVED,0)),R.CODE,R.UREF,ITM.VAT,R.SETREF,ITM.DOMINANTREFS5,ITM.STGRPCODE,ITM.SPECODE3,(CASE WHEN DOMINANTREFS5<>0 THEN 'Alternatifi VAR' else '' end),ITM.SPECODE2  order by ITM.SPECODE").ToList();
            }
            return retVal;
        }

        public IList<Item> GetItemsByCode(string code)
        {
            var retVal = new List<Item>();
            using (var db = GetConnection())
            {
                retVal = db.Query<Item>("SELECT ITM.NAME3,ITM.LOGICALREF, ITM.CODE AS Ürün_Kodu,ITM.NAME as Ürün_Adı,ITM.SPecode as Urun_Ozel,ITM.SPECODE5 as SKURU,isnull(st.onhand,0)as G_Stok,(isnull(st.onhand,0)-isnull(st.RESERVED,0))AS F_Stok,R.CODE,R.UREF,ITM.VAT,R.SETREF,ITM.DOMINANTREFS5,ITM.STGRPCODE,ITM.SPECODE3,'' as ALTERNATE,ITM.SPECODE2,(CASE WHEN LEN(ITM.CYPHCODE)>0 THEN 'Kampanya Var' else '' end ) as ISKAMPANYA,Z.ACIKLAMA FROM (SELECT CYPHCODE,LOGICALREF,CODE,NAME,SPECODE,VAT,UNITSETREF,ISONR,SPECODE5,STGRPCODE,DOMINANTREFS5,SPECODE3,SPECODE4,SPECODE2,PRODUCERCODE,NAME3,CARDTYPE,NAME4 FROM LG_" + baglanti.GFirma + "_ITEMS WHERE ACTIVE=0 AND CLASSTYPE = 0) as ITM left outer join (SELECT STOCKREF,SUM(ONHAND)AS ONHAND,SUM(RESERVED) AS RESERVED,SUM(SALAMNT) AS SATILAN FROM     LV_" + baglanti.GFirma + "_" + baglanti.GDONEM + "_STINVTOT WHERE INVENNO=0 GROUP BY STOCKREF) as ST ON ITM.LOGICALREF=ST.STOCKREF left outer join (SELECT isnull(LOGICALREF,0) AS UREF,CODE, NAME AS BIRIM,UNITSETREF AS SETREF  FROM LG_" + baglanti.GFirma + "_UNITSETL where MAINUNIT=1) as R  ON ITM.UNITSETREF=R.SETREF left outer join LG_XT1001_" + baglanti.GFirma + " as XI on ITM.LOGICALREF=XI.PARLOGREF  left outer join LOGOKAMP..ZZ_StokSinir as Z on    isnull(st.onhand,0)>=Z.SMIN and  isnull(st.onhand,0)<=Z.SMAX  and ITM.SPECODE=Z.OK COLLATE Turkish_CI_AS  left outer join (select CODE from LOGOKAMP..IND_URUNMikVade ) as IUM on ITM.CODE=IUM.CODE COLLATE Turkish_CI_AS   left outer join (select URUNKODU from LOGOKAMP..IND_URUN ) as ISF on ITM.CODE=ISF.URUNKODU COLLATE Turkish_CI_AS   where ITM.LOGICALREF>0 and ITM.CARDTYPE<>4  and lower(replace(ITM.CODE,' ','')) like '%" + code.ToLower().Replace(" ", "") + "%' group by ITM.NAME3,ITM.CYPHCODE,Z.ACIKLAMA,ITM.LOGICALREF, ITM.CODE,ITM.NAME,ITM.SPecode ,ITM.SPECODE5,isnull(st.onhand,0),(isnull(st.onhand,0)-isnull(st.RESERVED,0)),R.CODE,R.UREF,ITM.VAT,R.SETREF,ITM.DOMINANTREFS5,ITM.STGRPCODE,ITM.SPECODE3,(CASE WHEN DOMINANTREFS5<>0 THEN 'Alternatifi VAR' else '' end),ITM.SPECODE2  order by ITM.SPECODE").ToList();
            }
            return retVal;
        }
    }
}