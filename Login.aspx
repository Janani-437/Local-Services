<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 337px;
        }
        .table {
            padding: 30px;
            border: 1px solid black;
            margin-top: 30px;
            margin-bottom: 50px;
            margin-right: 300px;
            margin-left: 300px;
            background-color: lightblue;
        }
        .auto-style3 {
            width: 902px;
        }
        .auto-style4 {
            height: 18px;
        }
        .auto-style5 {
            width: 337px;
            height: 66px;
        }
        .auto-style6 {
            width: 902px;
            height: 66px;
        }
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
        <div>
            <div class="table">
                <h3>LOGIN:</h3>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Email:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="emailtxt" runat="server"></asp:TextBox >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="emailtxt" Display="Dynamic" ErrorMessage="Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Password:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="passtxt" runat="server"></asp:TextBox >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passtxt" Display="Dynamic" ErrorMessage="Enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
               
               
                <tr>
                    <td class="auto-style2">
                        <asp:CheckBox ID="chkBoxRememberMe" runat="server" Text="Remember Me" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                    </td>
                </tr>
               
                <tr>
                    <td colspan="2" class="auto-style4">
                        <asp:Label ID="lblMessage" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
                        <a href="register.aspx">Register</a>
                    </td>
                </tr>
            </table>
            </div>
        </div>
    </form>
    <footer>
  <p>Contact No:9845673872<br>
  <a href="localbusiness@gmail.com">localbusiness@example.com</a></p>
</footer>
</body>
</html>
