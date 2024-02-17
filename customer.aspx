<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer.aspx.cs" Inherits="WebApplication1.customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 298px;
        }
            *
{
    margin:0;
    padding:0;
    font-family:'Century Gothic';
    
}

ul
{
    float:right;
    list-style-type:none;
    margin-top:25px;
}
ul li{
    display:inline-block;
}
ul li a{
	text-decoration:none;
	text-decoration-color:#fff;
	padding:5px 20px;
	border:1px solid #000000;
}
ul li a:hover{
	background-color:#1abc9c;

}
.logo img{
    float:left;
    width:170px;
    height:auto;
}
.title {
    margin-top: 6px;
    position: center;
    text-align:left;
    font-size:x-large;
}
footer {
  text-align: center;
  padding: 3px;
  background-color: DarkSalmon;
  color: white;
}
.bg{
    background-color:moccasin;
}
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="main">
            <div class="logo">
                <img src="flatworld-logo.png">
            </div>
            <ul>
                <li> <a href="#">Profile</a></li>
                <li> <a href="myservices.aspx">My Services</a></li>
                <li> <a href="Login.aspx">Logout</a></li>
            </ul>
            <div class="title">
                <h2>LOCAL BUSINESS</h2>
            </div>
        </div>
        <header>

        </header>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Services:"></asp:Label>
                    <asp:DropDownList ID="servicedropdown" runat="server">
                        <asp:ListItem>Select Services</asp:ListItem>
                        <asp:ListItem>Plumbing Service</asp:ListItem>
                        <asp:ListItem>Electrician Service</asp:ListItem>
                        <asp:ListItem>Mechanic</asp:ListItem>
                        <asp:ListItem>DTH Service</asp:ListItem>
                        <asp:ListItem>Wifi Service</asp:ListItem>
                        <asp:ListItem>Computer Service</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Search" Width="81px" />
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Search By:"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Width="108px"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Search By Name</asp:ListItem>
                        <asp:ListItem>Search By City</asp:ListItem>
                    </asp:DropDownList>
&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Search" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="701px" >
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Service Id">
                                <asp:ItemTemplate>
                                    <asp:Label ID="serviceidlbl" runat="server" Text='<%#Bind("serviceid")%>'> %>'</asp:Label>
                                </asp:ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Service Name">
                                <asp:ItemTemplate>
                                    <asp:Label ID="servicenamelbl" runat="server" Text='<%#Bind("servicename")%>'> %>'</asp:Label>
                                </asp:ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Description">
                                <asp:ItemTemplate>
                                    <asp:Label ID="desclbl" runat="server" Text='<%#Bind("description")%>'> %>'</asp:Label>
                                </asp:ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Service Provider Id">
                                <asp:ItemTemplate>
                                    <asp:Label ID="servicepidlbl" runat="server" Text='<%#Bind("userid")%>'> %>'</asp:Label>
                                </asp:ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Service Provider Name">
                                <asp:ItemTemplate>
                                    <asp:Label ID="servicepnamelbl" runat="server" Text='<%#Bind("name")%>'> %>'</asp:Label>
                                </asp:ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Mobile">
                                <asp:ItemTemplate>
                                    <asp:Label ID="mobilelbl" runat="server" Text='<%#Bind("mobile")%>'> %>'</asp:Label>
                                </asp:ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email">
                                <asp:ItemTemplate>
                                    <asp:Label ID="emaildlbl" runat="server" Text='<%#Bind("email")%>'> %>'</asp:Label>
                                </asp:ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Location">
                                <asp:ItemTemplate>
                                    <asp:Label ID="loclbl" runat="server" Text='<%#Bind("location")%>'> %>'</asp:Label>
                                </asp:ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="City">
                                <asp:ItemTemplate>
                                    <asp:Label ID="citylbl" runat="server" Text='<%#Bind("city")%>'> %>'</asp:Label>
                                </asp:ItemTemplate>
                            </asp:TemplateField>
                            
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="View" />
&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Book" OnClick="Button2_Click1"  />

                    <asp:Literal ID="Litmsg" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Add Comments:&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Date:"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" type="date"></asp:TextBox>
                &nbsp;&nbsp; Time:<asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>Select Time</asp:ListItem>
                        <asp:ListItem>10.00-11.00</asp:ListItem>
                        <asp:ListItem>11.00-12.00</asp:ListItem>
                        <asp:ListItem>12.00-1.00</asp:ListItem>
                        <asp:ListItem>2.00-3.00</asp:ListItem>
                        <asp:ListItem>3.00-4.00</asp:ListItem>
                        <asp:ListItem>4.00-5.00</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
        </div>
        </div>
    </form>
    <footer>
  <p>Contact No:9845673872<br>
  <a href="localbusiness@gmail.com">localbusiness@example.com</a></p>
</footer>
</body>
</html>
