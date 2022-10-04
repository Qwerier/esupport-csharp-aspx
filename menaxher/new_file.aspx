<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="new_file.aspx.cs" Inherits="WebApplication1.menaxher.new_file" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shto dokument</title>
    <style type="text/css">

        .auto-style2 {
            font-weight: bold;
            font-size: 14pt;
            color: #D2691E;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            font-weight: bold;
            font-size: 14pt;
            color: #3333CC;
        }
        .auto-style5 {
            font-weight: bold;
            font-size: 14pt;
            color: #6666FF;
        }
        .auto-style6 {
            z-index: 100;
            left: 0px;
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
                <table  width="100%" class="auto-style2" >
                    <tr align="center">
                        <td align="center" style="vertical-align: middle; font-size:xx-large;
                                line-height: normal; letter-spacing: normal; background-color:navy; color:White;
                                text-align: center; text-decoration: underline; border-left-color:navy; border-bottom-color:navy; border-top-style: solid; border-top-color:navy; border-right-style: solid; border-left-style: solid; border-right-color: Maroon; border-bottom-style: solid; " class="auto-style6">SMART IT
                            
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
            <span class="auto-style2">
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            </span>
            <span class="auto-style4">SHTO DOKUMENTACIOB PER ZGJIDHJE PROBLEMESH TE NGJASHME</span><span class="auto-style2"><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            </span>
            <span class="auto-style4">Zgjidh kategori&nbsp;&nbsp;</span><span class="auto-style2">&nbsp;&nbsp;&nbsp; <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;
 Zgjidh kategori&nbsp; 
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="categories" DataValueField="categories">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OHDConn %>" SelectCommand="SELECT [categories] FROM [category]"></asp:SqlDataSource>
                    <br />
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            </span>
            <span class="auto-style5">&nbsp;Shto dokument&nbsp;</span><span class="auto-style2">&nbsp;&nbsp; <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
            <br />
            <br />
            </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">
<asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="Upload" CssClass="btn-primary" />                     
        </div>
    </form>
</body>
</html>
