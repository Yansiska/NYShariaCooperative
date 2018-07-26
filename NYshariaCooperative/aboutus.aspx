﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="NYshariaCooperative.aboutus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en">
<head>
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width">
 <meta http-equiv="content-type" content="text/html; charset=UTF-8">
 <!-- For Google -->
 <link rel="author" href="https://plus.google.com/+Scoopthemes">
 <link rel="publisher" href="https://plus.google.com/+Scoopthemes">
 <!-- Canonical -->
 <link rel="canonical" href="">
 <title>NY Sharia Cooperative</title>
 <!-- Bootstrap CSS -->
 <link rel="stylesheet"
href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
 <!-- font Awesome CSS -->
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/fontawesome/4.2.0/css/font-awesome.min.css">
 <!-- Main Styles CSS -->
 <link href="assets/css/main.css" rel="stylesheet">
 <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
 <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
 <!--[if lt IE 9]>
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
 <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
 <![endif]-->
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #8af3ac;
}

li {
    float: right;
}

li a {
    display: block;
    color: #2a8fbd;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #8af3ac;
}

.active {
    background-color: #29773f;
}
    .auto-style1 {
        height: 74px;
    }
    .auto-style3 {
        width: 1355px;
        height: 1032px;
    }
    </style>
</head>
<body>
    <form id="form1" method="post" runat="server">
<ul class="auto-style1">
  <li><a href="LoginAdmin.aspx" style="font-family: ABeeZee"><strong>Admin</strong></a></li>
  <li><a href="Login.aspx" style="font-family: ABeeZee"><strong>Member</strong></a></li>
  <li><a href="Simulasi.aspx" style="font-family: ABeeZee"><strong>Simulasi</strong></a></li>
  <li><a href="DaftarMember.aspx" style="font-family: ABeeZee"><strong>Daftar Member</strong></a></li>
  <li style="font-family: ABeeZee"><a class="active"  href="aboutus.aspx"><strong>About Us</strong></a><strong></li> 
  <li><a href="Home.aspx" style="font-family: ABeeZee"><strong>Home</strong></a></li>
  <img src ="obj/logo_cooperative.png" style="margin: 10px 10px 5px 20px; width: 54px; height: 52px;"/> <strong>NY Koperasi Syariah
</strong>
</ul>

        <asp:Panel ID="Panel1" runat="server" BackColor="#ffffff" BorderColor="#2A8FBD" style="padding: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px;" CssClass="auto-style2" Height="536px">
        <img src ="obj/tentangkami.png" style="padding: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px;" class="auto-style3"/></asp:Panel>
    </form>

</body>
</html>
