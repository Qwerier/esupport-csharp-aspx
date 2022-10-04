<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_email.aspx.cs" Inherits="WebApplication1.admin.view_email" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emaile të ardhura</title>

</head>
<body>
    <asp:GridView ID="gvEmails" runat="server" OnRowDataBound="OnRowDataBound" DataKeyNames="MessageNumber"
    AutoGenerateColumns="False" Width="335px">
   <Columns>
        <asp:BoundField HeaderText="From" DataField="From" HtmlEncode="false" />
        <asp:TemplateField HeaderText="Subject">
            <ItemTemplate>
                <asp:LinkButton ID="lnkView" runat="server" Text='<%# Eval("Subject") %>' />
                <span class="body" style="display: none">
                    <%# Eval("Body") %></span>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField HeaderText="Date" DataField="DateSent" />
        <asp:TemplateField ItemStyle-CssClass="Attachments">
            <ItemTemplate>
                <asp:Repeater ID="rptAttachments" runat="server">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkAttachment" runat="server" OnClick="Download" Text='<%# Eval("FileName") %>' />
                    </ItemTemplate>
                    <SeparatorTemplate>
                        <br>
                    </SeparatorTemplate>
                </asp:Repeater>
            </ItemTemplate>

<ItemStyle CssClass="Attachments"></ItemStyle>
        </asp:TemplateField>
        <asp:BoundField DataField="requestCategory" HeaderText="Kategori" SortExpression="requestCategory" />
    </Columns>
</asp:GridView>
<div id="dialog" style="display: none">
    <span id="body"></span>
    <br />
    <span id="attachments"></span>
</div>
  
        <div>
        </div>
  
</body>
</html>
