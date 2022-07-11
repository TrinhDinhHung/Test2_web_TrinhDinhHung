using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Test2_TrinhDinhHung
{
    public partial class BuyCoin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["shopcoinCNN"].ConnectionString);
            cnn.Open();
            SqlCommand cmdBuy = new SqlCommand("insert into coin_user(MaCoin,Email,amount) values(@macoin,@email,@amount)", cnn);
            SqlCommand cmd = new SqlCommand("select * from coin_user where macoin=@Macoin and email=@Email", cnn);
            
        }


    }
}