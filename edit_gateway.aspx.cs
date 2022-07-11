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
    public partial class edit_gateway : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btSub_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["shopcoinCNN"].ConnectionString);
            cnn.Open();
            SqlCommand cmd = new SqlCommand("insert into Bank_User (Email,MaNH,STK,TenChuTK) values (@email,@manh,@stk,@tenchutk)", cnn);
            cmd.Parameters.AddWithValue("@email", Session["Email"].ToString());
            cmd.Parameters.AddWithValue("@manh", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@stk", txtAccNum.Text);
            cmd.Parameters.AddWithValue("@tenchutk", txtAccName.Text);
            try
            {
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Cập nhật thành công!')</script>");
            }
            catch
            {
                Response.Write("<script> alert('Lưu thông tin thất bại hãy kiểm tra lại!')</script>");
            }
        }
    }
}