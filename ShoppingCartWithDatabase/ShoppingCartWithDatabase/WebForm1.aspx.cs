using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ShoppingCartWithDatabase
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["ShoppingProductsDB"].ConnectionString;
            string command = "Select * from Product";
            GridView1.DataSource = getDataItem(connectionString, command).Tables[0];
            GridView1.DataBind();
        }
        private DataSet getDataItem(string connectionstring, string command)
        {
            SqlConnection con = new SqlConnection(connectionstring);
            SqlCommand comand = new SqlCommand(command, con);
            SqlDataAdapter adapter = new SqlDataAdapter(comand);
            DataSet dataset = new DataSet();
            adapter.Fill(dataset);
            return dataset;
        }
        protected void AddToCart(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }
    }
}