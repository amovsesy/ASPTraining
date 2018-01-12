using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using TaxCalculatorComponent;

public partial class _Default : System.Web.UI.Page 
{
    private Formatter theFormatter;

    protected void Page_Load(object sender, EventArgs e)
    {
        theFormatter = new Formatter("USD");
    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        localhost.Service proxy = new localhost.Service();
        string greeting = proxy.HelloWorld();


        double amount = double.Parse(NetAmountTextBox.Text);

        double total = TaxCalculator.CalculateTotalPrice(amount);

        TotalAmountLabel.Text = string.Format("{0}, Net amount={1}, Total amount={2}",
            greeting,
            theFormatter.FormatCurrency(amount),
            theFormatter.FormatCurrency(total));
    }
}
