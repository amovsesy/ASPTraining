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

public partial class OrderPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string username = Request.QueryString["username"];

            WelcomeLabel.Text += ", " + username;
        }
    }

    protected void CheckoutButton_Click(object sender, EventArgs e)
    {
        string username = Request.QueryString["username"];
        string product = ProductTextBox.Text;

        string url = "~/SummaryPage.aspx?username=" + username + "&product=" + product;
        Response.Redirect(url);
    }
}
