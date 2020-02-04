<%@ Page Language="C#" AutoEventWireup="true" CodeFile="policy.aspx.cs" Inherits="policy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Policy</title>
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
            bottom: 0;
            left: 0;
            right: 0;
            height: 70px;
            background: #ccc;
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
       /* .active
        {
            
            font-family:Arial;
        }*/
    </style>

</head>
<body>

     <nav class="navbar navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">
                <i class="fa fa-handshake-o" style="font-size:36px;color:white"></i>
                <b> LIFE INSURANCE</b>
            </a>
              <button type="button" class="btn btn-danger ml-auto">Log out</button>
        </div>
    </nav>
     <nav >
            <ul class="nav nav-tabs">
  <li class="nav-item size">
    <a class="nav-link " href="customer.aspx"><b>View Profile</b></a>
  </li>
  <li class="nav-item size">
     <a class="nav-link active" href="policy.aspx"><b>Buy Policy</b></a>
  </li>
  <li class="nav-item size">
    <a class="nav-link " href="claims.aspx"><b>Claims</b></a>
  </li>
  <li class="nav-item size">
    <a class="nav-link " href="renewal.aspx"><b>Renewals</b></a>
  </li>
                 <li class="nav-item size">
    <a class="nav-link" href="report.aspx"><b>Report</b></a>
  </li>
</ul></nav>

    <!--ADD RUNAT TO THE FORM BEFORE APPLYING ASP-->
    <form id="form1" runat="server">
        <div>
            

            <div class="py-5 text-center text-white bg-light" >
    <div class="container">
      <div class="row">
        <div class="p-5 col-lg-6 col-10 mx-auto border">
          <h1 class="mb-4 text-dark">Endowment Policy </h1>
          
            <div class="form-group">
                 <div class="form-group">
                  <asp:Label ID="Label2" for="DropDownList1" runat="server" class="select" Text="select Age" ForeColor="Black"></asp:Label>
    
   

                  <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>40</asp:ListItem>
              

            </asp:DropDownList>

           
            </div>
            <div class="form-group"> 


                <div class="form-group">
                  <asp:Label ID="Label1" for="DropDownList2" runat="server" class="select" Text="select term/Age" ForeColor="Black"></asp:Label>
    
   

                  <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>35</asp:ListItem>
              

            </asp:DropDownList>
  </div>
                 

            </div>
            <div class="form-group">
                 
                  <asp:Label ID="Label3" for="DropDownList3" class="select" runat="server"  Text="select insured amount" ForeColor="Black">Insured amount</asp:Label>
    
   

                  <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                <asp:ListItem>100000</asp:ListItem>
                <asp:ListItem>200000</asp:ListItem>
                <asp:ListItem>300000</asp:ListItem>
              

            </asp:DropDownList>
  
                 



                
                </div> 
            <div class="form-group">
                <asp:Button ID="Button1" type="submit" class="btn btn-primary" runat="server" Text="Calculate premium" OnClick="Button1_Click" />
         
            </div>
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" class="select" Text="Yearly premium" ForeColor="Black"></asp:Label>
                <asp:TextBox ID="TextBox1" type="text" class="form-control" placeholder="Premium" ReadOnly="true" runat="server" TextMode="Number"></asp:TextBox>
                
                </div> 
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" class="select" Text="amount will mature" ForeColor="Black"></asp:Label>
                <asp:TextBox ID="TextBox2" class="form-control" type="text"  placeholder="muturity" ReadOnly="true" runat="server" TextMode="Number"></asp:TextBox>
                
                </div> 
                 <div class="form-group">
            <button type="submit" class="btn btn-primary">Buy Policy</button>
            </div>
         
        </div>
      </div>
    </div>
  </div>
        </div>
    </form>
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
