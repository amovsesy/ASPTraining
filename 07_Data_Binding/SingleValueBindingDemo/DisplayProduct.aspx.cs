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

public partial class DisplayProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // You can initialize controls in code...
            ProductLabel.Text = "Here are the details for product " + Request.QueryString["ProductID"];
            ProductImage.ImageUrl = "Product" + Request.QueryString["ProductID"] + ".jpg";
        }
    }
}
