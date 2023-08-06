<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewstudentresult.aspx.cs" Inherits="WebApplication2.viewstudentresult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> student result </title>
    <style>
        .image
        {
            background-image:url(images/result.jpg);
            background-repeat:no-repeat;
            background-size:cover;
            background-position:center;
        }
        .d1{
            height: 650px;
            width: 735px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div  class="image">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    <div>
        &nbsp;&nbsp;
        <br />
        <h2 style="text-align:center; color:darkblue"> <b>Here is the Quiz Result of the exam </b></h2>
        <br />
    </div>
    <center>
    <div class="d1">

        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="173px" Width="605px">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Alogin.aspx">Go Back To Admin Login </asp:LinkButton>

    </div>
        </center>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
