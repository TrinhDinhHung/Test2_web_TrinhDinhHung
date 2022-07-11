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
    public partial class Deposit_Detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["shopcoinCNN"].ConnectionString);
            cnn.Open();
            SqlCommand cmd = new SqlCommand("select code ,dategd,m_USD,M_VND, bank_user.manh,bank_user.tenchutk,bank_user.stk " +
                "from deposits inner join (QLUser inner join bank_user on qlUser.Email = bank_user.Email )on deposits.email = QLUser.EMAIL " +
                "where code = @code", cnn);
            cmd.Parameters.AddWithValue("@code", Session["codeDps"].ToString());
            SqlDataReader r = cmd.ExecuteReader();
            if (r.Read())
            {
                lbCode.Text = r["code"].ToString();
                lbCreAt.Text = r["dategd"].ToString();
                lbAmoUSD.Text = r["m_USD"].ToString();
                lbAmoVND.Text = r["m_VND"].ToString();
                lbMethod.Text = r["manh"].ToString() + " - " + r["tenchutk"].ToString() + " - " + r["stk"];
            }
        }
    }
}