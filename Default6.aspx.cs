using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Transactions;


public partial class Default6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (TransactionScope ts = new TransactionScope())
        {
            SqlConnection scon = new SqlConnection("Data Source=.;Initial Catalog=PracticeDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = scon;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = " insert into StudentPK values(@studname)";
            cmd.Parameters.Clear();
            cmd.Parameters.Add("@studname", SqlDbType.VarChar, 50).Value = TextBox1.Text;
            scon.Open();
            int i = cmd.ExecuteNonQuery();
            scon.Close();
            if (i > 0)
            {
                SqlCommand cmd1 = new SqlCommand();
                cmd1.Connection = scon;
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "select max(studid) from StudentPK";
                scon.Open();
                int id = Convert.ToInt32(cmd1.ExecuteScalar());
                scon.Close();
                if (id > 0)
                {
                    SqlCommand cmd2 = new SqlCommand();
                    cmd2.Connection = scon;
                    cmd2.CommandType = CommandType.Text;
                    cmd2.CommandText = " insert into StudentDetails values(@studphone,@studid)";
                    cmd2.Parameters.Clear();
                    cmd2.Parameters.Add("@studphone", SqlDbType.BigInt).Value = TextBox2.Text;
                    cmd2.Parameters.AddWithValue("@studid", id);
                    int k=0;
                    try
                    {
                        scon.Open();
                        k = cmd2.ExecuteNonQuery();
                        scon.Close();
                    }
                    catch (Exception)
                    {
                        ts.Dispose();
                        Label1.Text = "error";
                    }
                    
                    if (k > 0)
                    {
                        ts.Complete();
                        Label1.Text = "ok";
                    }
                    else
                    {
                        ts.Dispose();
                        Label1.Text = "error";
                    }
                }
                else
                {
                    ts.Dispose();
                    Label1.Text = "error";

                }
            }
            else
            {
                ts.Dispose();
                Label1.Text = "error";

            }
        }
        
        
        



    }
}
