﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateMember.aspx.cs" Inherits="NYshariaCooperative.HomeMember" %>

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
    </style>
</head>
<body>
    <form id="form1" method="post" runat="server">
<ul class="auto-style1">&nbsp;<li><a href="LoginAdmin.aspx" style="font-family: ABeeZee"><strong>Keluar</strong></a></li>
  <li><a href="Pinjam.aspx" style="font-family: ABeeZee"><strong>Ajukan Pinjamam</strong></a></li>
  <li><a class="active" href="Anggota.aspx" style="font-family: ABeeZee"><strong>Profil Member</strong></a></li>
  <img src ="obj/logo_cooperative.png" style="margin: 10px 10px 5px 20px; width: 54px; height: 52px;"/> <strong>NY Koperasi Syariah
</strong>
</ul>
        <asp:Panel ID="Panel1" runat="server" BackColor="#8AF3AC" BorderColor="#2A8FBD" BorderStyle="Dotted" Height="806px" BackImageUrl="~/obj/registerbener.png">
            <div class="form-group">
                    <label for="Member ID">Member ID:</label>
                    <asp:TextBox ID="member" CssClass="form-control" runat="server" style="margin-left: 24px" Width="500px"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="Member_Name">Member_Name:</label>
                    <asp:TextBox ID="memberName" CssClass="form-control" runat="server" style="margin-left: 24px" Width="500px"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="Address">Address:</label>
                    <asp:TextBox ID="Address" CssClass="form-control" runat="server" style="margin-left: 24px" Width="500px" required></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="Date_Of_Birth">Date_Of_Birth:</label>
                    <asp:TextBox ID="Dateof" CssClass="form-control" runat="server" style="margin-left: 24px" Width="500px" TextMode="Date" required></asp:TextBox>
                </div>
            <div class="form-group">
                    <label for="Gender">Gender:</label>
                    <asp:DropDownList ID="Gender" CssClass="form-control" runat="server" style="margin-left: 24px" Width="500px" Font-Bold="True" Font-Italic="True">
                        <asp:ListItem>Laki-Laki</asp:ListItem>
                        <asp:ListItem>Perempuan</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="Work">Work:</label>
                    <asp:TextBox ID="Work" CssClass="form-control" runat="server" style="margin-left: 24px" Width="500px" required></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="Monthly_Income">Monthly_Income:</label>
                    <asp:TextBox ID="gaji" CssClass="form-control" runat="server" style="margin-left: 24px" Width="500px" TextMode="Number" required></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="Email">Email:</label>
                    <asp:TextBox ID="Email" CssClass="form-control" runat="server" style="margin-left: 24px" Width="500px" Type="Email" required></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="No_HP">No_HP:</label>
                    <asp:TextBox ID="Nohp" CssClass="form-control" runat="server" style="margin-left: 24px" Width="500px" TextMode="Number" required></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="pass">Password:</label>
                    <asp:TextBox ID="pass" CssClass="form-control" runat="server" style="margin-left: 24px" Width="500px" TextMode="Password" required></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="btn_save" CssClass="btn btn-md btn-primary" runat="server" Text="Perbarui Profil" OnClick="update" BackColor="#29773F" Width="178px"  />
                </div></asp:Panel>
    </form>

</body>
</html>