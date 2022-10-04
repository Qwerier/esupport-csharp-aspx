<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="historiku.aspx.cs" Inherits="WebApplication1.admin.historiku" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <asp:GridView ID="gvEmails" runat="server" OnRowDataBound="OnRowDataBound" DataKeyNames="MessageNumber"
    AutoGenerateColumns="False" Width="342px" Height="186px">
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
        <asp:BoundField DataField="solution" HeaderText="Solution" SortExpression="solution" />
         <asp:BoundField DataField="deadline" HeaderText="Afati" SortExpression="deadline" />
        <asp:BoundField DataField="datesub" HeaderText="datesub" SortExpression="Koha e zgjidhjes" />
        <asp:BoundField DataField="requestCategory" HeaderText="Kategoria" SortExpression="requestCategory" />

    </Columns>
</asp:GridView>
<div id="dialog" style="display: none">
    <span id="body"></span>
    <br />
    <span id="attachments"></span>
</div>
  
        <div>
        </div>
  
        </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Pergjigju" />
            &nbsp;</p>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
