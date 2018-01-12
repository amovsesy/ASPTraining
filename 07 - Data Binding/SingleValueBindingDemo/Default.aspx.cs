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
        this.DataBind();
    }

    public DateTime UtcTime
    {
        get { return DateTime.UtcNow; }
    }

    public DateTime GetTimeInTimeZone(int timezone)
    {
        return DateTime.UtcNow.AddHours(timezone);
    }

    public String TopProductID
    {
        get { return "1234"; }
    }
}
