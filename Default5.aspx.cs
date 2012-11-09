using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Default5 : System.Web.UI.Page
{
    private int rowcount = 0;
    public string evtHandler;
    protected void Page_Load(object sender, EventArgs e)
    {
        //string constr = ConfigurationManager.ConnectionStrings["AbbasTransportConnectionString"].ConnectionString;
        //SqlConnection scon = new SqlConnection(constr);
        //SqlCommand cmd = new SqlCommand("select * from PS006LoginReport",scon);
        //SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        //da.Fill(dt);

        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            int rowIndex = Convert.ToInt32(e.Row.DataItemIndex);
            TextBox TextBox1 = (TextBox)e.Row.FindControl("TextBox1");
            evtHandler = "Calculate(this," + rowIndex + ",2)";
            TextBox1.Attributes.Add("onBlur", evtHandler);
        }
    }
}
