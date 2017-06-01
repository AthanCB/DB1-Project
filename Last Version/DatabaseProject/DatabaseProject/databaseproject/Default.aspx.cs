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
    public partial class _Default : Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetNoStore();
        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("Data Source=ICSD-DB\\ICSDMSSQLSRV;Initial Catalog=icsd11039;Integrated Security=True");
            String sqlString = "INSERT INTO UserTable VALUES(@Username,@Password,@Name,@Surname, @RegisterDate)";

            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand(sqlString, connection);
                command.Parameters.Add("@Username", SqlDbType.VarChar).Value = TextBox3.Text;
                command.Parameters.Add("@Password", SqlDbType.VarChar).Value = TextBox4.Text;
                command.Parameters.Add("@Name", SqlDbType.VarChar).Value = TextBox5.Text;
                command.Parameters.Add("@Surname", SqlDbType.VarChar).Value = TextBox6.Text;
                command.Parameters.Add("@RegisterDate", SqlDbType.Date).Value = TextBox7.Text;
                command.ExecuteNonQuery();
                connection.Close();
                Label2.Text = "Η Εγγραφή σας ολοκληρώθηκε επιτυχώς!";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
            }
            catch (Exception ex)
            {
                Label2.Text = ex.ToString();
            }
        }

        protected void Button2_Click(Object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("Data Source=ICSD-DB\\ICSDMSSQLSRV;Initial Catalog=icsd11039;Integrated Security=True");
            String InUser = TextBox1.Text;
            String InPass = TextBox2.Text;
            connection.Open();
            String sqlString_search = "SELECT * FROM UserTable WHERE Username=@Username AND U_Password = @U_Password";
            SqlCommand command = new SqlCommand(sqlString_search, connection);
            command.Parameters.Add("@Username", SqlDbType.VarChar).Value = InUser;
            command.Parameters.Add("@U_Password", SqlDbType.VarChar).Value = InPass;
            SqlDataReader reader = command.ExecuteReader();

            if (reader.HasRows)
            {
                Label1.ForeColor = System.Drawing.Color.Green;
                Session["Username"] = InUser;
                Response.Redirect("~/Products.aspx");
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Λάθος στοιχεία.";
            }
            connection.Close();
        }
      


        }

       
    
}