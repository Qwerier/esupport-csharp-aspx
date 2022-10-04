<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addDepartment.aspx.cs" Inherits="WebApplication1.admin.addDepartment" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Departament i Ri</title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
            margin-top: 64px;
        }
        .auto-style2 {
            color: teal;
            text-decoration: underline;
        }
        .auto-style3 {
            font-weight: bold;
            font-size: 14pt;
            color: #D2691E;
        }
    </style>
</head>
<body>

    
    <form id="form1" runat="server">
        <table  width="100%" >
        <tr align="center">
                
                    <td align="center" style="z-index: 100; left: 0px; vertical-align: middle; font-size:xx-large;
                                line-height: normal; letter-spacing: normal; background-color:navy; color:White;
                                text-align: center; text-decoration: underline; border-left-color:navy; border-bottom-color:navy; border-top-style: solid; border-top-color:navy; border-right-style: solid; border-left-style: solid; border-right-color: Maroon; border-bottom-style: solid; height: 40px;"> SMART IT
                            
                    </td>
         </tr>
        
            
            
           
          <tr>
            <td align="center" >
                &nbsp;</td>
        
            </tr>
               </table>
    <table width="100%" class="auto-style1">
            
            <tr align="center">
                 <td align="center" style="height: 100px">
                        
                                  <h3 class="auto-style2">Shto departament</h3>
                                
                                    
                        </td>
            </tr>
            <tr>
                <td align="center">
                    <span class="auto-style3">Departament i Ri</span><asp:TextBox runat="server" ID="txtNewDept" TextMode="SingleLine" MaxLength="20" OnTextChanged="txtNewCategory_TextChanged" ></asp:TextBox>
                </td>
            </tr>
            <tr align="center">
                <td>
                    <asp:Button runat="server" id="btnAdd" ForeColor="floralwhite" BackColor="crimson" Text="Shto departament" OnClick="btnAdd_Click" />
                </td>
            </tr>
            <tr>
                        <td align="center" style="height: 100px">
                        
                                  <h3 class="auto-style2">Departamentet</h3>
                                    
                                    
                        </td>
            </tr>
            
    <tr>
        
        <td align="center">
            <asp:GridView ID="gvDepartment" BorderStyle="Solid" BorderColor="black" CellSpacing="4"  runat="server" AllowPaging="true" PageSize="5"  DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."  AutoGenerateColumns="False" Font-Bold="True" Font-Names="Consolas" Font-Size="Larger" ForeColor="Maroon" PageIndex="0" HorizontalAlign="NotSet">
                <Columns><asp:HyperLinkField     DataNavigateUrlFields="department" DataNavigateUrlFormatString="deleteDept.aspx?department={0}" Text="Fshi"   />
                        <asp:BoundField DataField="department" SortExpression="department" HeaderText="Departament"></asp:BoundField>
                        
                 </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT * FROM [department] order by department" ConnectionString="<%$ ConnectionStrings:OHDConnectionString1 %>" ProviderName="<%$ ConnectionStrings:OHDConnectionString1.ProviderName %>"></asp:SqlDataSource>
            
        </td>
    </tr>
    
</table>
        <div>
        </div>
    </form>
    </body>
    </html>

