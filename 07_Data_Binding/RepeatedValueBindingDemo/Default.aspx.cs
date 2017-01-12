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
    protected void Page_Load(object sender, EventArgs e)
    {

    }


/*
    // Initialize the StateNames collection (contains Strings, i.e. scalars).
    private void InitStateNames()
    {
        stateNames = new List<String>();

        stateNames.Add("Alabama [AL]");
        stateNames.Add("Alaska [AK]");
        stateNames.Add("Arizona [AZ]");
        stateNames.Add("Arkansas [AR]");
        stateNames.Add("California [CA]");
        stateNames.Add("Colorado [CO]");
        stateNames.Add("Connecticut [CT]");
        stateNames.Add("Delaware [DE]");
        stateNames.Add("Florida [FL]");
        stateNames.Add("Georgia [GA]");
        stateNames.Add("Hawaii [HI]");
        stateNames.Add("Idaho [ID]");
        stateNames.Add("Illinois [IL]");
        stateNames.Add("Indiana [IN]");
        stateNames.Add("Iowa [IA]");
        stateNames.Add("Kansas [KS]");
        stateNames.Add("Kentucky [KY]");
        stateNames.Add("Louisiana [LA]");
        stateNames.Add("Maine [ME]");
        stateNames.Add("Maryland [MD]");
        stateNames.Add("Massachusetts [MA]");
        stateNames.Add("Michigan [MI]");
        stateNames.Add("Minnesota [MN]");
        stateNames.Add("Mississippi [MS]");
        stateNames.Add("Missouri [MO]");
        stateNames.Add("Montana [MT]");
        stateNames.Add("Nebraska [NE]");
        stateNames.Add("Nevada [NV]");
        stateNames.Add("New Hampshire [NH]");
        stateNames.Add("New Jersey [NJ]");
        stateNames.Add("New Mexico [NM]");
        stateNames.Add("New York [NY]");
        stateNames.Add("North Carolina [NC]");
        stateNames.Add("North Dakota [ND]");
        stateNames.Add("Ohio [OH]");
        stateNames.Add("Oklahoma [OK]");
        stateNames.Add("Oregon [OR]");
        stateNames.Add("Pennsylvania [PA]");
        stateNames.Add("Rhode Island [RI]");
        stateNames.Add("South Carolina [SC]");
        stateNames.Add("South Dakota [SD]");
        stateNames.Add("Tennessee [TN]");
        stateNames.Add("Texas [TX]");
        stateNames.Add("Utah [UT]");
        stateNames.Add("Vermont [VT]");
        stateNames.Add("Virginia [VA]");
        stateNames.Add("Washington [WA]");
        stateNames.Add("West Virginia [WV]");
        stateNames.Add("Wisconsin [WI]");
        stateNames.Add("Wyoming [WY]");
    }
*/

/*
    // Initialize the StateObjects collection (contains State objects).
    private void InitStateObjects()
    {
        stateObjects = new List<State>();

        stateObjects.Add( new State("Alabama", "AL") );
        stateObjects.Add( new State("Alaska", "AK") );
        stateObjects.Add( new State("Arizona", "AZ") );
        stateObjects.Add( new State("Arkansas", "AR") );
        stateObjects.Add( new State("California", "CA") );
        stateObjects.Add( new State("Colorado", "CO") );
        stateObjects.Add( new State("Connecticut", "CT") );
        stateObjects.Add( new State("Delaware", "DE") );
        stateObjects.Add( new State("Florida", "FL") );
        stateObjects.Add( new State("Georgia", "GA") );
        stateObjects.Add( new State("Hawaii", "HI") );
        stateObjects.Add( new State("Idaho", "ID") );
        stateObjects.Add( new State("Illinois", "IL") );
        stateObjects.Add( new State("Indiana", "IN") );
        stateObjects.Add( new State("Iowa", "IA") );
        stateObjects.Add( new State("Kansas", "KS") );
        stateObjects.Add( new State("Kentucky", "KY") );
        stateObjects.Add( new State("Louisiana", "LA") );
        stateObjects.Add( new State("Maine", "ME") );
        stateObjects.Add( new State("Maryland", "MD") );
        stateObjects.Add( new State("Massachusetts", "MA") );
        stateObjects.Add( new State("Michigan", "MI") );
        stateObjects.Add( new State("Minnesota", "MN") );
        stateObjects.Add( new State("Mississippi", "MS") );
        stateObjects.Add( new State("Missouri", "MO") );
        stateObjects.Add( new State("Montana", "MT") );
        stateObjects.Add( new State("Nebraska", "NE") );
        stateObjects.Add( new State("Nevada", "NV") );
        stateObjects.Add( new State("New Hampshire", "NH") );
        stateObjects.Add( new State("New Jersey", "NJ") );
        stateObjects.Add( new State("New Mexico", "NM") );
        stateObjects.Add( new State("New York", "NY") );
        stateObjects.Add( new State("North Carolina", "NC") );
        stateObjects.Add( new State("North Dakota", "ND") );
        stateObjects.Add( new State("Ohio", "OH") );
        stateObjects.Add( new State("Oklahoma", "OK") );
        stateObjects.Add( new State("Oregon", "OR") );
        stateObjects.Add( new State("Pennsylvania", "PA") );
        stateObjects.Add( new State("Rhode Island", "RI") );
        stateObjects.Add( new State("South Carolina", "SC") );
        stateObjects.Add( new State("South Dakota", "SD") );
        stateObjects.Add( new State("Tennessee", "TN") );
        stateObjects.Add( new State("Texas", "TX") );
        stateObjects.Add( new State("Utah", "UT") );
        stateObjects.Add( new State("Vermont", "VT") );
        stateObjects.Add( new State("Virginia", "VA") );
        stateObjects.Add( new State("Washington", "WA") );
        stateObjects.Add( new State("West Virginia", "WV") );
        stateObjects.Add( new State("Wisconsin", "WI") );
        stateObjects.Add( new State("Wyoming", "WY") );
    }
*/

    // Handle the SelectedIndexChanged event on the StatesListBox.
    protected void StatesListBox_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListItem item = StatesListBox.SelectedItem;
        if (item != null)
        {
            ResultLabel.Text = string.Format("Value={0}<br/>Text={1}", item.Value, item.Text);
        }
    }
}
