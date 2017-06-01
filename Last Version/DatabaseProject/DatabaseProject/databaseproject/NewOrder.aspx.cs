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
    public partial class NewOrder : System.Web.UI.Page
    {
        
      static  String UnitPriceD;
        static int Counter = 0;
       static String OrderIDs;
        static int counterFive = 0;
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
        protected void Submit_Click(Object sender, EventArgs e)
        {
            try
            {
                if (counterFive < 5)
                {
                    SqlConnection connection = new SqlConnection("Data Source=ICSD-DB\\ICSDMSSQLSRV;MultipleActiveResultSets=true; Initial Catalog=icsd11039;Integrated Security=True");

                    if (Counter < 1)
                    {


                        String sqlString = "INSERT INTO Orders(CustomerID) VALUES(@CustomerID)";
                        connection.Open();

                        SqlCommand command = new SqlCommand(sqlString, connection);

                        command.Parameters.Add("@CustomerID", SqlDbType.VarChar).Value = TextBox2.Text;
                        command.ExecuteNonQuery();



                        String sqlString2 = "SELECT OrderID FROM Orders";

                        SqlCommand command2 = new SqlCommand(sqlString2, connection);
                        SqlDataReader dr = command2.ExecuteReader();

                        while (dr.Read())
                        {

                            OrderIDs = dr["OrderID"].ToString();
                        }

                        dr.Close();

                        Counter++;
                        
                        connection.Close();
                    }
                    connection.Open();
                    String sqlString3 = "INSERT INTO Order_Details(OrderID,ProductID,UnitPrice,Quantity) VALUES(@OrderID,@ProductID,@UnitPrice,@Quantity)";
                    int IDorder = Int32.Parse(OrderIDs);

                    String sqlString4 = "SELECT UnitPrice FROM Products";

                    SqlCommand command4 = new SqlCommand(sqlString4, connection);
                    SqlDataReader dr1 = command4.ExecuteReader();

                    while (dr1.Read())
                    {

                        UnitPriceD = dr1["UnitPrice"].ToString();

                    }

                    dr1.Close();


                    decimal UP = decimal.Parse(UnitPriceD);
                    SqlCommand command3 = new SqlCommand(sqlString3, connection);
                    command3.Parameters.Add("@ProductID", SqlDbType.Int).Value = TextBox1.Text;
                    command3.Parameters.Add("@OrderID", SqlDbType.Int).Value = IDorder;
                    command3.Parameters.Add("@UnitPrice", SqlDbType.Money).Value = UP;
                    command3.Parameters.Add("@Quantity", SqlDbType.SmallInt).Value = TextBox3.Text;
                    command3.ExecuteNonQuery();
                    connection.Close();
                    NewProductOrder.ForeColor = System.Drawing.Color.Green;
                    NewProductOrder.Text = "New product added successfully!";

                    counterFive++;
                }
                else
                {
                    NewProductOrder.ForeColor = System.Drawing.Color.Red;
                    NewProductOrder.Text = "You have added to your order 5 products. Your basket is full.";
                }
            }
            catch(Exception)
            {
                NewProductOrder.ForeColor = System.Drawing.Color.Red;
                NewProductOrder.Text = "Not valid user or out of range product";
            }
        }


    }
}