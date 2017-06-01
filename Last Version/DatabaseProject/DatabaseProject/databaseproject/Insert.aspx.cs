using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;


namespace DatabaseProject
{
    public partial class Insert : Page
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
        protected void NewCustomer_Click(Object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("Data Source=ICSD-DB\\ICSDMSSQLSRV;Initial Catalog=icsd11039;Integrated Security=True");
            String sqlString = "INSERT INTO Customers VALUES(@CustomerID,@CompanyName,@ContactName,@ContactTitle,@Address, @City, @Region, @PostalCode,@Country, @Phone, @Fax)";

           
            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand(sqlString, connection);
                command.Parameters.Add("@CustomerID", SqlDbType.VarChar).Value = TextBox1.Text;
                command.Parameters.Add("@CompanyName", SqlDbType.VarChar).Value = TextBox2.Text;
                command.Parameters.Add("@ContactName", SqlDbType.VarChar).Value = TextBox3.Text;
                command.Parameters.Add("@ContactTitle", SqlDbType.VarChar).Value = TextBox4.Text;
                command.Parameters.Add("@Address", SqlDbType.VarChar).Value = TextBox5.Text;
                command.Parameters.Add("@City", SqlDbType.VarChar).Value = TextBox6.Text;
                command.Parameters.Add("@Region", SqlDbType.VarChar).Value = TextBox7.Text;
                command.Parameters.Add("@PostalCode", SqlDbType.VarChar).Value = TextBox8.Text;
                command.Parameters.Add("@Country", SqlDbType.VarChar).Value = TextBox9.Text;
                command.Parameters.Add("@Phone", SqlDbType.VarChar).Value = TextBox10.Text;
                command.Parameters.Add("@Fax", SqlDbType.VarChar).Value = TextBox11.Text;
                command.ExecuteNonQuery();
                connection.Close();
                NewCustomerLabel.ForeColor = System.Drawing.Color.Green;
                NewCustomerLabel.Text = "New customer inserted succesfully!";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";
                TextBox11.Text = "";
            }
            catch (Exception ex)
            {
                NewCustomerLabel.Text = ex.ToString();
            }
        }
    }
}