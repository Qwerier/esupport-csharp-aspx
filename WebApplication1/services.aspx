<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="WebApplication1.services" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            background-color: #00FFFF;
        }
        .auto-style4 {
            color: #003399;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4">&nbsp; Lista e Shërbimeve</span><br />
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click1">Me Garanci</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Pa Garanci</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Te Gjitha</asp:LinkButton>
            <br />
            </span><br />
        </div>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="serviceID" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ID Shërbimi:&nbsp;
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("serviceID") %>'></asp:Label>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sherbimi:&nbsp;
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("service") %>'></asp:Label>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' />
                                &nbsp; &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cmimi:&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/loginForRequest.aspx">Zgjidh</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
        </asp:DataList>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OHDConn %>" SelectCommand="SELECT * FROM [services]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OHDConn %>" SelectCommand="SELECT * FROM [services] WHERE ([category] = @category)">
            <SelectParameters>
                <asp:QueryStringParameter Name="category" QueryStringField="cat" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
            
    </form>
</body>
</html>
