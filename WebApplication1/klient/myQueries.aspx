<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="klient.Master"CodeBehind="myQueries.aspx.cs" Inherits="WebApplication1.klient.myQueries" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    <table width="100%">
    <tr align="center">
        <td align="center"  >
        <h2 class="auto-style1">KERKESAT E ZGJIDHURA</h2>
            &nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            Data e Porosisë:&nbsp;
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <br />
            <br />
        <table width="100%">
    <tr align="center">
        <td align="center"  >
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" ShowFooter="True">
                       <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="requestID" HeaderText="ID" />
                    <asp:BoundField DataField="request" HeaderText="Kerkesa" />
                    <asp:BoundField DataField="solution" HeaderText="Zgjidhja" />
                    <asp:BoundField DataField="qtyn" HeaderText="Nr.Sherbimeve" />
                    <asp:BoundField DataField="price" HeaderText="Cmimi" />
                    <asp:BoundField DataField="totalprice" HeaderText="Cmimi Total" />
                </Columns>
                       <EditRowStyle BackColor="#2461BF" />
                       <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                       <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                       <RowStyle BackColor="#EFF3FB" />
                       <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                       <SortedAscendingCellStyle BackColor="#F5F7FB" />
                       <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                       <SortedDescendingCellStyle BackColor="#E9EBEF" />
                       <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
                   <br />
                   <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Fatura" BackColor="Cyan" />
        
        <br />
        <br />
        
        
        </td>
    </tr>
    </table>
        
            <br />
            <br />
            <br />
            <br />
            <br />
        <br />
        <br />
        
        
        
        </td>
    </tr>
    </table>
        
    
        <div>
        </div>
 </asp:Content>
