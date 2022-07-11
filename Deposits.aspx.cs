using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test2_TrinhDinhHung
{
    public partial class Deposits : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListView1_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                Label lbl = e.Item.FindControl("Label1") as Label;
                string temp = lbl.Text;
                Session["codeDps"] = temp;
                
            }
        }
    }
}