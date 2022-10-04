<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bill.aspx.cs" Inherits="WebApplication1.klient.bill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 63px;
        }
        .auto-style2 {
            height: 60px;
            width: 1074px;
        }
        .auto-style3 {
            margin-top: 11px;
        }
    </style>
</head>
<body style="height: 45px">
    <form id="form1" runat="server" class="auto-style2">
        <div class="auto-style1">
            <strong>&nbsp;&nbsp;<asp:Menu ID="AdminMenu" BorderWidth="2" BackColor="#330033" ForeColor="#ffffff"  Font-Underline="true" Font-Size="Medium" Orientation="Horizontal" Width="100%" Height="40px" runat="server">
                                <items>
                                    <asp:MenuItem Text="Kërkesë e Re"  Value="New Request" NavigateUrl="~/klient/newRequest.aspx"></asp:MenuItem>
                                    <asp:MenuItem Text="Ndrysho fjalëkalimin"  Value="New Password" NavigateUrl="~/klient/changePassword.aspx"></asp:MenuItem>
                                    <asp:MenuItem Text="Cështje të zgjidhura"  Value="Queries" NavigateUrl="~/klient/myQueries.aspx"></asp:MenuItem>
                                     <asp:MenuItem Text="Cështje të pazgjidhura"  Value="Unsolved" NavigateUrl="~/klient/myUnsolvedQueries.aspx"></asp:MenuItem>
                                   <asp:MenuItem Text="Fatura"  Value="bill" NavigateUrl="~/klient/bill.aspx"></asp:MenuItem>

                                  <asp:MenuItem  Text="Log Out" Value="Log Out" NavigateUrl="~/logOut.aspx" ></asp:MenuItem>
                                </items>
                            </asp:Menu>
                       
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            </strong></div>  <asp:Panel ID="Panel2" runat="server" Height="633px" CssClass="auto-style3">
            <div>
      
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FATURA</strong><br /> Fatura ID:<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; INVOICE</strong><br />
                <br />
                Fatura NO:<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                Fatura Data:<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <br />
      
            </div>
           
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" ShowFooter="True" Height="234px" Width="513px">
                    <Columns>
                        <asp:BoundField DataField="requestID" HeaderText="ID" />
                        <asp:BoundField DataField="request" HeaderText="Kerkesa" />
                        <asp:BoundField DataField="qty" HeaderText="Nr.Sherbimeve" />
                        <asp:BoundField DataField="price" HeaderText="Cmimi" />
                        <asp:BoundField DataField="totalprice" HeaderText="Cmimi Total" />
                    </Columns>
                </asp:GridView>
                <br />
                <p>
                    Grand Total:
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </p>
                <p>
                    Kjo është faturë e gjeneruar automatikisht.</p>
            <p>
                <asp:Button ID="Button2" runat="server" BorderColor="Orange" OnClick="Button2_Click" Text="Download PDF" />
            </p>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
            </asp:Panel>
        </asp:Panel>
    </form>
</body>
</html>
