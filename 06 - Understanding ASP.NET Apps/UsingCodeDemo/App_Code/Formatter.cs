using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for Formatter
/// </summary>
public class Formatter
{
    private string currencyCode;

	public Formatter(string c)
	{
        currencyCode = c;
	}

    public string FormatCurrency(double amount)
    {
        return String.Format("{0} {1}", amount, currencyCode);
    }
}
