<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="requests.aspx.cs" Inherits="WebApplication1.Reports.requests" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        
            <asp:GridView ID="gvAllMyQueries" runat="server" PageSize="5" BorderColor="black" CellSpacing="4" AllowPaging="true" AllowSorting="true" RowStyle-Font-Size="15pt" RowStyle-HorizontalAlign="Left" EmptyDataText="There are no data records to display."  AutoGenerateColumns="False" Width="400px">
                <Columns>
                        <asp:BoundField DataField="request" SortExpression="Request" HeaderText="Request"></asp:BoundField>
                        <asp:BoundField DataField="time" SortExpression="time" HeaderText="DATE & TIME"></asp:BoundField>
                         <asp:BoundField DataField="datesub" SortExpression="datesub" HeaderText="Data Dorezimit"></asp:BoundField>
                        <asp:BoundField DataField="deadline" SortExpression="deadline" HeaderText="Afati"></asp:BoundField>
                         <asp:BoundField DataField="qtyn" SortExpression="qtyn" HeaderText="Sasia"></asp:BoundField>
                        <asp:BoundField DataField="price" SortExpression="price" HeaderText="Cmimi"></asp:BoundField>
                        
                        
                 </Columns>
               
            </asp:GridView>
            
            
        <div>
        </div>
    </form>
</body>
</html>
