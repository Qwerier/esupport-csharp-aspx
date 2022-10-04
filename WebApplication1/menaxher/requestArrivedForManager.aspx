<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="requestArrivedForManager.aspx.cs" Inherits="WebApplication1.menaxher.requestArrivedForManager" %>
  <html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <style type="text/css">
        .auto-style1 {
            margin-top: 2px;
        }
          .auto-style6 {
              z-index: 100;
              left: 0px;
              height: 40px;
          }

        .auto-style2 {
            font-weight: bold;
            font-size: 14pt;
            color: #D2691E;
        }
    </style>
    <title> Kerkesa </title>
    </head>
<body>


<form id="form1" runat="server">
        <table width="100%">
            <tr>
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
            <tr align="center">
                        <td align="center" style="text-decoration:underline; font-size:15pt; font-weight:bold; color:Green;">
                        
                                    KERKESE E RE<br />
                                    <br />
                        </td>
                        <td align="center" style="text-decoration:underline; font-size:15pt; font-weight:bold; color:Green;">
                        
                                    &nbsp;</td>
            </tr>
            <tr>
        <td align="center">
            <asp:GridView ID="gvRequest" BorderStyle="Solid" BorderColor="Black" AllowSorting="True" runat="server" AllowPaging="True" PageSize="5"  DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."  AutoGenerateColumns="False" Font-Bold="True" Font-Names="Consolas" Font-Size="Larger" ForeColor="Maroon" OnSelectedIndexChanged="gvRequest_SelectedIndexChanged" CssClass="auto-style1" Height="280px" Width="593px">
                <Columns><asp:HyperLinkField SortExpression="request" ItemStyle-HorizontalAlign="Left"   HeaderText="Request" DataNavigateUrlFields="requestID,userID" DataNavigateUrlFormatString="specificRequestForManager.aspx?requestID={0}&amp;userID={1}"  DataTextField="requestID" >
<ItemStyle HorizontalAlign="Left"></ItemStyle>
                    </asp:HyperLinkField>
                        <asp:BoundField ItemStyle-HorizontalAlign="Left" DataField="requestCategory" SortExpression="requestCategory" HeaderText="Request Categoty">
<ItemStyle HorizontalAlign="Left"></ItemStyle>
                    </asp:BoundField>
                        <asp:BoundField ItemStyle-HorizontalAlign="Left" DataField="time" SortExpression="time" HeaderText="Request Time">
<ItemStyle HorizontalAlign="Left"></ItemStyle>
                   </asp:BoundField>
                  	              
<asp:BoundField ItemStyle-HorizontalAlign="Left" DataField="priority" SortExpression="priority" HeaderText="Prioriteti">
<ItemStyle HorizontalAlign="Left"></ItemStyle>
                   </asp:BoundField>



                 </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT * FROM [request]  where solution is null order by time desc" ConnectionString="<%$ ConnectionStrings:OHDConnectionString1 %>" ProviderName="<%$ ConnectionStrings:OHDConnectionString1.ProviderName %>" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
            
        </td>
        <td align="center">
            &nbsp;</td>
            </tr>
    <tr align="center">
        <td align="center">
            &nbsp;</td>
        <td align="center">
            &nbsp;</td>
    </tr>
    
</table>

        <div>
        </div>
   
</form>
    </body>
      </html>
