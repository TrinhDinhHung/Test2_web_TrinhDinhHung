using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;
namespace Test2_TrinhDinhHung
{
    public partial class Create_Drawal : System.Web.UI.Page
    {
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
        protected void Page_Load(object sender, EventArgs e)
        {
            lbSoDu.Text ="$"+ Session["Money"].ToString();
        }

        protected void btSubM_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["shopcoinCNN"].ConnectionString);
            cnn.Open();
            SqlCommand cmd = new SqlCommand("insert into withdraw (Email,code_rut,R_USD,R_VND,Time_rut) values (@email,@code_rut,@r_usd,@r_vnd,@time_rut)",cnn);
            cmd.Parameters.AddWithValue("@email", Session["Email"].ToString());
            cmd.Parameters.AddWithValue("@code_rut",GetUniqueKey(10));
            cmd.Parameters.AddWithValue("@r_usd", txtUSD.Text);
            cmd.Parameters.AddWithValue("@r_vnd", lbVND.Text);
            cmd.Parameters.AddWithValue("@time_rut", DateTime.Now.ToString());
            try
            {
                cmd.ExecuteNonQuery();
                SqlCommand cmdCapNhat = new SqlCommand("update qlUser set money=@money where email=@email", cnn);
                float money = float.Parse(Session["Money"].ToString()) - float.Parse(txtUSD.Text);
                cmdCapNhat.Parameters.AddWithValue("@emai", Session["Email"].ToString());
                cmd.Parameters.AddWithValue("@money", money);
                cmdCapNhat.ExecuteNonQuery();
                Response.Write("<script> alert('Giao dịch thành công!')</script>");
            }
            catch
            {
                Response.Write("<script> alert('Giao dịch không thành công!')</script>");
            }
        }

        protected void txtUSD_TextChanged(object sender, EventArgs e)
        {
            int usd = int.Parse(txtUSD.Text);
            int vnd = usd * 24000;
            lbVND.Text = vnd.ToString("#,##0 đ");
        }
    }
}