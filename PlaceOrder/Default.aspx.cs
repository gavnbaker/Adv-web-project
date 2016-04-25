using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label3.Text = DropDownList1.SelectedValue;
        foreach (ListItem item in CheckBoxList1.Items)
        {
            if (item.Selected == true)
            {
                Label4.Text += "You selected " + item.Value + "<br />";
            }
        }

        Label5.Text = RadioButtonList1.SelectedValue;
        Label2.Text = Calendar1.SelectedDate.ToString();
    }
}