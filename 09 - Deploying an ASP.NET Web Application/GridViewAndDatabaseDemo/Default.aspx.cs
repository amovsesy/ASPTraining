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

    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        int newIndex = e.NewSelectedIndex;

        object productID = GridView1.DataKeys[newIndex].Value;

        string productName = GridView1.Rows[newIndex].Cells[0].Text;

        string inStock = GridView1.Rows[newIndex].Cells[3].Text;

        CheckBox discontinued = GridView1.Rows[newIndex].Cells[6].Controls[0] as CheckBox;

        if (inStock == "0")
        {
            e.Cancel = true;
            MessageLabel.Text = string.Format("Cannot select <b>{0} [product ID {1}]</b>, there are no items in stock", productName, productID);
        }
        else if (discontinued.Checked)
        {
            e.Cancel = true;
            MessageLabel.Text = string.Format("Cannot select <b>{0} [product ID {1}]</b>, the product is discontinued", productName, productID);
        }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        object productID = GridView1.SelectedDataKey.Value;

        string productName = GridView1.SelectedRow.Cells[0].Text;

        string inStock = GridView1.SelectedRow.Cells[3].Text;

        CheckBox discontinued = GridView1.SelectedRow.Cells[6].Controls[0] as CheckBox;

        MessageLabel.Text = string.Format("<b>{0} [{1}]</b>, {2} in stock, {3}",
            productName,
            productID,
            inStock,
            discontinued.Checked ? "discontinued" : "not discontinued");
    }
    protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        Trace.Write("SqlDataSource1_Selected", "Rows affected: " + e.AffectedRows);
    }
}
