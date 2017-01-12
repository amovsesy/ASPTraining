using System;

public class State
{
    private string name;
    private string abbreviation;
    private string capital;
    private DateTime joinedUnion;

    public string Name
    {
        get { return name; }
    }

    public string Abbreviation
    {
        get { return abbreviation; }
    }

    public string Captital
    {
        get { return capital; }
    }

    public DateTime JoinedUnion
    {
        get { return joinedUnion; }
    }

    public State(string n, string abb, string cap, DateTime joined)
    {
        name = n;
        abbreviation = abb;
        capital = cap;
        joinedUnion = joined;
    }
}
