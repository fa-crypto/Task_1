<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Task_1.Properties.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lading point support tool</title>
</head>
    <body id="B1">
        <form id="form1" runat="server">
    <H1 id="H1" style="text-align:center;font-family: 'Agency FB'; font-size: xx-large; font-weight: bold; font-style: italic; font-variant: normal; text-transform: lowercase; color: cornsilk; background-color: cornflowerblue; height: 95px;"> Leading point support tool</H1><br />
            <p>
                &nbsp;</p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="PLEASE ENTER IMSI" Font-Bold="True" Font-Italic="True" ForeColor="#003300"></asp:Label><br />
                <br />
                <asp:TextBox ID="IMSI" runat="server" BorderColor="#FFFFCC" BorderStyle="Solid" Width="283px"></asp:TextBox><br /><br />
                <asp:Label ID="Label2" runat="server" Text="PLEASE ENTER MSISDN" Font-Bold="True" Font-Italic="True" ForeColor="#003300"></asp:Label>
                <br /><br />

                <asp:TextBox ID="MSISDN" runat="server" BorderColor="#FFFFCC" BorderStyle="Solid" Width="283px"></asp:TextBox>
                <br />
                <br />
            </p>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" BackColor="#003300" Width="212px" Font-Bold="True" Font-Italic="True" ForeColor="#FFFFCC" />
           
            <p>
                <asp:Label ID="L2" runat="server" Text="the result is :" Font-Bold="True" Font-Italic="True" Font-Size="Larger"></asp:Label>
                
                <asp:TextBox ID="result" runat="server" BorderColor="#FFFFCC" BorderStyle="Solid" Width="283px" Enabled="False"></asp:TextBox>
                
            </p>
            <style>
               
               
                #B1{
                    background-color:whitesmoke;
                }
             


            </style>
           
        </form>


</html>
