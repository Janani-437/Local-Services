<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Smanageservices.aspx.cs" Inherits="WebApplication1.myservices" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .table {
            padding: 60px;
            border: 1px solid black;
            margin-top: 30px;
            margin-bottom: 50px;
            margin-right: 350px;
            margin-left: 350px;
            background-color: lightblue;
        }
        .a{
            padding: 10px;
            border: 1px solid black;
            margin-top: 2px;
            margin-bottom: 15px;
            margin-right: 30px;
            margin-left: 30px;
            background-color: green;
        }
        .auto-style1 {
            width: 457px;
        }
        <style type="text/css">
        .auto-style1 {
            width: 100%;
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
     <header>
            <div class="main">
            <div class="logo">
                <img src="flatworld-logo.png">
            </div>
            
            <div class="title">
                <h2>LOCAL BUSINESS</h2>
            </div>
        </div></header>
    <form id="form1" runat="server">
        <table class="auto-style1">
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
        </table>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Services:"></asp:Label>
            <asp:DropDownList ID="sname" runat="server">
                <asp:ListItem>Select Services</asp:ListItem>
                <asp:ListItem>Plumbing Services</asp:ListItem>
                <asp:ListItem>Electrical Services</asp:ListItem>
                <asp:ListItem>Mechanic</asp:ListItem>
                <asp:ListItem>DTH Services</asp:ListItem>
                <asp:ListItem>Wifi Services</asp:ListItem>
                <asp:ListItem>Computer Services</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Description:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD" />
        </div>
    </form>
    <footer>
  <p>Contact No:9845673872<br>
  <a href="localbusiness@gmail.com">localbusiness@example.com</a></p>
</footer>
</body>
</html>
