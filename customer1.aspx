<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer1.aspx.cs" Inherits="WebApplication1.customer1" %>

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
                    <asp:Button ID="Button3" runat="server"  Text="Search" Width="81px" />
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
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand">
                        
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" CausesValidation="false" CommandName="SendMail"
                                            Text="Book" CommandArgument='<%# Eval("Provider ID") %>'/>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="View" />
&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Book" OnClick="Button2_Click"   />

                    <asp:Literal ID="Litmsg" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Add Comments:&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                &nbsp;&nbsp;
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
</body>
</html>
