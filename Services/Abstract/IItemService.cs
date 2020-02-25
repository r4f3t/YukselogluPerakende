using seyhandagitim.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace seyhandagitim.Services.Abstract
{
    public interface IItemService
    {
        int GetHierarchyRef(int itemRef);
        IList<ItemHierarchy> GetHierarchyRefByCode(string code);
        IList<Item> GetItemsByDominantRef(ItemHierarchy itemHierarchy);
        IList<Item> GetItemsByCode(string code);
    }
}