using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Test2_TrinhDinhHung
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserName"] = "";
            Session["Money"] = "";
        }

        protected void btLogIn_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["shopcoinCNN"].ConnectionString);
            cnn.Open();
            SqlCommand cmd = new SqlCommand("select email,Pass,UserName,Money from qlUser where email=@email and pass=@pass",cnn);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@pass", txtPW.Text);
            SqlDataReader r = cmd.ExecuteReader();
            if (r.Read())
            {
                Session["Email"] = r["Email"];
                Session["UserName"] = r["UserName"];
                Session["Money"] = r["Money"];
                Response.Redirect("~/buyCoin.aspx");
            }
        }
    }
}