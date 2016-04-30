<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 144px;
        }
        .auto-style5 {
            width: 119px;
        }
        .auto-style6 {
            width: 155px;
        }
        .auto-style7 {
            width: 167px;
        }
        .auto-style9 {
            width: 173px;
        }
        .auto-style11 {
            width: 129px;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style13 {
            width: 233px;
        }
        .auto-style14 {
            width: 221px;
        }
    </style>    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">   
    <div class="auto-style1">    
        <h1>    
        <span class="auto-style1">Welcome To Gavin&#39;s Bakery</span></h1>
        <p class="auto-style12">    
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerID] = @CustomerID" InsertCommand="INSERT INTO [Customer] ([CustomerID], [FirstName], [LastName], [Street], [City], [State], [ZipCode], [TelephoneNumber], [Email], [UserId]) VALUES (@CustomerID, @FirstName, @LastName, @Street, @City, @State, @ZipCode, @TelephoneNumber, @Email, @UserId)" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [FirstName] = @FirstName, [LastName] = @LastName, [Street] = @Street, [City] = @City, [State] = @State, [ZipCode] = @ZipCode, [TelephoneNumber] = @TelephoneNumber, [Email] = @Email, [UserId] = @UserId WHERE [CustomerID] = @CustomerID">
                <DeleteParameters>
                    <asp:Parameter Name="CustomerID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:formParameter Name="CustomerID" Type="String" FormField="TextBox9" />
                    <asp:formParameter Name="FirstName" Type="String" FormField="TextBox1"/>
                    <asp:formParameter Name="LastName" Type="String" FormField="TextBox2"/>
                    <asp:formParameter Name="Street" Type="String" FormField="TextBox3"/>
                    <asp:formParameter Name="City" Type="String" FormField="TextBox4"/>
                    <asp:formParameter Name="State" Type="String" FormField="TextBox5"/>
                    <asp:formParameter Name="ZipCode" Type="String" FormField="TextBox6"/>
                    <asp:formParameter Name="TelephoneNumber" Type="String" FormField="TextBox7"/>
                    <asp:formParameter Name="Email" Type="String" FormField="TextBox8"/>
                    <asp:formParameter Name="UserId" Type="String" FormField="TextBox10"/>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Street" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="ZipCode" Type="String" />
                    <asp:Parameter Name="TelephoneNumber" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="UserId" Type="String" />
                    <asp:Parameter Name="CustomerID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <div class="auto-style12">
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="258px" OnFinishButtonClick="Wizard1_FinishButtonClick" Width="666px">
            <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
            <SideBarButtonStyle ForeColor="White" />
            <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
            <WizardSteps>
                <asp:WizardStep runat="server" title="Name">
                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style4">First Name:</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Last Name:</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Address">
                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style5">Street:</td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Width="264px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">City:</td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" Width="265px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">State:</td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" Width="265px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Zip Code:</td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server" Width="267px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Contact Info">
                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style6">Email:</td>
                            <td>
                                <asp:TextBox ID="TextBox7" runat="server" Width="281px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">Phone Number:</td>
                            <td>
                                <asp:TextBox ID="TextBox8" runat="server" Width="282px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Identification">
                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style7">CustomerId:</td>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">UserId:</td>
                            <td>
                                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="What Would You like to order today?">
                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style9">Sweet Potato Pies</td>
                            <td>
                                <img alt="" class="img1" src="../App_themes/Bakery/Images/sweet-potato-pie.jpg" height="75" width="150" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">Muffins </td>
                            <td>
                                <img alt="" class="ErrorMessage" src="../App_themes/Bakery/Images/Muffin_NIH.jpg" height="75" style="height: 75px" width="150" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">Cup Cakes</td>
                            <td>
                                <img alt="" class="img3" src="../App_themes/Bakery/Images/Strawberry-Red-Velvet-Cupcakes1.jpg" height="75" width="150" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                    <asp:ListItem>Sweet Potato Pies</asp:ListItem>
                                    <asp:ListItem>Muffins</asp:ListItem>
                                    <asp:ListItem>Cup Cakes</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td class="auto-style10">
                                <table class="auto-style3">
                                    <tr>
                                        <td class="auto-style11">Selection</td>
                                        <td>Price</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style11">Sweet Potato Pie</td>
                                        <td>$1.20</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style11">Muffin</td>
                                        <td>$2.99</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style11">Cup Cakes</td>
                                        <td>$1.99</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Select Quantity">
                    <h3>Quantity</h3>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>36</asp:ListItem>
                        <asp:ListItem>48</asp:ListItem>
                    </asp:DropDownList>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Select Delivery Date">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="283px">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
        </div>
        <div class="auto-style1">
            <table class="auto-style3">
                <tr>
                    <td colspan="3">
                        <h3>
                            <asp:Label ID="Label10" runat="server"></asp:Label>
                        </h3>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <h4>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </h4>
                    </td>
                    <td class="auto-style14">
                        <h4>
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                        </h4>
                    </td>
                    <td>
                        <h4>
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                        </h4>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <h4>
                            <asp:Label ID="Label4" runat="server"></asp:Label>
                        </h4>
                    </td>
                    <td class="auto-style14">
                        <h4>
                            <asp:Label ID="Label5" runat="server"></asp:Label>
                        </h4>
                    </td>
                    <td>
                        <h4>
                            <asp:Label ID="Label6" runat="server"></asp:Label>
                        </h4>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <h4>
                            <asp:Label ID="Label7" runat="server"></asp:Label>
                        </h4>
                    </td>
                    <td class="auto-style14">
                        <h4>
                            <asp:Label ID="Label8" runat="server"></asp:Label>
                        </h4>
                    </td>
                    <td>
                        <h4>
                            <asp:Label ID="Label9" runat="server"></asp:Label>
                        </h4>
                    </td>
                </tr>
            </table>
        <br />    
        </div>
    </div>  
</asp:Content>

