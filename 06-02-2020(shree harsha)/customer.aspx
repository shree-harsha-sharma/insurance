<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customer.aspx.cs" Inherits="customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Custmer panel</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <style>
        .footer {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            height:70px;
            background:#ccc;
        }

        .testcolor {
            color: #12bbad;
        }
        .size 
        {
            width:150px;
            text-align:center;
            font-size:18px;
            
        }
        .active
        {
            text-decoration-color:blue;
            font-stretch:expanded;
        }
        legend.scheduler-border {
    font-size: 1.2em !important;
    font-weight: bold !important;
    text-align: left !important;
     width:inherit; /* Or auto */
    padding:0 10px; /* To give a bit of padding on the left and right */
    border-bottom:none;
       
}
        .scheduler-border {
    margin-left:10%;
    margin-right:10%;
}
       /* .active
        {
            
            font-family:Arial;
        }*/
    </style>

</head>
<body>
   
    
    <form id="form1" runat="server">
         <div>
            <nav class="navbar navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">
                <i class="fa fa-handshake-o" style="font-size:36px;color:white"></i>
                <b> LIFE INSURANCE</b>
            </a>
          
            <asp:Button ID="Button1" type="button" runat="server" class="btn btn-danger ml-auto" Text="Log out" OnClick="Button1_Click" />
        </div>
    </nav>
        <!--ADD RUNAT TO THE FORM BEFORE APPLYING ASP-->
        <nav >
            <ul class="nav nav-tabs">
  <li class="nav-item size ">
    <a class="nav-link active" href="customer.aspx"><b>View Profile</b></a>
  </li>
  <li class="nav-item size">
     <a class="nav-link" href="policyhome.html"><b>Buy Policy</b></a>
  </li>
  <li class="nav-item size">
    <a class="nav-link" href="claims.aspx"><b>Claims</b></a>
  </li>
  <li class="nav-item size">
    <a class="nav-link" href="renewal.aspx"><b>Renewals</b></a>
  </li>
                 <li class="nav-item size">
    <a class="nav-link" href="report.aspx"><b>Report</b></a>
  </li>
</ul>
      </nav>
             <br />
       <div class="alert alert-success" role="alert">
  <asp:Label ID="lblmsg" runat="server"></asp:Label>
</div>
             
           <!-- user details -->   


<div class="py-3 text-center" >
    <div class="container">
      <div class="row">
        <div class="mx-auto p-4 col-lg-7">
          <h1 class="mb-4">Your details</h1>
          
            <div class="form-row">
              <div class="form-group col-md-6">
                  <asp:Label ID="Label2" runat="server" Text=""><b class="font-weight-bold">user id</b></asp:Label>
                  <asp:TextBox type="text" ID="userid" class="form-control"  ReadOnly="true" runat="server"></asp:TextBox>
                  

              </div>
              <div class="form-group col-md-6"> 
                  <asp:Label ID="Label3" runat="server" Text=""><b class="font-weight-bold">user name</b></asp:Label>
                  <asp:TextBox ID="name" type="Text" class="form-control"  ReadOnly="true" runat="server"></asp:TextBox>
                 

              </div>
            </div>

             <div class="form-row">
              <div class="form-group col-md-6">
                  <asp:Label ID="Label7" runat="server" Text=""><b class="font-weight-bold">user age</b></asp:Label>
                  <asp:TextBox type="text" ID="age" class="form-control"  ReadOnly="true" runat="server"></asp:TextBox>
                  

              </div>
              <div class="form-group col-md-6"> 
                  <asp:Label ID="Label8" runat="server" Text=""><b class="font-weight-bold">user phone number</b></asp:Label>
                  <asp:TextBox ID="phn" type="Text" class="form-control"  ReadOnly="true" runat="server"></asp:TextBox>
                 

              </div>
            </div>

            <div class="form-group">
                 <asp:Label ID="Label4" runat="server" Text=""><b class="font-weight-bold">user email</b></asp:Label>
                <asp:TextBox type="email" class="form-control"  ID="mail" ReadOnly="true" runat="server"></asp:TextBox>
                 

            </div>
            <div class="form-group">
                 <asp:Label ID="Label5" runat="server" Text=""><b class="font-weight-bold">user address</b></asp:Label>
                <asp:TextBox type="text" class="form-control"  ID="address" ReadOnly="true" runat="server"></asp:TextBox>
                 

            </div>
           
         
        </div>
      </div>
    </div>
  </div>

              <asp:Label ID="Label1" runat="server" ></asp:Label>

             <div class="py-3 text-center" >
    <div class="container">
      <div class="row">
        <div class="mx-auto p-4 col-lg-7">
          <h1 class="mb-4">Your policy details</h1>
          
            <div class="form-row">
              <div class="form-group col-md-6">
                  <asp:Label ID="Label9" runat="server" Text=""><b class="font-weight-bold">Policy id</b></asp:Label>
                  <asp:TextBox type="text" ID="policyid" class="form-control"  ReadOnly="true" runat="server"></asp:TextBox>
                  

              </div>
              <div class="form-group col-md-6"> 
                  <asp:Label ID="Label10" runat="server" Text=""><b class="font-weight-bold">user id</b></asp:Label>
                  <asp:TextBox ID="user" type="Text" class="form-control"  ReadOnly="true" runat="server"></asp:TextBox>
                 

              </div>
            </div>

             

            <div class="form-group">
                 <asp:Label ID="Label13" runat="server" Text=""><b class="font-weight-bold">policy type</b></asp:Label>
                <asp:TextBox type="Text" class="form-control"  ID="policytype" ReadOnly="true" runat="server"></asp:TextBox>
                 

            </div>
            <div class="form-group">
                 <asp:Label ID="Label14" runat="server" Text=""><b class="font-weight-bold">user age</b></asp:Label>
                <asp:TextBox type="text" class="form-control"  ID="userage" ReadOnly="true" runat="server"></asp:TextBox>
                 

            </div>
            <div class="form-group">
                 <asp:Label ID="Label15" runat="server" Text=""><b class="font-weight-bold">policy term</b></asp:Label>
                <asp:TextBox class="form-control" type="text" ID="term" ReadOnly="true" runat="server"></asp:TextBox>
               
                <asp:Label ID="Label16" runat="server" ></asp:Label>
            </div>

            <div class="form-group">
                 <asp:Label ID="Label11" runat="server" Text=""><b class="font-weight-bold">assured amount</b></asp:Label>
                <asp:TextBox type="text" class="form-control"  ID="assured" ReadOnly="true" runat="server"></asp:TextBox>
                 

            </div>

            <div class="form-group">
                 <asp:Label ID="Label12" runat="server" Text=""><b class="font-weight-bold">premium(yearly)</b></asp:Label>
                <asp:TextBox type="text" class="form-control"  ID="premium" ReadOnly="true" runat="server"></asp:TextBox>
                 

            </div>

            <div class="form-group">
                 <asp:Label ID="Label17" runat="server" Text=""><b class="font-weight-bold">matured amount</b></asp:Label>
                <asp:TextBox type="text" class="form-control"  ID="maturity" ReadOnly="true" runat="server"></asp:TextBox>
                 

            </div>
         
        </div>
      </div>
    </div>
  </div>

      
       

          
  
 
  
  

  


   
    

  
    </form>
       
</body>
</html>
