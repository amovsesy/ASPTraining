using System;

public class State
{
    private string name;
    private string abbreviation;

    public string Name
    {
        get { return name; }
    }

    public string Abbreviation
    {
        get { return abbreviation; }
    }

    public State(string n, string abb)
	{
        name = n;
        abbreviation = abb;
    }
}
