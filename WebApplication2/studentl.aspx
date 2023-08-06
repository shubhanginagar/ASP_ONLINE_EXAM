<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentl.aspx.cs" Inherits="WebApplication2.studentl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> student login </title>
    <style>
        .d3
        {
            height:360px;
            width:500px;
             background: rgb(255, 255, 255,0.5);
             margin-left:485px;
             margin-top:65px;
             border: 5px solid white;
             text-align:center;
        }
    </style>
</head>
<body style="background-image:url(images/student1.jpeg); ">
    <form id="form1" runat="server">


        <div>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" PostBackUrl="homepage.aspx" ForeColor="Red">Go Back  To Home Page </asp:LinkButton>
            
            &nbsp;<h2 style="color:white; text-align:center"><u><b> HELLO STUDENT, ENTER CRENTIALS TO LOGIN ! </b></u> </h2>
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" BackColor="Yellow" Font-Bold="True" Font-Underline="True" ForeColor="Red" Text="WRONG PASSWORD , TRY AGAIN " Visible="False" Font-Size="Larger"></asp:Label>
        </div>
    <div class="d3">
      
        \<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Student Roll no."></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Font-Size="Larger"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="required field*" Font-Bold="True" Font-Italic="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" Text="Student Email"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Font-Size="Larger"></asp:TextBox>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Enter Correct Email " Font-Bold="True" Font-Italic="True" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="required field * " Font-Bold="True" Font-Italic="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Larger" Text="Password"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Font-Size="Larger" TextMode="Password"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="required field " Font-Bold="True" Font-Italic="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <br />
       
        <asp:Button ID="Button1" runat="server" BackColor="#66FF33" Font-Size="Medium" Text="LOG IN " OnClick="Button1_Click" Width="149px" />
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" OnClick="LinkButton2_Click" ForeColor="#0033CC">Forgot   Password.</asp:LinkButton>
        <br />
        <div>
            <br />
            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/regis.aspx" Font-Bold="True" Font-Size="Large" ForeColor="#0033CC">New User Registration</asp:LinkButton>
        </div>
        <br />
        <br />
        <br />
    </div>
       
    </form>
    </body>
</html>
