<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regis.aspx.cs" Inherits="WebApplication2.regis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REGISTRATION </title>
    <style>
        .d2 {
            height: 777px;
            width: 800px;
            background-color: rgb(0,0,0,0.3);
            text-align: left;
        }
    </style>
</head>
<body style="background-image:url(images/registr.jpeg); background-repeat:no-repeat; background-size:cover; ">
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/homepage.aspx">Go Back To Home Page </asp:LinkButton>
            <br />
            <h2 style="text-align: center; color:indianred;"><b><u>NEW USER, KINDLY FILL THE REQUIRED DETAILS FOR REGISTRATION</u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></h2>
        </div>
        <center>
            <div class="d2">
                <br />
  
                &nbsp;
  
                <asp:Label ID="Label1" runat="server" Text="Your Roll Number: " Font-Bold="True" Font-Size="Larger"></asp:Label>

                &nbsp;<asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" Width="154px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;
                <br />
&nbsp;
                <asp:Label ID="Label2" runat="server" Text="First Name: " Font-Bold="True" Font-Size="Larger"></asp:Label>

                &nbsp;<asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" Width="226px"></asp:TextBox>
                &nbsp; <asp:Label ID="Label11" runat="server" Text="Last Name: " Font-Bold="True" Font-Size="Larger"></asp:Label>

                &nbsp; <asp:TextBox ID="TextBox10" runat="server" Font-Size="Large" Width="237px"></asp:TextBox>
                <br />
                <br />
                &nbsp;<br />
&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Your Dob:" Font-Bold="True" Font-Size="Larger"></asp:Label>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Font-Size="Large" TextMode="Date" Width="250px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label13" runat="server" Text="AGE:" Font-Bold="True" Font-Size="Larger"></asp:Label>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox11" runat="server" Width="130px" Font-Size="Large"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;<br />
&nbsp; <asp:Label ID="Label4" runat="server" Text="Address Line:" Font-Bold="True" Font-Size="Larger"></asp:Label>

                &nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" Font-Size="Large" Height="86px" width="250px" TextMode="MultiLine"></asp:TextBox>
                &nbsp; <asp:Label ID="Label5" runat="server" Text="City: " Font-Bold="True" Font-Size="Larger"></asp:Label>

                &nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server" Font-Size="Large" Width="250px"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="PIN Code:" Font-Bold="True" Font-Size="Larger"></asp:Label>

                &nbsp;&nbsp; <asp:TextBox ID="TextBox6" runat="server" Font-Size="Large" Width="250px"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label12" runat="server" Text="Gender: " Font-Bold="True" Font-Size="Larger"></asp:Label>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioButton1" runat="server" Font-Bold="True" Font-Size="Large" Text="Female" ValidationGroup="gender" />
&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" Font-Bold="True" Font-Size="Large" Text="Male" ValidationGroup="gender" />
                <br />
                <br />
                <br />
                &nbsp;
                <asp:Label ID="Label7" runat="server" Text="Your Email Add:" Font-Bold="True" Font-Size="Larger"></asp:Label>

                &nbsp;<asp:TextBox ID="TextBox12" runat="server" Font-Size="Large" Width="250px"></asp:TextBox>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Your Photo:" Font-Bold="True" Font-Size="Larger"></asp:Label>

                &nbsp;&nbsp;&nbsp;&nbsp;

                &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Font-Size="Large" />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="Set Password: " Font-Bold="True" Font-Size="Larger"></asp:Label>

                &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox8" runat="server" Font-Size="Large" Width="250px"></asp:TextBox>
                <br />
                <br />
                &nbsp;
                <asp:Label ID="Label10" runat="server" Text="Confirm Password:   " Font-Bold="True" Font-Size="Larger"></asp:Label>

                &nbsp;<asp:TextBox ID="TextBox9" runat="server" Font-Size="Large" Width="250px"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox8" ControlToValidate="TextBox9" Display="Dynamic" ErrorMessage="Password not matched." ForeColor="Red"></asp:CompareValidator>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Register " BackColor="#339933" Font-Bold="True" Font-Size="Large" ForeColor="White" Width="209px" OnClick="Button1_Click" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div>
                    <asp:Label ID="Label14" runat="server" BackColor="Yellow" Font-Bold="True" Font-Size="Larger" ForeColor="#FF3399" Text="REGISTRATION DONE " Visible="False"></asp:Label>
                </div>
            </div>
        </center>
    </form>
</body>
</html>
