﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customer.aspx.cs" Inherits="customer" %>

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
       /* .active
        {
            
            font-family:Arial;
        }*/
    </style>

</head>
<body>
    <div>
            <nav class="navbar navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">
                <i class="fa fa-handshake-o" style="font-size:36px;color:white"></i>
                <b> LIFE INSURANCE</b>
            </a>
            <button type="button" class="btn btn-danger ml-auto">Log out</button>
            
        </div>
    </nav>
        <!--ADD RUNAT TO THE FORM BEFORE APPLYING ASP-->
        <nav >
            <ul class="nav nav-tabs">
  <li class="nav-item size">
    <a class="nav-link active" href="customer.aspx"><b>View Profile</b></a>
  </li>
  <li class="nav-item size">
     <a class="nav-link" href="policy.aspx"><b>Buy Policy</b></a>
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
    
    <form id="form1" >
        

          
  
 
  
  

  


   
    

  
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

        </div>
</body>
</html>
