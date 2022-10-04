<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menaxherHome.aspx.cs"  Inherits="WebApplication1.menaxher.menaxherHome" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   

    <title>Home </title>

        <style type="text/css">


        .auto-style2 {
            height: 206px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <table  width="100%" class="auto-style2" >
                    <tr align="center">
                        <td align="center" style="z-index: 100; left: 0px; vertical-align: middle; font-size:xx-large;
                                line-height: normal; letter-spacing: normal; background-color:navy; color:White;
                                text-align: center; text-decoration: underline; border-left-color:navy; border-bottom-color:navy; border-top-style: solid; border-top-color:navy; border-right-style: solid; border-left-style: solid; border-right-color: Maroon; border-bottom-style: solid; height: 40px;">SMART IT
                            
                            <asp:Menu ID="AdminMenu" BorderWidth="2" BackColor="#330033" ForeColor="#ffffff"  Font-Underline="true" Font-Size="Medium" Orientation="Horizontal" Width="100%" Height="40px" runat="server">
                                <items>
                                    <asp:MenuItem Text="Shto dokument"  Value="Shto" NavigateUrl="~/menaxher/new_file.aspx"></asp:MenuItem>

                                    <asp:MenuItem Text="Kërkesë e Re"  Value="New Request" NavigateUrl="~/menaxher/requestArrivedForManager.aspx"></asp:MenuItem>
                                    <asp:MenuItem Text="Ndrysho fjalëkalimin"  Value="New Password" NavigateUrl="~/menaxher/changePswdManager.aspx"></asp:MenuItem>
                                    <asp:MenuItem Text="Harruat fjalëkalimin"  Value="Forgot Password" NavigateUrl="~/menaxher/forgotPwdManager.aspx"></asp:MenuItem>
                                  <asp:MenuItem  Text="Log Out" Value="Log Out" NavigateUrl="~/logOut.aspx" ></asp:MenuItem>
                                </items>
                            </asp:Menu>
                       
                    </td>
                    </tr>
                    <tr>
                        <td align="center" >
                            &nbsp;</table>
        </div>
    </form>
</body>
    </html>

