<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <div class="container">
            <i class="fa fa-handshake-o" style="font-size:36px;color:white"></i><a class="navbar-brand" href="#">
                &nbsp;<b>LIFE INSURANCE</b>
            </a> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar10">
                <span class="navbar-toggler-icon"></span>
            </button>
            
        </div>
        

    </nav>

    <nav class="navbar fixed-top navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Life Insurance</a>

</nav>
    <form id="form1" runat="server">
    <div>
    
       


<

        




        <br /><br /><br />

         <div class="form-row">

    <div class="form-group col-md-6">
      
        <asp:Label ID="Label2" runat="server" for="inputEmail4" Text="Label">Email</asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Email" type="email"></asp:TextBox>
      
    </div>

    <div class="form-group col-md-6">
      
         <asp:Label ID="Label3" runat="server" Text="Label" for="inputPassword4">Password</asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" type="password" class="form-control" placeholder="Password"></asp:TextBox>
      
    </div>

  </div>

  <div class="form-group">
   
      <asp:Label ID="Label4" runat="server" Text="Label" for="inputAddress"></asp:Label>
       <asp:TextBox ID="TextBox6" runat="server" type="text" class="form-control" placeholder="1234 Main St"></asp:TextBox>
   
  </div>

  <div class="form-group">
   
      <asp:Label ID="Label5" runat="server" Text="Label" for="inputAddress2"></asp:Label>
    
      <asp:TextBox ID="TextBox7" runat="server" type="text" class="form-control" placeholder="Apartment, studio, or floor"></asp:TextBox>
  </div>

        <asp:Button ID="Button1" type="submit" runat="server" class="btn btn-primary" Text="submit" OnClick="Button1_Click" />
  
  
        </div>
        
      
        
       
      
        
      
        
        
      
        
       
      
        
    </form>
</body>
</html>
