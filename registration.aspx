<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="WebApplication1.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
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
        .auto-style2 {
            width: 640px;
        }
        .auto-style3 {
            width: 307px;
        }
        .auto-style4 {
            width: 307px;
            height: 39px;
        }
        .auto-style5 {
            width: 640px;
            height: 39px;
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
                <h3>USER REGISTRATION:</h3>
              <table class="auto-style1">
    
    <tr>
        <td class="auto-style3">
             Name
             :</td>    
        <td class="auto-style2">
            :<asp:TextBox ID="txtname" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorusername" 
            runat="server" ErrorMessage=" Name required" Text="*"
            ControlToValidate="txtname" ForeColor="Red">
            </asp:RequiredFieldValidator>
        </td>    
    </tr>
        <tr>
        <td class="auto-style3">
             Mobile
             :</td>    
        <td class="auto-style2">
            :<asp:TextBox ID="mobiletxt" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            runat="server" ErrorMessage=" mobile required" Text="*"
            ControlToValidate="mobiletxt" ForeColor="Red">
            </asp:RequiredFieldValidator>
        </td>    
    </tr>
    <tr>
        <td class="auto-style3">
            Email
            :</td>    
        <td class="auto-style2">
            :<asp:TextBox ID="txtEmail" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" 
            runat="server" ErrorMessage="Email required" Text="*"
            ControlToValidate="txtEmail" ForeColor="Red"
            Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" 
            runat="server" ErrorMessage="Invalid Email" ControlToValidate="txtEmail"
            ForeColor="Red" Display="Dynamic" Text="*"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
            </asp:RegularExpressionValidator>
        </td>    
    </tr>
    <tr>
        <td class="auto-style4">
             Address
             :</td>    
        <td class="auto-style5">
            :<asp:TextBox ID="addresstxt" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
            runat="server" ErrorMessage=" Address required" Text="*"
            ControlToValidate="addresstxt" ForeColor="Red">
            </asp:RequiredFieldValidator>
        </td>    
    </tr>
    <tr>
        <td class="auto-style3">
             Location
             :</td>    
        <td class="auto-style2">
            :<asp:TextBox ID="loctxt" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
            runat="server" ErrorMessage=" Location required" Text="*"
            ControlToValidate="loctxt" ForeColor="Red">
            </asp:RequiredFieldValidator>
        </td>    
    </tr>
    <tr>
        <td class="auto-style3">
             City
             :</td>    
        <td class="auto-style2">
            :<asp:TextBox ID="citytxt" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
            runat="server" ErrorMessage=" City required" Text="*"
            ControlToValidate="citytxt" ForeColor="Red">
            </asp:RequiredFieldValidator>
        </td>    
    </tr>
    <tr>
        <td class="auto-style3">
             ZipCode
             :</td>    
        <td class="auto-style2">
            :<asp:TextBox ID="ziptxt" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
            runat="server" ErrorMessage=" ZipCode required" Text="*"
            ControlToValidate="ziptxt" ForeColor="Red">
            </asp:RequiredFieldValidator>
        </td>    
    </tr>
    <tr>
        <td class="auto-style3">
             Role:</td>    
        <td class="auto-style2">
            <asp:DropDownList ID="roledropdown" runat="server">
                <asp:ListItem>Select Role</asp:ListItem>
                <asp:ListItem>Customer</asp:ListItem>
                <asp:ListItem>Service Provider</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="roledropdown" Display="Dynamic" ErrorMessage="Please select a role" ForeColor="Red" InitialValue="Select Role">*</asp:RequiredFieldValidator>
        </td>    
    </tr>
    <tr>
        <td class="auto-style3">
            Password:
        </td>    
        <td class="auto-style2">
            :<asp:TextBox ID="txtPassword" TextMode="Password" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" 
            runat="server" ErrorMessage="Password required" Text="*"
            ControlToValidate="txtPassword" ForeColor="Red">
            </asp:RequiredFieldValidator>
        </td>    
    </tr>
    <tr>
        <td class="auto-style3">
            Confirm Password
            :</td>    
        <td class="auto-style2">
            :<asp:TextBox ID="txtConfirmPassword" TextMode="Password" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" 
            runat="server" ErrorMessage="Confirm Password required" Text="*"
                ControlToValidate="txtConfirmPassword" ForeColor="Red" 
            Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidatorPassword" runat="server" 
            ErrorMessage="Password and Confirm Password must match"
            ControlToValidate="txtConfirmPassword" ForeColor="Red" 
            ControlToCompare="txtPassword" Display="Dynamic"
            Type="String" Operator="Equal" Text="*">
            </asp:CompareValidator>
        </td>    
    </tr>
    
    <tr>
        <td class="auto-style3">
                   
        </td>    
        <td class="auto-style2">
            
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" />
            
        </td>    
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red">
            </asp:Label>
        </td>    
    </tr>
    <tr>
        <td colspan="2">
            <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />
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
