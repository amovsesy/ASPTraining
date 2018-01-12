using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using System.Collections.Generic;

public partial class _Default : System.Web.UI.Page 
{
    private Dictionary<string, ListItem[]> regionCountryData;

    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);

        regionCountryData = new Dictionary<string, ListItem[]>();

        regionCountryData["Americas"] = new ListItem[] { 
            new ListItem("USA"), 
            new ListItem("Canada"), 
            new ListItem("Brazil") 
        };

        regionCountryData["EMEA"] = new ListItem[] { 
            new ListItem("Switzerland"), 
            new ListItem("Dubai"), 
            new ListItem("Nigeria") 
        };
        
        regionCountryData["Asia Pacific"] = new ListItem[] { 
            new ListItem("India"), 
            new ListItem("Japan"), 
            new ListItem("Australia") 
        };
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            RegionList.Items.Add("---Please select---");
            foreach (string region in regionCountryData.Keys)
            {
                RegionList.Items.Add(region);
            }

            CountryList.Items.Add("---Please select---");
        }
    }

    protected void NameTextBox_TextChanged(object sender, EventArgs e)
    {
        BusinessCardNameLabel.Text = NameTextBox.Text;
    }

    protected void TelNumTextBox_TextChanged(object sender, EventArgs e)
    {
        BusinessCardTelNumLabel.Text = TelNumTextBox.Text;
    }
    protected void RegionList_SelectedIndexChanged(object sender, EventArgs e)
    {
        string region = RegionList.SelectedValue;
        BusinessCardLocationLabel.Text = region;

        CountryList.Items.Clear();
        CountryList.Items.Add("---Please Select---");
        CountryList.Items.AddRange(regionCountryData[region]);
    }
}
