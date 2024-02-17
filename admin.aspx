<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication1.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
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
        .auto-style3 {
            width: 208px;
            height: 66px;
        }
        </style>
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <div class="logo">
                <img src="flatworld-logo.png">
            </div>
            <ul>
                <li> <a href="AServiceProvider.aspx">Service Provider</a></li>
                <li> <a href="AServices.aspx">Services</a></li>
                </ul>
            <div class="title">
                <h2>LOCAL BUSINESS</h2>
            </div>
        </div>
                
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Services:<asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Select a Service</asp:ListItem>
                    <asp:ListItem>Plumbing Service</asp:ListItem>
                    <asp:ListItem>Electrician Service</asp:ListItem>
                    <asp:ListItem>DTH Service</asp:ListItem>
                    <asp:ListItem>Wifi Service</asp:ListItem>
                    <asp:ListItem>Computer Service</asp:ListItem>
                    <asp:ListItem>Mechanic</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Description:"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="ADD" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
    <footer>
  <p>Contact No:9845673872<br>
  <a href="localbusiness@gmail.com">localbusiness@example.com</a></p>
</footer>
</body>
</html>
