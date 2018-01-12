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
    private DateTime timestamp;


    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);

        timestamp = DateTime.Now;
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CountryList.Items.Add("Australia");
            CountryList.Items.Add("Canada");
            CountryList.Items.Add("France");
            CountryList.Items.Add("Germany");
        }

        TimestampLabel.Text = timestamp.ToString();
    }

    protected void TheButton_Click(object sender, EventArgs e)
    {
        Button senderButton = sender as Button;

        string yearMessage = string.Empty;
        if (senderButton.CommandName == "ThisYearCommand")
        {
            yearMessage = "this year";
        }
        else if (senderButton.CommandName == "LastYearCommand")
        {
            yearMessage = "last year";
        }

        ResultLabel.Text += string.Format("Countries visited by {0} {1}: <br/>", NameTextBox.Text, yearMessage);

        foreach (ListItem item in CountryList.Items)
        {
            if (item.Selected)
            {
                ResultLabel.Text += "* " + item.Value + "<br/>";
            }
        }
        ResultLabel.Text += "<br/>";
    }

    protected override void OnPreRender(EventArgs e)
    {
        base.OnPreRender(e);

        NameTextBox.Text = String.Empty;
        CountryList.SelectedIndex = -1;
    }

    protected override void OnUnload(EventArgs e)
    {
        base.OnUnload(e);
         
    }
}
