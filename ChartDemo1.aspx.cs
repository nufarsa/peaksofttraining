using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using am.Charts;

public partial class ChartDemo1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["AbbasTransportConnectionString"].ConnectionString;
        SqlConnection scon = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select * from Test", scon);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        PieChart1.DataSource = dt;
        PieChart1.DataTitleField = dt.Columns["CAtname"].ToString();
        PieChart1.DataValueField = dt.Columns["CatSales"].ToString();
        PieChart1.DataBind();

        ColumnChart1.DataSource = dt.DefaultView;
        ColumnChart1.DataSeriesIDField = "Catname";
        ColumnChart1.DataSeriesValueField = "Catname";
        

        ColumnChartGraph graph1 = new ColumnChartGraph();
        graph1.DataSource = dt.DefaultView;
        graph1.DataSeriesItemIDField = "Catname";
        graph1.DataValueField = "CatSales";
        
        graph1.Title = "Sales (in thousands)";

        ColumnChart1.Graphs.Add(graph1);

        ColumnChart1.DataBind();

        //LineChart1.DataSource = dt.DefaultView;
        //LineChart1.DataSeriesIDField = "Catname";
        //LineChart1.DataSeriesValueField = "Catname";

       

        //LineChart1.DataBind();
    }
}
