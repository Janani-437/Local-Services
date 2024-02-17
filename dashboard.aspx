<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="WebApplication1.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
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
div.a {
    margin-top: 20px;
    font-size: 15px;
    font-family: 'Times New Roman';
    width: 1100px;
    border: 1px solid #000000;
    letter-spacing: 1.5px;
    line-height:normal;
}
footer {
  text-align: center;
  padding: 3px;
  background-color: DarkSalmon;
  color: white;
}
* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 33.33%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}
.bg{
    
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        
             <div class="bg">
        <div class="main">
            <div class="logo">
                <img src="flatworld-logo.png"/>
            </div>
            <ul>
                <li> <a href="Login.aspx">Customers</a></li>
                <li> <a href="Login.aspx">Service Provider</a></li>
            </ul>
            <div class="title">
                <h2>LOCAL BUSINESS</h2>
            </div>
        </div>
        <div class="a">
            Local Business is online home Services Platform.The platform helps customers book reliable services like plumbing,DTH Services,Wi-Fi Services etcdelivered by trained professionals conveniently at home.Local Business provides a platform that allows skilled and experienced professionals to connect with users looking for specific services. Once on the platform, our match-making algorithm identifies professionals who are closest to the users&#39; requirements and available at the requested time and date.Urban Company provides a platform that allows skilled and experienced professionals to connect with users looking for specific services. All the professionals, though experienced and skilled, undergo intensive training modules before being allowed to list their services on the platform.
        </div>
    
    <div class="row">
  <div class="column">
    <img src="electrician.jpg" alt="electrician" style="width:80%" height="180">
  </div>
  <div class="column">
    <img src="plumber.jpg" alt="plumber" style="width:80%" height="180">
  </div>
  <div class="column">
    <img src="mechanic.jpg" alt="mechanic" style="width:80%" height="180">
  </div>
      <div class="column">
    <img src="dth.jpg" alt="dth" style="width:80%" height="180">
  </div>
       <div class="column">
    <img src="wifi.jpg" alt="WIFI" style="width:80%" height="180">
  </div>
  <div class="column">
    <img src="computer.jpg" alt="computer" style="width:80%" height="180">
  </div>     
</div>
    </div>
    <footer>
  <p>Contact No:9845673872<br>
  <a href="localbusiness@gmail.com">localbusiness@example.com</a></p>
</footer>
        
    </form>
</body>
</html>
