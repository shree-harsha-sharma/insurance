<%@ Page Language="C#" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>payment</title>
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
        .select{
            padding-left:0px;
        }
        .message{
            font-size:20px;
        }
        .foot{
            left:0;
            right:0;
            bottom:0;
            position:absolute;
        }
       /* .active
        {
            
            font-family:Arial;
        }*/
        .auto-style1 {
            margin-left: 67;
        }
        .auto-style2 {
            margin-left: 76;
        }
        .auto-style3 {
            margin-left: 23;
        }
        .auto-style4 {
            margin-left: 69;
        }
        .auto-style5 {
            margin-left: 68;
        }
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
    <form id="form1" runat="server">
        <div>
            <div class="py-3 text-center" >
    <div class="container">
      <div class="row">
        <div class="mx-auto p-4 col-lg-7">
          <h1 class="mb-4">Payment...</h1>
          
            <div class="form-row">
              <div class="form-row">
              <div class="form-group col-md-6">
                  <asp:Label ID="Label7" runat="server" Text=""><b class="font-weight-bold">premium amount</b></asp:Label>
                  <asp:TextBox type="" ID="amount" class="form-control"  ReadOnly="true" runat="server"></asp:TextBox>
                  

              </div>
              <div class="form-group col-md-6"> 
                  <asp:Label ID="Label3" runat="server" Text=""><b class="font-weight-bold">user id</b></asp:Label>
                  <asp:TextBox ID="userid" type="Text" class="form-control"  ReadOnly="true" runat="server"></asp:TextBox>
                 

              </div>
            </div>

             </div>
              <div class="form-group"> 
                  <asp:Label ID="Label8" runat="server" Text=""><b class="font-weight-bold">policy id</b></asp:Label>
                  <asp:TextBox ID="policyid" type="Text" class="form-control"  ReadOnly="true" runat="server"></asp:TextBox>
                 

              </div>
            

            <div class="form-group">
                 <asp:Label ID="Label4" runat="server" Text=""><b class="font-weight-bold">card holder name</b></asp:Label>
                <asp:TextBox type="text" class="form-control"  ID="name" runat="server" ></asp:TextBox>
                 

            </div>
            <div class="form-group">
                 <asp:Label ID="Label5" runat="server" Text=""><b class="font-weight-bold">card number</b></asp:Label>
                <asp:TextBox type="text" class="form-control"  ID="number" runat="server"></asp:TextBox>
                 

            </div>
            <div class="form-group">
                 <asp:Label ID="Label6" runat="server" Text=""><b class="font-weight-bold">card Expiry</b></asp:Label>
                <asp:TextBox class="form-control" placeholder="" type="text" ID="exp" runat="server"></asp:TextBox>
               
               
            </div>
            <div class="form-group">
                 <asp:Label ID="Label1" runat="server" Text=""><b class="font-weight-bold">CVV</b></asp:Label>
                <asp:TextBox class="form-control"  type="text" ID="cvv" runat="server"></asp:TextBox>
               
               
            </div>
             <div class="form-group ">
                     <asp:Button type="submit" class="btn btn-primary" ID="pay" runat="server" Text="Make payment" OnClick="pay_Click"  />
           
            </div>
         
        </div>
      </div>
    </div>
  </div>
           
  </div>
        <div class="form-group ">
        <asp:Label ID="Label9" class="form-group" runat="server" Text="L"></asp:Label>
            </div>
    </form>
    
</body>
</html>
