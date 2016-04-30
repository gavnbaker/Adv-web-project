using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        /*Label3.Text = DropDownList1.SelectedValue;
        foreach (ListItem item in CheckBoxList1.Items)
        {
            if (item.Selected == true)
            {
                Label4.Text += "You selected " + item.Value + "<br />";
            }
        }

        Label5.Text = RadioButtonList1.SelectedValue;
        Label2.Text = Calendar1.SelectedDate.ToString();

        // Need to add the values the user entered into our database
       /* SqlConnection conn;
        string connectionString = "Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\\project_database.mdf;Integrated";
        conn = new SqlConnection(connectionString);

        try
        {
            conn.Open();
            Label6.Text = "Connection to database open!<br/>";
            
            conn.Close();
        }
        catch (Exception ex)
        {
            Label6.Text = "Connection to database failed!<br/>";
        }
        */
        

    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }

    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {       

        string insert = "INSERT INTO [Customer] ([CustomerID], [FirstName], [LastName], [Street], [City], [State], [TelephoneNumber], [Email])";
        string fName = TextBox1.Text.ToString();
        string lName = TextBox2.Text.ToString();
        string street = TextBox3.Text.ToString();
        string city = TextBox4.Text.ToString();
        string state = TextBox5.Text.ToString();
        string zip = TextBox6.Text.ToString();
        string email = TextBox7.Text.ToString();
        string phone = TextBox8.Text.ToString();
        //string values = "VALUES (" + cusId + "," + fName + "," + lName + "," + street + "," + city + "," + state + "," + zip + "," + email + "," + phone + ")";
        //insert += values;


        //string Colle = SqlDataSource1.InsertParameters.ToString();
        //SqlDataSource1.Insert();

        Label1.Text = "Name:" + TextBox1.Text + " " + TextBox2.Text;
        Label2.Text = "Email:" + TextBox7.Text;
        Label3.Text = "Telephone:" + TextBox8.Text;

        Double sPie = 1.20;
        Double muffin = 2.99;
        Double cCake = 1.99;
        
        string _radio =  RadioButtonList1.SelectedValue.ToString();
        Label4.Text = "Ordered:" + _radio;
        Double amount = Double.Parse(DropDownList1.SelectedValue.ToString());

        if (_radio.ToLower() == "sweet potato pies")
        {
            amount *= sPie;
        }
        else if (_radio.ToLower() == "muffins")
        {
            amount *= muffin;
        }
        else if (_radio.ToLower() == "cup cakes")
        {
            amount *= cCake;
        }

        Label5.Text = "Selected Quantity:" + DropDownList1.SelectedValue.ToString();
        Label6.Text = "Price:$" + amount.ToString();
        Label7.Text = "Selected Delivery Date: ";
        Label8.Text = Calendar1.SelectedDate.ToString();
        Label9.Text = "Thank You for Shopping at Gavin's Bakery, Please Come Again!";
        Label10.Text = "Receipt".ToUpper();        
    }
    
}