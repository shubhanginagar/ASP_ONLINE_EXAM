<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication2.admin" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> ADMIN LOGIN </title>
    <style>
        .d2
        {
            height:500px;
            border: 10px solid black;
            width:500px;
            text-align:center;
            margin-left: 405px;
            background-color:#C1C1FF;
            
        }
    </style>
</head>
<body style="background-image:url('images/home.jpg') ; height: 710px; ">
    <form id="form1" runat="server">
        <div style="background-color:#3A5159; border: 5px dotted white; opacity:0.8;" >
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="Hey , Enter credentials to LOGIN."></asp:Label>
            <br />
            <br />
            <br />
        </div>
        <div class="d2">
  <h2 style="background-color:white; "> --ADMIN LOGIN --- </h2>
          <br />

            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Username:"></asp:Label>
&nbsp; <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" Width="208px"></asp:TextBox>

            <br />

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Font-Bold="True" Font-Italic="True" ForeColor="#FF3300" Display="Dynamic" ErrorMessage="Enter Username" SetFocusOnError="True">Enter Username.</asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username is E-mail." Font-Italic="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True"></asp:RegularExpressionValidator>
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Admin ID:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" Font-Size="Large"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter ID" ForeColor="#FF3300" Display="Dynamic" Font-Bold="True" Font-Italic="True">ID Required</asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Large" ForeColor="Black" Text="Password:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox3" runat="server" Font-Size="Large" TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter password" Font-Italic="True" ForeColor="Red" ControlToValidate="TextBox3" Font-Bold="True">Enter Password.</asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#009900" BorderColor="White" BorderStyle="Outset" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="LOGIN " Width="145px" OnClick="Button1_Click" />
            <br />
            <br />
            
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Red" Text="Wrong Password, TRY AGAIN" Visible="False"></asp:Label>
            
       </div>
    </form>
   
</body>
</html>


