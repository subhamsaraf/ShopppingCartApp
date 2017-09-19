using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBAPage
{
    public partial class AdminAccess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource2.InsertParameters["Name"].DefaultValue = ((TextBox)Grid_List.FooterRow.FindControl("txtName")).Text;
            SqlDataSource2.InsertParameters["Price"].DefaultValue = ((TextBox)Grid_List.FooterRow.FindControl("txtPrice")).Text;
            SqlDataSource2.Insert();
        }

        
    }
}