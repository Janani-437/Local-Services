<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AServiceProvider.aspx.cs" Inherits="WebApplication1.AServiceProvider" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }.a{
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
        </div>
    </form>
     <footer>
  <p>Contact No:9845673872<br>
  <a href="localbusiness@gmail.com">localbusiness@example.com</a></p>
</footer>
</body>
</html>
