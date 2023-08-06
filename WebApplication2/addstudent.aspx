<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addstudent.aspx.cs" Inherits="WebApplication2.addstudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> add student </title>
    <style>
         .d2
        {
            height:550px;
           
            width:600px;
            text-align:center;
            margin-left: 400px;
             
        }
    </style>
</head>
<body style="background-image:url(images/addstudent.jpg); background-position:center;">
    <form id="form1" runat="server">
        <div style="background-color:aquamarine; opacity:0.8;" >
            <br />
             <h2 style="text-align:center ; color:crimson "><b><i><u><marquee>ENTER&nbsp;&nbsp; THE&nbsp;&nbsp; STUDENT&nbsp;&nbsp; CREDENTIALS&nbsp;&nbsp; FOR&nbsp;&nbsp; NEW&nbsp;&nbsp; STUDENT&nbsp;&nbsp; ADDING</marquee> </u></i></b></h2>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" PostBackUrl="Alogin.aspx">Go Back To Admin Paage</asp:LinkButton>
            <br />
        </div>
    <div class="d2">
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="Larger" Text="Student Roll num." Font-Bold="True"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Font-Size="Larger"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Manadatory Field" ControlToValidate="TextBox1" Display="Dynamic" Font-Italic="True" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="First name:" Font-Size="Larger" Font-Bold="True"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Font-Size="Larger"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field " ControlToValidate="TextBox2" Display="Dynamic" Font-Italic="True" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Last name" Font-Size="Larger" Font-Bold="True"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Font-Size="Larger"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter field*" ControlToValidate="TextBox3" Display="Dynamic" Font-Italic="True" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Enter email " Font-Size="Larger" Font-Bold="True"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Font-Size="Larger"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required Field" ControlToValidate="TextBox4" Display="Dynamic" Font-Italic="True" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter correct email " ControlToValidate="TextBox4" Display="Dynamic" Font-Italic="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Enter Age" Font-Size="Larger" Font-Bold="True"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Font-Size="Larger"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter field " ControlToValidate="TextBox5" Display="Dynamic" Font-Italic="True" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age is not in range " ControlToValidate="TextBox5" Display="Dynamic" Font-Italic="True" ForeColor="Red" MaximumValue="25" MinimumValue="18" Type="Integer" Font-Bold="True"></asp:RangeValidator>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Enter password" Font-Size="Larger" Font-Bold="True"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" Font-Size="Larger"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Field" ControlToValidate="TextBox6" Display="Dynamic" Font-Italic="True" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Confirm Password" Font-Size="Larger" Font-Bold="True"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" Font-Size="Larger"></asp:TextBox>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="not matched" ControlToCompare="TextBox6" ControlToValidate="TextBox7" Display="Dynamic" Font-Italic="True" ForeColor="Red" Font-Bold="True"></asp:CompareValidator>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit Data" Font-Size="Larger" BackColor="#66FF33" ForeColor="Black" OnClick="Button1_Click" />
        <br />
        <br />
        <div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" BackColor="Yellow" BorderColor="#FF3300" BorderStyle="Ridge" ForeColor="#006600" Text="STUDENT HAS BEEN ADDED TO THE DATABASE" Visible="False"></asp:Label>
        </div>
        <br />
        <br />
    </div>
    </form>
    </body>
</html>
