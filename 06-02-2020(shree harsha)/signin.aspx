<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign in</title>
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


    <div class="py-5" >
    <div class="container">
      <div class="row">
        <div class="col-lg-6 order-2 order-lg-1 p-0"> <img class="img-fluid d-block" src="signin.jpg" height="600px"> </div>
        <div class="mx-auto col-md-6 col-10 bg-white p-5">
          <h1 class="mb-4">Log in...</h1>
          <form id="form1" runat="server">
            <div class="form-group">
                <asp:TextBox type="text" placeholder="Enter username" class="form-control" ID="username" runat="server"></asp:TextBox>
                

            </div>
            <div class="form-group mb-3"> 
                <asp:TextBox type="password" placeholder="Password" class="form-control" ID="password" runat="server" TextMode="Password"></asp:TextBox>
                
                 <small class="form-text text-muted text-right">
                <a href="register.aspx"> If you are new user click here to <b style="color:blue;font-size:medium">REGISTER</b></a>
              </small> </div>
              
              <asp:Button ID="Button1" type="submit" class="btn btn-primary" runat="server" Text="Submit" OnClick="Button1_Click" />
               <asp:Label ID="lblmsg" runat="server" ></asp:Label>
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
