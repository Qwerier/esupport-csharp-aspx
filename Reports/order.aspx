<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="WebApplication1.Reports.order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style3 {
            color: teal;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table width="100%">
    <tr align="center">
        <td align="center"  >
        <h2 class="auto-style3">&nbsp;</h2>
        <br />
        <br />
        
        
            <asp:GridView ID="gvAllMyQueries" runat="server" PageSize="5" BorderColor="black" CellSpacing="4" AllowPaging="true" AllowSorting="true" RowStyle-Font-Size="15pt" RowStyle-HorizontalAlign="Left" EmptyDataText="There are no data records to display."  AutoGenerateColumns="False" Width="400px">
                <Columns>
                        <asp:BoundField DataField="orderid" SortExpression="orderid" HeaderText="ID Porosi"></asp:BoundField>
                        <asp:BoundField DataField="requestID" SortExpression="requestID" HeaderText="ID Kerkese"></asp:BoundField>
                        <asp:BoundField DataField="price" SortExpression="price" HeaderText="Cmim"></asp:BoundField>
                         <asp:BoundField DataField="qtyn" SortExpression="qtyn" HeaderText="Sasia"></asp:BoundField>
                       <asp:BoundField DataField="datefororder" SortExpression="datefororder" HeaderText="Data"></asp:BoundField>

                        
                 </Columns>
               
            </asp:GridView>
            
            
        </td>
    </tr>
    </table>
        
        <div>
        </div>
        <p>
            &nbsp;</p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
    </form>
</body>
</html>
