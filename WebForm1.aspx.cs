using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;



namespace checkout6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["adsConnectionString"].ConnectionString);
            con1.Open();
            SqlCommand cmd1 = new SqlCommand("insert into tabledetails values('" + TextBox1.Text + "','" + TextBox2.Text + "')", con1);
            cmd1.ExecuteNonQuery();
            con1.Close();
            GridView1.DataBind();
            Label1.Visible = true;
            Label1.Text = "sucessfully submitted";
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}