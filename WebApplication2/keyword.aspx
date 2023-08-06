<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="keyword.aspx.cs" Inherits="WebApplication2.keyword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> add keyword </title>
    <style>
        .d2
        {
            height:500px;
            width:500px;
            margin-left:400px;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            &nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="Alogin.aspx">Go Back To Admin Page</asp:LinkButton>
            <br />
             <h2 style="color:darkblue; text-align:center"> Below is the Stored Information of the Registered Student</h2>
            <br />
        </div>
    <div class="d2">
        <br />
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateEditButton="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="191px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDataBound="GridView1_RowDataBound" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="266px">
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" ForeColor="#CC3300" Text="Click on Edit to ADD keyword" Font-Bold="True"></asp:Label>
        </div>
    </form>
    </body>
</html>
