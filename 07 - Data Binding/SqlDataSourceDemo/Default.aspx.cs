using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string message = String.Format("Number of items in list box is: {0}", AllProductsListBox.Items.Count);
        Trace.Warn("Page_Load", message);
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
        string message = String.Format("Command about to be executed is: {0}", e.Command.CommandText);
        Trace.Warn("SqlDataSource1_Selecting", message);
    }
    protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        string message = String.Format("Number of rows affected is: {0}", e.AffectedRows);
        Trace.Warn("SqlDataSource1_Selected", message);
    }
}

