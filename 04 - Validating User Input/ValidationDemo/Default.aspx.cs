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
    protected void SecurityCodeCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.IndexOf("buzz") == -1)
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            ResultLabel.Text = "Thanks for all that lovely valid data!";
        }
    }
}
