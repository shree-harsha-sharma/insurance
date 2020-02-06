<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminissue.aspx.cs" Inherits="adminissue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
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
      
        .auto-style1 {
            left: 7px;
            top: 78px;
        }
      
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
          
            <asp:Button ID="Button1" type="button" runat="server" class="btn btn-danger ml-auto" Text="Log out"  />
        </div>
    </nav>

       


         <div class="py-3 bg-dark footer" style="">
    <div class="container">
      <div class="row">
        <div class="auto-style1">
          <p class="mb-0 text-light">© 2020 life insurance corp. All rights reserved</p>
        </div>
      </div>
    </div>

    </div>
        </div>
       
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Width="981px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="policy_id" HeaderText="policy_id" SortExpression="policy_id" />
                <asp:BoundField DataField="issue" HeaderText="issue" SortExpression="issue" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:insuranceConnectionString1 %>" SelectCommand="SELECT * FROM [report]"></asp:SqlDataSource>
       
        
    </form>
</body>
</html>
