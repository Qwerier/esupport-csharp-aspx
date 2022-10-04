<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="klient.Master"CodeBehind="myUnsolvedQueries.aspx.cs" Inherits="WebApplication1.klient.myUnsolvedQueries" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table width="100%">
    <tr align="center">
        <td align="center"  >
        <h2 class="auto-style3">Lista e kerkesave te pazgjidhura</h2>
        <br />
        <br />
        
        
            <asp:GridView ID="gvAllMyQueries" runat="server" PageSize="5" BorderColor="black" CellSpacing="4" AllowPaging="true" AllowSorting="true" RowStyle-Font-Size="15pt" RowStyle-HorizontalAlign="Left" EmptyDataText="There are no data records to display."  AutoGenerateColumns="False" Width="400px">
                <Columns>
                        <asp:BoundField DataField="request" SortExpression="Request" HeaderText="Request"></asp:BoundField>
                        <asp:BoundField DataField="time" SortExpression="time" HeaderText="DATE & TIME"></asp:BoundField>
                        
                        
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
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Njofto me email" BackColor="Cyan" />
        </p>
   </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style3 {
            color: teal;
            text-decoration: underline;
        }
    </style>
</asp:Content>

