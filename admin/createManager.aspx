<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="createManager.aspx.cs" Inherits="WebApplication1.admin.CreateManageraspx" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ndrysho fjalekalimin</title>
      
            <style type="text/css">
                .auto-style3 {
                    height: 244px;
                }
                .auto-style2 {
                    height: 206px;
                }
            </style>
</head>
    <body>

   <form id="form2" runat="server">
        <table width="100%"  style="color:Maroon;" >
            <tr align="right">
        <td colspan="2" align="center">
    
   
        <table  width="100%" class="auto-style2" >
        <tr align="center">
                
                    <td align="center" style="z-index: 100; left: 0px; vertical-align: middle; font-size:xx-large;
                                line-height: normal; letter-spacing: normal; background-color:navy; color:White;
                                text-align: center; text-decoration: underline; border-left-color:navy; border-bottom-color:navy; border-top-style: solid; border-top-color:navy; border-right-style: solid; border-left-style: solid; border-right-color: Maroon; border-bottom-style: solid; height: 40px;"> SMART IT
                            
                    </td>
         </tr>
         
          <tr>
            <td align="center" >
            <asp:Menu ID="AdminMenu" BorderWidth="2" BackColor="#330033" ForeColor="#ffffff"  Font-Underline="true" Font-Size="Medium" Orientation="Horizontal" Width="100%" Height="40px" runat="server">
            
            <items>
            
            
                  <asp:MenuItem Text="Krijo Punonjës"  Value="Create New Assignee" NavigateUrl="~/admin/createAssignee.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Krijo Menaxher"  Value="Create New Manager" NavigateUrl="~/admin/createManager.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Ndrysho fjalëkalimin"  Value="Change Password" NavigateUrl="~/admin/changePswdAdmin.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Mbërriti kërkesë e Re" Value="New Request Arrived" NavigateUrl="~/admin/requestArrivedForAdmin.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Kërkesë për Fjalëkalim nga Klienti" Value="Request For Forgot Password " NavigateUrl="~/admin/reqForpswd.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Kërkesë për Fjalëkalim nga Menaxheri" Value="Assignee : Request For Forgot Password" NavigateUrl="~/admin/reqForPwdManager.aspx"></asp:MenuItem>
                                  <asp:MenuItem Text="Kërkesë për Fjalëkalim nga Punonjësi" Value="Assignee : Request For Forgot Password" NavigateUrl="~/admin/reqForPwdAssignee.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Cështje e zgjidhur" Value="Processed Request" NavigateUrl="~/admin/processedQuery.aspx" ></asp:MenuItem>
                  <asp:MenuItem Text="Email" Value="email" NavigateUrl="~/admin/view_email.aspx" ></asp:MenuItem>
                 
                 
                  <asp:MenuItem Text="Log Out" Value="Log Out" NavigateUrl="~/logOut.aspx" ></asp:MenuItem>
                
            </items>
            
            </asp:Menu>
            </td>
          
            </tr>
             <tr >
            <td>
            <asp:Menu ID="Menu1" BorderWidth="1" BackColor=Ivory ForeColor="#cc3366" Font-Bold="true"  Font-Underline="true" Font-Size="14pt" Orientation="horizontal" Width="100%" Height="40px" runat="server">
            
            <items>
          
                <asp:MenuItem Text="Shiko të gjithë klientët"  Value="SEE ALL USER'S" NavigateUrl="~/admin/AllUsers.aspx"></asp:MenuItem>
             <asp:MenuItem Text="Shiko të gjithë menaxhert"  Value="See Manager" NavigateUrl="~/admin/seeManager.aspx"></asp:MenuItem>             
                <asp:MenuItem Text="Shiko të gjithë punonjësit"  Value="See Assignee's" NavigateUrl="~/admin/seeAssignee.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Shto shërbim të Ri" Value="Add New service" NavigateUrl="~/admin/addService.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Shto kategori të Re" Value="Add New Category" NavigateUrl="~/admin/addCategory.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Shto departament të Ri" Value="Add New Department" NavigateUrl="~/admin/addDepartment.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Shiko Feedback e Klientit" Value="View User FeedBaack" NavigateUrl="~/admin/feedbackForm.aspx"></asp:MenuItem>
              
            </items>
            
            </asp:Menu>
            
            </td>
                             
           </tr>
           <tr align="center">
            <td>
                          
                &nbsp;</td>
                     
             
            </tr>
            
         
        </table>
        
    <table width="100%"  style="text-align:justify"  >
    <tr align="center" >
    
                <td align="center" style="color:Teal; text-decoration:underline;" colspan="2">
                <br />
                <br />
                    KRIJO MENAXHER!<br />
                        <br />
                </td>
    </tr>
    
            <tr align="center">
            <td  style="width: 550px; background-color:Transparent; height: 26px;" align="right" valign="bottom" >
            <span style=" color:Red; font-size:10pt; font-family:Arial;">#</span>
            

            
                <asp:Label ID="lblFname" runat="server" Text="FirstName"></asp:Label>     
            </td>
            <td align="left">
                <asp:TextBox ID="txtFname"  runat="server" EnableViewState="false"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="rqfvFname" runat="server" ErrorMessage="FIRST NAME CANNOT BE NULL" ControlToValidate="txtFname"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator id="revFName" runat="server" ErrorMessage="Enter only text in first name !" ControlToValidate="txtFname" ValidationExpression= "[a-zA-Z]{1,20}"></asp:RegularExpressionValidator>
               
               
            </td>
    </tr>
    
    
                <tr align="center">
            <td align="right"><span style=" color:Red; font-size:10pt; font-family:Arial;">#</span>
            

            
                <asp:Label ID="lblLname" runat="server" Text="LastName"></asp:Label>     
            </td>
            <td align="left">
                <asp:TextBox ID="txtLname"  runat="server" EnableViewState="false"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="FIRST NAME CANNOT BE NULL" ControlToValidate="txtLname"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Enter only text in first name !" ControlToValidate="txtLname" ValidationExpression= "[a-zA-Z]{1,20}"></asp:RegularExpressionValidator>
               
               
            </td>
    </tr>
    
    
    
       
        
            <tr>       
            <td align="right">
                    
                    <asp:Label ID="lblAsiUname" runat="server" Text="User Name"></asp:Label>
                    
                    
            </td>
            
            <td>
                    <asp:TextBox ID="txtAsiUname" runat="server"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="rqfvAsiUname" runat="server" ErrorMessage="This Field Cannot Be Left Blank" ControlToValidate="txtAsiUname"></asp:RequiredFieldValidator>
                    
                    
            </td>
            
            
        </tr>
        <tr>
                            <td align="right">
                                  <asp:Label ID="lblPswd" runat="server" Text="Password"></asp:Label>
                                    
                            </td>
                            
                            <td>
                                  <asp:TextBox ID="txtPswd" TextMode="Password" runat="server"></asp:TextBox>
                                  
                                  <asp:RequiredFieldValidator ID="rqfvPswd" runat="server" ErrorMessage="This Field Cannot Be Left Blank" ControlToValidate="txtPswd"></asp:RequiredFieldValidator>
                            </td>
        
        
        </tr>
        
        <tr>
                        <td align="right">
                                  <asp:Label ID="lblCopswd" runat="server" Text="Confirm Password"></asp:Label>  
                            </td>
                            
                            <td>
                                  <asp:TextBox ID="txtCopswd" TextMode="Password" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rqfvCopswd" runat="server" ErrorMessage="This Field Cannot Be Left Blank" ControlToValidate="txtCopswd"></asp:RequiredFieldValidator>
                                  <asp:CompareValidator ID="cvPswd" runat="server" ControlToCompare="txtPswd" ControlToValidate="txtCopswd" ErrorMessage="BOTH PASSWORD'S DO NOT MATCH."  Operator="Equal" ></asp:CompareValidator>
                                  
                            </td>
        
        </tr>
        <tr >
            <td align="right">
                 <asp:Label ID="lblEmail" runat="server" Text="E-mail ID"></asp:Label>  
            </td>
            <td>
                <asp:TextBox ID="txtEmail" TextMode="singleLine" runat="server"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
        <td align="right">
            <asp:Label ID="lblDob" runat="server" Text="Date Of Birth"></asp:Label>
        </td>
        <td align="left">
        
                <asp:DropDownList ID="ddlDays" runat="server" DataSourceID="dsDay" DataValueField="days">
                </asp:DropDownList>
                 <asp:SqlDataSource ID="dsDay"  runat="server" ConnectionString="<%$ ConnectionStrings:OHDConn %>" SelectCommand="Select * from days" ></asp:SqlDataSource>
                
               
                <asp:DropDownList ID="ddlMonth" runat="server" DataSourceID="dsMonth" DataValueField="months">
                </asp:DropDownList>
                <asp:SqlDataSource ID="dsMonth" runat="server" ConnectionString="<%$ ConnectionStrings:OHDConn%>" SelectCommand= "Select * from months" ></asp:SqlDataSource>
                 
                 <asp:TextBox ID="txtYear" MaxLength="4" runat="server"></asp:TextBox>
        </td>
        
        
        
            
        </tr>
        <tr>
                <td align="right">
                
                <asp:Label ID="lblDept" runat="server" Text="Department Name"></asp:Label>
                
                </td>
        
        
            <td align="left">
                <asp:DropDownList ID="ddlDept" runat="server" DataSourceID="dsDepartment" DataValueField="department"    > </asp:DropDownList>
                <asp:SqlDataSource ID="dsDepartment" runat="server" ConnectionString="<%$ ConnectionStrings:OHDConn%>" SelectCommand= "Select department from department" ></asp:SqlDataSource>
               <%-- <asp:RequiredFieldValidator ID="rfvDept" runat="server" ControlToValidate="ddlDept" ErrorMessage="Select the department." > </asp:RequiredFieldValidator>--%>
            </td>
        </tr>
        
        <tr>
                
                <td align="right">
                <br />
                    <asp:Button ID="btnSubmit" runat="server" Font-Bold="true" Font-Size="12pt" ForeColor="floralwhite" BackColor="Green" Text="Krijo Menaxher" OnClick="btnSubmit_Click" />
                </td>
                <td align="left">
                <br />
                <asp:Button ID="btnCancel" runat="server"  Text="Cancel" Font-Size="12pt" Font-Bold="true" ForeColor="floralwhite" BackColor="Green" CausesValidation="false" OnClick="btnCancel_Click" Width="132px" />
                </td>
        </tr>
    </table>


        <div>
        </div>
  </form>
            </body>
    </html>