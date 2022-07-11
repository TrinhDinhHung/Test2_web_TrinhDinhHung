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
    public partial class REGISTER : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Random rd = new Random();
            //int r = rd.Next(100000, 999999);
            //lbCapCha.Text = r.ToString();
        }

        protected void btRegister_Click(object sender, EventArgs e)
        {
            //if (lbCapCha.Text == txtCapCha.Text)
            //{
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["shopcoinCNN"].ConnectionString);
            cnn.Open();
            SqlCommand cmd = new SqlCommand("insert into qluser(email,pass,username) values (@email,@pass,@username)", cnn);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@pass", txtPW.Text);
            cmd.Parameters.AddWithValue("@username", txtUserName.Text);
            try
            {
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Chào mừng " + txtUserName.Text + " đến với shopcoinusa') </script>");
            }
            catch
            {
                Response.Write("<script> alert('Email bạn đăng kí đã được sử dụng vui lòng kiểm tra lại!') </script>");
            }
            //}
            //else
            //{
            //    Response.Write("<script> alert('Sai capcha hãy nhập lại') </script>");

            //}
        }
    }
}