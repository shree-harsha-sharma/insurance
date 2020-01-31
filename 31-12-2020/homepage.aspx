<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<!DOCTYPE html>
<html>

<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <style>

    </style>

</head>

<body>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <div class="container">
            <i class="fa fa-handshake-o" style="font-size:36px;color:white"></i><a class="navbar-brand" href="#">
                &nbsp;<b>LIFE INSURANCE</b>
            </a> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar10">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbar10">
                <ul class="navbar-nav ml-auto">
                    <a class="btn navbar-btn ml-md-2 btn-light text-dark" href="signin.aspx">USER LOGIN</a>
                    <a class="btn navbar-btn ml-md-2 text-dark btn-primary">AGENT LOGIN</a>
                    <li class="nav-item text-light"> <a class="nav-link" href="about.aspx">ABOUT</a> </li>
                </ul>
            </div>
        </div>
    </nav>
    <div id="carouselExampleInterval" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active" data-interval="1000" style="height:50%;">
                <img src="sample1.jpg" class="d-block w-100" alt="..." width="100%" height="650px">
            </div>
            <div class="carousel-item" data-interval="1000">
                <img src="sample2.jpg" class="d-block w-100" alt="..." width="100%" height="650px">
            </div>
            <div class="carousel-item">
                <img src="sample3.jpg" class="d-block w-100" alt="..." width="100%" height="650px">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleInterval" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleInterval" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Life Insurance</h1>
                    <p class="lead mb-4">You don't buy life insurance because<b> YOU </b> are going to die,but because those you love are going to <b> LIVE </b>.</p>
                </div>
            </div>
            <div class="row d-flex justify-content-between">
                <div class="col-md-4 col-lg-3 p-4">
                    <img class="img-fluid d-block" src="term.png" width="1500">
                    <h4 class="my-3"> <b>Term Life Insurance &nbsp;</b> </h4>
                    <p>Term life insurance is life insurance that provides coverage at a fixed rate of payments for a limited period of time</p>
                    <a class="btn btn-outline-primary" href="endowment.html">Know more</a>
                </div>
                <div class="col-md-4 col-lg-3 p-4">
                    <img class="img-fluid d-block" src="endowment.png" width="1500">
                    <h4 class="my-3"> <b>Endowment Policy</b> </h4>
                    <p>An endowment policy is a life insurance contract designed to pay a lump sum after a specific term or on death. Typical maturities are ten, fifteen or twenty years up to a certain age limit.</p>


                    <a class="btn btn-outline-primary" href="endowment.html">Know more</a>
                   
                </div>
                <div class="col-md-4 col-lg-3 p-4">
                    <img class="img-fluid d-block" src="money.png" width="1500">
                    <h4 class="my-3"> <b>Money back plans</b> </h4>
                    <p>The money-back policy from Life Insurance Corporation in India is a popular insurance policy. It provides life coverage during the term of the policy and the maturity benefits are paid in installments.</p>
                    <a class="btn btn-outline-primary" href="retirement.html">Know more</a>
                </div>
            </div>
        </div>
    </div>


    <div class="py-3 bg-dark">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-6 p-3"> <i class="d-block fa fa-circle-o fa-5x text-primary"></i> </div>
                <div class="col-lg-4 col-6 p-3">
                    <p> <a href="https://goo.gl/maps/AUq7b9W7yYJ2" target="_blank"> Fake street, 100 <br>NYC - 20179, USA</a> </p>
                    <p> <a href="tel:+246 - 542 550 5462">+1 - 256 845 87 86</a> </p>
                    <p class="mb-0"> <a href="mailto:info@pingendo.com">lifeinsurancecorp@gmail.com</a> </p>
                </div>
                <div class="col-md-4 p-3">
                    <h5 class="text-primary"> <b>About</b> </h5>
                    <p class="mb-0 text-light"> You don't buy life insurance because YOU are going to die,but because those you love are going to LIVE.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <p class="mb-0 mt-2 text-light">© 2020 life insurance corp. All rights reserved</p>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>
