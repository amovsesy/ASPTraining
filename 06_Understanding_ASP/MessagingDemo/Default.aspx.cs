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

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        // Create an XmlWriter object, to write XML to a StringWriter.
        XmlWriterSettings settings = new XmlWriterSettings();
        settings.Indent = true;
        StringWriter sw = new StringWriter();
        XmlWriter w = XmlWriter.Create(sw, settings);

        // Write the following XML data to the string:
        //    <FaultReport UserName="..." UserEmail="...">
        //        fault description text
        //    </FaultReport>
        w.WriteStartDocument();
        w.WriteStartElement("FaultReport");
        w.WriteAttributeString("UserName", UserNameTextBox.Text);
        w.WriteAttributeString("UserEmail", EmailTextBox.Text);
        w.WriteString(FaultTextBox.Text);
        w.WriteEndElement();
        w.WriteEndDocument();
        w.Close();

        // Create a Message object containing the XML data, and send it to the message queue.
        string timestamp = DateTime.Now.ToString();
        Message msg = new Message(sw.ToString(), new ActiveXMessageFormatter());
        MessageQueue queue = new MessageQueue(@".\Private$\FaultReportQueue");
        queue.Send(msg, "Fault[" + timestamp + "]");

        ConfirmationLabel.Text = String.Format("Thank you {0}, your fault has been logged at {1}.", 
                                                UserNameTextBox.Text, 
                                                timestamp);
    }
}
