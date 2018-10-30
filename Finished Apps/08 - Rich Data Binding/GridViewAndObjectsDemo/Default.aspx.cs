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
    private List<State> stateObjects;

    protected void Page_Load(object sender, EventArgs e)
    {
        // Initialize the collection of objects.
        if (!IsPostBack)
        {
            InitStateObjects();

            // Data-bind the ListBox control to the collection of objects.
            StatesListBox.DataSource = stateObjects;
            StatesListBox.DataTextField = "Name";
            StatesListBox.DataTextFormatString = "{0}, USA";
            StatesListBox.DataValueField = "Abbreviation";

            GridView1.DataSource = stateObjects;

            // Perform the data binding!
            DataBind();
        }
    }

    // Initialize the StateObjects collection (contains State objects).
    private void InitStateObjects()
    {
        stateObjects = new List<State>();

        stateObjects.Add(new State("Alabama", "AL", "Montgomery", new DateTime(1819, 12, 14)));
        stateObjects.Add(new State("Alaska", "AK", "Juneau", new DateTime(1959, 1, 3)));
        stateObjects.Add(new State("Arizona", "AZ", "Phoenix", new DateTime(1912, 2, 14)));
        stateObjects.Add(new State("Arkansas", "AR", "Little Rock", new DateTime(1836, 6, 15)));
        stateObjects.Add(new State("California", "CA", "Sacramento", new DateTime(1850, 9, 9)));
        stateObjects.Add(new State("Colorado", "CO", "Denver", new DateTime(1876, 8, 1)));
        stateObjects.Add(new State("Connecticut", "CT", "Hartford", new DateTime(1788, 1, 9)));
        stateObjects.Add(new State("Delaware", "DE", "Dover", new DateTime(1787, 12, 7)));
        stateObjects.Add(new State("Florida", "FL", "Tallahassee", new DateTime(1845, 3, 3)));
        stateObjects.Add(new State("Georgia", "GA", "Atlanta", new DateTime(1788, 1, 2)));
        stateObjects.Add(new State("Hawaii", "HI", "Honolulu", new DateTime(1959, 8, 21)));
        stateObjects.Add(new State("Idaho", "ID", "Boise", new DateTime(1890, 7, 3)));
        stateObjects.Add(new State("Illinois", "IL", "Springfield", new DateTime(1818, 12, 3)));
        stateObjects.Add(new State("Indiana", "IN", "Indianapolis", new DateTime(1816, 12, 11)));
        stateObjects.Add(new State("Iowa", "IA", "Des Moines", new DateTime(1846, 12, 28)));
        stateObjects.Add(new State("Kansas", "KS", "Topeka", new DateTime(1861, 1, 29)));
        stateObjects.Add(new State("Kentucky", "KY", "Frankfort", new DateTime(1792, 6, 1)));
        stateObjects.Add(new State("Louisiana", "LA", "Baton Rouge", new DateTime(1812, 4, 30)));
        stateObjects.Add(new State("Maine", "ME", "Augusta", new DateTime(1820, 3, 15)));
        stateObjects.Add(new State("Maryland", "MD", "Annapolis", new DateTime(1788, 4, 28)));
        stateObjects.Add(new State("Massachusetts", "MA", "Boston", new DateTime(1788, 2, 6)));
        stateObjects.Add(new State("Michigan", "MI", "Lansing", new DateTime(1837, 1, 26)));
        stateObjects.Add(new State("Minnesota", "MN", "St. Paul", new DateTime(1858, 5, 11)));
        stateObjects.Add(new State("Mississippi", "MS", "Jackson", new DateTime(1817, 12, 10)));
        stateObjects.Add(new State("Missouri", "MO", "Jefferson City", new DateTime(1821, 8, 10)));
        stateObjects.Add(new State("Montana", "MT", "Helena", new DateTime(1889, 11, 8)));
        stateObjects.Add(new State("Nebraska", "NE", "Lincoln", new DateTime(1867, 3, 1)));
        stateObjects.Add(new State("Nevada", "NV", "Carson City", new DateTime(1864, 10, 31)));
        stateObjects.Add(new State("New Hampshire", "NH", "Concord New", new DateTime(1788, 6, 21)));
        stateObjects.Add(new State("New Jersey", "NJ", "Trenton", new DateTime(1787, 12, 18)));
        stateObjects.Add(new State("New Mexico", "NM", "SantaFe", new DateTime(1912, 1, 6)));
        stateObjects.Add(new State("New York", "NY", "Albany", new DateTime(1788, 7, 26)));
        stateObjects.Add(new State("North Carolina", "NC", "Raleigh North", new DateTime(1789, 11, 21)));
        stateObjects.Add(new State("North Dakota", "ND", "Bismarck North", new DateTime(1889, 11, 2)));
        stateObjects.Add(new State("Ohio", "OH", "Columbus", new DateTime(1803, 3, 1)));
        stateObjects.Add(new State("Oklahoma", "OK", "Nashoma City", new DateTime(1907, 11, 16)));
        stateObjects.Add(new State("Oregon", "OR", "Salem", new DateTime(1859, 2, 14)));
        stateObjects.Add(new State("Pennsylvania", "PA", "Harrisburg", new DateTime(1787, 12, 12)));
        stateObjects.Add(new State("Rhode Island", "RI", "Providence", new DateTime(1790, 5, 29)));
        stateObjects.Add(new State("South Carolina", "SC", "Columbia", new DateTime(1788, 5, 23)));
        stateObjects.Add(new State("South Dakota", "SD", "Pierre", new DateTime(1889, 11, 2)));
        stateObjects.Add(new State("Tennessee", "TN", "Nashville", new DateTime(1796, 6, 1)));
        stateObjects.Add(new State("Texas", "TX", "Austin", new DateTime(1845, 12, 29)));
        stateObjects.Add(new State("Utah", "UT", "Salt Lake City", new DateTime(1896, 1, 4)));
        stateObjects.Add(new State("Vermont", "VT", "Montpelier", new DateTime(1791, 3, 4)));
        stateObjects.Add(new State("Virginia", "VA", "Richmond", new DateTime(1788, 6, 25)));
        stateObjects.Add(new State("Washington", "WA", "Olympia", new DateTime(1889, 11, 11)));
        stateObjects.Add(new State("West Virginia", "WV", "Charleston", new DateTime(1863, 6, 20)));
        stateObjects.Add(new State("Wisconsin", "WI", "Madison", new DateTime(1848, 5, 29)));
        stateObjects.Add(new State("Wyoming", "WY", "Cheyenne", new DateTime(1890, 7, 10)));
    }

}
