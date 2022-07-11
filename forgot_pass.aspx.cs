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
    public partial class forgot_pass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtEmail.Attributes.Add("placeholder", "Email");
        }

        protected void btSend_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["shopcoinCNN"].ConnectionString);
            cnn.Open();
            SqlCommand cmd = new SqlCommand("select email,Pass,UserName from qlUser where email=@email", cnn);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            SqlDataReader r = cmd.ExecuteReader();
            if (r.Read())
            {
                lbThongBao.Text = "Thông tin PassWord đã được gửi về Email của bạn.";
            }
            else
            {
                lbThongBao.Text = "Không tìm thấy Email của bạn trên hệ thống vui lòng kiểm tra lại!";
            }
        }
    }
}