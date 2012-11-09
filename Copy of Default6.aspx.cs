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
            AdminMaster_BLL oAdminMaster_BLL = new AdminMaster_BLL();
            oAdminMaster_BLL.studname = TextBox1.Text;

            
            if (oAdminMaster_BLL .AddName())
            {
                int id =oAdminMaster_BLL.GetID();
                oAdminMaster_BLL.studid =id;
                if (id > 0)
                {
                    int k = oAdminMaster_BLL.AddDetails();
                    
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
