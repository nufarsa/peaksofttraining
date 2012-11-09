using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using am.Charts;

public partial class CodeBehindBar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            AddBarChart();
    }

    private void AddBarChart()
    {
        // Get data from Northwind
        string constr = ConfigurationManager.ConnectionStrings["AbbasTransportConnectionString"].ConnectionString;
        SqlConnection scon = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select * from Test", scon);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        //myCommand.CommandText = "select CategoryName, sum(UnitsInStock) as UnitsInStock from [Products by Category] group by CategoryName";
        //da.Fill(ds, "Products by Category");

        //conn.Close();

        // create column chart
        ColumnChart chart = new ColumnChart();
        chart.DataSource = dt.DefaultView;
        chart.DataSeriesIDField = "Catname";
        chart.DataSeriesValueField = "Catname"; // here it's the same as ID and could've been ommited

        // crete sales graph
        ColumnChartGraph graph1 = new ColumnChartGraph();
        graph1.DataSource = dt.DefaultView;
        graph1.DataSeriesItemIDField = "Catname";
        graph1.DataValueField = "CatSales";
        graph1.Title = "Sales (in thousands)";

        //// crete stock graph
        //ColumnChartGraph graph2 = new ColumnChartGraph();
        //graph2.DataSource = dt.DefaultView;
        //graph2.DataSeriesItemIDField = "CategoryName";
        //graph2.DataValueField = "UnitsInStock";
        //graph2.Title = "Units in stock";


        chart.Graphs.Add(graph1);
        //chart.Graphs.Add(graph2);

        chart.DataBind();
        ChartPlaceHolder.Controls.Add(chart);

    }
}
