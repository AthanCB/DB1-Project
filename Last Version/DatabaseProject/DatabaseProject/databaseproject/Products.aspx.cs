using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;
using System.Data;


namespace DatabaseProject
{
    public partial class ProductsClass : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
                Response.Redirect("~/Default.aspx");
        }
        protected void Products_Click(Object sender, EventArgs e)
        {
            Response.Redirect("~/Products.aspx");
        }
        protected void Insert_Click(Object sender, EventArgs e)
        {
            Response.Redirect("~/Insert.aspx");
        }
        protected void Orders_Click(Object sender, EventArgs e)
        {
            Response.Redirect("~/Orders.aspx");
        }
        protected void NewOrder_Click(Object sender, EventArgs e)
        {
            Response.Redirect("~/NewOrder.aspx");
        }
    }
}