using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace BlogWeb
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection sqlConnection = new SqlConnection(@"Data Source=AHMET;Initial Catalog=BlogWebDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            sqlConnection.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM TBLADMIN WHERE USERNAME=@P1 and PASSWORD=@P2",sqlConnection);
            cmd.Parameters.AddWithValue("@P1", TxtUsername.Text);
            cmd.Parameters.AddWithValue("@P2", TxtPassword.Text);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Response.Redirect("AdminExperiences.Aspx");
            }
            else
            {
                Response.Write("Wrong Username or Password");
            }
            sqlConnection.Close();
        }   
    }
}