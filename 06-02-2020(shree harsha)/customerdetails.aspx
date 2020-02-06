<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customerdetails.aspx.cs" Inherits="customerdetails" %>

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
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="user_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Width="980px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id" />
                <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="user_ph" HeaderText="user_ph" SortExpression="user_ph" />
                <asp:BoundField DataField="user_mail" HeaderText="user_mail" SortExpression="user_mail" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="user_password" HeaderText="user_password" SortExpression="user_password" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:insuranceConnectionString1 %>" DeleteCommand="DELETE FROM [users] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [users] ([user_name], [age], [user_ph], [user_mail], [address], [user_password]) VALUES (@user_name, @age, @user_ph, @user_mail, @address, @user_password)" ProviderName="<%$ ConnectionStrings:insuranceConnectionString1.ProviderName %>" SelectCommand="SELECT [user_id], [user_name], [age], [user_ph], [user_mail], [address], [user_password] FROM [users]" UpdateCommand="UPDATE [users] SET [user_name] = @user_name, [age] = @age, [user_ph] = @user_ph, [user_mail] = @user_mail, [address] = @address, [user_password] = @user_password WHERE [user_id] = @user_id">
            <DeleteParameters>
                <asp:Parameter Name="user_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
                <asp:Parameter Name="user_ph" Type="Int64" />
                <asp:Parameter Name="user_mail" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="user_password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
                <asp:Parameter Name="user_ph" Type="Int64" />
                <asp:Parameter Name="user_mail" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="user_password" Type="String" />
                <asp:Parameter Name="user_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
    </div>
    </form>
</body>
</html>
