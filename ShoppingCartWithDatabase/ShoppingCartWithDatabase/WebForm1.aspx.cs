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
        string Productid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Session.Clear();

                string connectionString = WebConfigurationManager.ConnectionStrings["ShoppingProductsDB"].ConnectionString;
                string command = "Select * from Product";
                GridView1.DataSource = getDataItem(connectionString, command).Tables[0];
                GridView1.DataBind();
            }
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
        protected void ExtraxtData(object sender, GridViewCommandEventArgs e)
        {

            GridViewRow Row = ((GridViewRow)((Control)sender).Parent.Parent);
            Productid = GridView1.DataKeys[Row.RowIndex].Value.ToString();
            string cellvalue = Row.Cells[1].Text;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }
    }
}