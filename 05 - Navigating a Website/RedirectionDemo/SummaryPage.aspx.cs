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

public partial class SummaryPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string username = Request.QueryString["username"];
            string product = Request.QueryString["product"];

            SummaryLabel.Text = String.Format("Hey thanks {0}, your {1} is on its way!!!", username, product);
        }
    }
}
