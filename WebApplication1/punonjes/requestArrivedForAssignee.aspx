<%@ Page Language="C#" AutoEventWireup="true"MasterPageFile="~/punonjes/punonjes.Master"CodeBehind="requestArrivedForAssignee.aspx.cs" Inherits="WebApplication1.punonjes.requestArrivedForAssignee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table width="100%">
            <tr align="center">
                        <td align="center" style="text-decoration:underline; font-size:15pt; font-weight:bold; color:Green;">
                        
                                    Kerekese e Re Mberriti!
                                    <br />
                                    <br />
                        </td>
            </tr>
    <tr align="center">
        <td align="center">
            <asp:GridView ID="gvRequest" runat="server" Font-Bold="true" RowStyle-HorizontalAlign="Left" CellSpacing="4" CellPadding="1"  BorderColor="black" Font-Size="16pt" AllowPaging="true" AutoGenerateColumns="false" >
             
             <Columns>
                        <asp:HyperLinkField SortExpression="request"   HeaderText="Request" DataNavigateUrlFields="requestID,userID" DataNavigateUrlFormatString="specificRequestForAssignee.aspx?requestID={0}&amp;userID={1}"  DataTextField="request" />
                    <%--    <asp:BoundField DataField="request" SortExpression="request" HeaderText="Request" ></asp:BoundField>--%>
                       <asp:BoundField DataField="requestID" SortExpression="requestID" HeaderText="Request ID"></asp:BoundField>
                       <asp:BoundField DataField="requestCategory" SortExpression="requestCategory" HeaderText="Request Category"></asp:BoundField>

                                        <asp:BoundField DataField="deadline" SortExpression="deadline" HeaderText="Afati"></asp:BoundField>

             </Columns>

             </asp:GridView>
            
        </td>
    </tr>
    
</table>

        <div>
        </div>
  </asp:Content>