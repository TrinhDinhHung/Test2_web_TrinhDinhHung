using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

namespace Test2_TrinhDinhHung
{
    public partial class Create_Deposit : System.Web.UI.Page

    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            int usd = int.Parse(txtUSD.Text);
            int vnd = usd * 24000;
            lbVND.Text=vnd.ToString("#,##0 đ");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int usd = int.Parse(txtUSD.Text);
            int vnd = usd * 24000;
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["shopcoinCNN"].ConnectionString);
            cnn.Open();
            SqlCommand cmd = new SqlCommand("insert into DEPOSITS (Email,code,M_VND,M_USD,dategd ) values(@Email,@code,@m_vnd,@m_usd,@dategd)", cnn);
            cmd.Parameters.AddWithValue("@email", Session["Email"].ToString());
            cmd.Parameters.AddWithValue("@code", GetUniqueKey(10));
            cmd.Parameters.AddWithValue("@m_usd",txtUSD.Text);
            cmd.Parameters.AddWithValue("@m_vnd", vnd.ToString());
            cmd.Parameters.AddWithValue("@dategd", DateTime.Now.ToString());
            try
            {


                SqlCommand cmd2 = new SqlCommand("update qlUser set money=@money where email=@email",cnn);
            
                float tong =usd + float.Parse(Session["Money"].ToString());
                cmd2.Parameters.AddWithValue("@money", tong);
                cmd2.Parameters.AddWithValue("email", Session["Email"].ToString());
                cmd.ExecuteNonQuery();
                cmd2.ExecuteNonQuery();
                Session["Money"] = tong;
                Response.Write("<script> alert('Giao Dịch Thành Công!')</script>");
            }
            catch
            {
                Response.Write("<script> alert('Giao dịch thất bại')</script>");
            }

        }
        private static string GetUniqueKey(int size)
        {
            char[] chars =
                "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890".ToCharArray();
            byte[] data = new byte[size];
            using (RNGCryptoServiceProvider crypto = new RNGCryptoServiceProvider())
            {
                crypto.GetBytes(data);
            }
            StringBuilder result = new StringBuilder(size);
            foreach (byte b in data)
            {
                result.Append(chars[b % (chars.Length)]);
            }
            return result.ToString();
        }
    }
}