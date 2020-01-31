<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>register</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <style>
         .footer
        {
           

            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            height:70px;
            background:#ccc;
            
        }
    </style>

</head>
<body>
    <nav class="navbar navbar-dark bg-dark">
    <div class="container"> <a class="navbar-brand" href="#">
        <i class="fa fa-handshake-o" style="font-size:36px;color:white"></i>
        <b> LIFE INSURANCE</b>
      </a> </div>
  </nav>

<div class="py-5 text-center" >
    <div class="container">
      <div class="row">
        <div class="mx-auto col-lg-6 col-10">
          <h1>Register here...</h1>
          <form class="text-left" runat="server" id="form1">
            <div class="form-group">
                <asp:Label ID="uname" for="username" runat="server" Text="Your Name"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="RequiredFieldValidator" ForeColor="Red">user name required</asp:RequiredFieldValidator>
                <asp:TextBox ID="username" type="text" runat="server" class="form-control" placeholder="James Bond"></asp:TextBox>
                 

            </div>
            <div class="form-group">
                <asp:Label ID="phn" runat="server" for="phone" Text="Your Phone_no"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="phone" ErrorMessage="enter phone number" ForeColor="Red">enter phone number</asp:RequiredFieldValidator>
                <asp:TextBox type="text" class="form-control" ID="phone" runat="server" placeholder="0000000007"></asp:TextBox>
                 

            </div>
            <div class="form-group">
                <asp:Label ID="mail" for="email" runat="server" Text="Your email"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="enter email" ForeColor="Red">enter email</asp:RequiredFieldValidator>
                <asp:TextBox type="email" class="form-control" ID="email" placeholder="jamesbond007@gmail.com" runat="server"></asp:TextBox>
                 

            </div>
            <div class="form-row">
              <div class="form-group col-md-6">
                  <asp:Label for="password" ID="pwd" runat="server" Text="Password"></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="password" ErrorMessage="enter password" ForeColor="Red">enter password</asp:RequiredFieldValidator>
                  <asp:TextBox type="password" class="form-control" placeholder="••••" ID="password" runat="server"></asp:TextBox>
                   

              </div>
              <div class="form-group col-md-6">
                  <asp:Label ID="confirm" for="form20" runat="server" Text="Confirm Password"></asp:Label>
                  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirmpass" ErrorMessage="password doesn't match" ForeColor="Red">error in pwd</asp:CompareValidator>
                  <asp:TextBox type="password" class="form-control" placeholder="••••" ID="confirmpass" runat="server"></asp:TextBox>
                  

              </div>
            </div>
            <div class="form-group">
              <div class="form-check"> 
                  <asp:CheckBox ID="CheckBox1" value="on" type="checkbox" class="form-check-input" runat="server" />
                  
                  <asp:Label class="form-check-label"  for="form21" ID="Label1" runat="server" Text="Label">
                   I Agree with <a href="#">Term and Conditions</a> of the service </asp:Label>

              </div>
            </div>
              <asp:Button ID="signup" type="submit" class="btn btn-primary" runat="server" Text="Register" OnClick="signup_Click" />
              
          </form>
        </div>
      </div>
    </div>
  </div>
    <div class="py-3 bg-dark footer" style="">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <p class="mb-0 text-light">© 2020 life insurance corp. All rights reserved</p>
        </div>
      </div>
    </div>
  </div>












    
    
    












    
</body>
</html>
