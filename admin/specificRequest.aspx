<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="specificRequest.aspx.cs"  Inherits="WebApplication1.admin.specificRequest" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kerkesa</title>

    <style type="text/css">
        .auto-style1 {
            width: 474px;
        }
        .auto-style2 {
            width: 474px;
            font-weight: bold;
            vertical-align: middle;
        }
        .auto-style3 {
            height: 183px;
        }
        .auto-style4 {
            width: 1039px;
            font-weight: bold;
            vertical-align: middle;
            margin-right: 275px;
            height: 145px;
        }
        .auto-style5 {
            margin-top: 0px;
        }
        .auto-style6 {
            color: teal;
        }
        .auto-style7 {
            font-weight: bold;
            vertical-align: middle;
        }
    </style>
    </head>
<body>


    <form id="form2" runat="server" class="auto-style3">
   
        <table class="auto-style4" >
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
        
        
        <table width="100%" class="auto-style5">
            <tr align="center">
                        <td align="center" colspan="2" style="text-decoration:underline; font-size:larger; font-weight:bold; font-family:Bookman Old Style;">
                               
                                
                                     <h3 class="auto-style6">   DETAJ</h3>
                               
                               
                        </td>
            </tr>
    <tr>
            <td align="right" class="auto-style2">
                Kerkesa</td>
            
            <td align="left">
                
              
                 <asp:Label ID="lblQ"  runat="server"  Text=""></asp:Label>
             </td>
    </tr>
    
    <tr>
    
              <td align="right" class="auto-style2">
                  Kategoria</td>
            
            <td align="left">
                    <asp:Label ID="lblCat" runat="server" Text=""></asp:Label>
                   
            </td>
    </tr>
    
    
    
     <tr>
    
              <td align="right" class="auto-style2">
                  Sherbimi Kerkuar</td>
            
            <td align="left">
                    <asp:Label ID="lblReqServalue" runat="server" Text=""></asp:Label>
                   
            </td>
    </tr>
    
    
    
    
    <tr>
    
             <td align="right" class="auto-style2">
                 Emer</td>
    
            <td align="left">
                
                    <asp:Label ID="lblFnamevalue" runat="server" Text=""></asp:Label>
                
                   
            </td>
    </tr>
    
    <tr>
    
                 <td align="right" class="auto-style2">
                        Mbiemer</td>
    
            <td align="left">
                    <asp:Label ID="lblLnamevalue" runat="server" Text=""></asp:Label>
                   
            </td>
    </tr>
    
    
     <tr>
    
            <td align="left">
                    &nbsp;</td>
    </tr>
    
    
    
    <tr>
    
             <td align="right" class="auto-style1">
                &nbsp;
                <span class="auto-style7">Email</span></td>
    
    
        <td align="left">
            <asp:Label ID="lblEmailValue" runat="server" Text=""></asp:Label>
           
         </td>
   </tr>
   
   <tr>
   
             <td align="right" class="auto-style1">
                 &nbsp;</td>
                
            <td align="left">   
           <%-- <asp:TextBox ID="TexSem" ReadOnly="true" runat="server"></asp:TextBox> --%>
               </td>
    </tr>

    <tr>
        <td align="center" colspan="2" style="font-size:14pt;">
        <br />
        <br />
            Delego te menaxheri i departamentit perkates<br />  
        </td>
    </tr>
    <tr align="center">
        <td align="right" class="auto-style2">
                
                Emri i Departamentit</td>
       <td align="left">
                <asp:DropDownList ID="ddlDept" runat="server" DataSourceID="dsDepartment" DataValueField="department" AutoPostBack="true"    > </asp:DropDownList>
                <asp:SqlDataSource ID="dsDepartment" runat="server" ConnectionString="<%$ ConnectionStrings:OHDConn%>" SelectCommand= "Select department from department" ></asp:SqlDataSource>
               
            </td>
    </tr>
    <tr align="center">
        <td align="right" class="auto-style2">
                
                Emri i Menaxherit</td>
       <td align="left">
                <asp:DropDownList ID="ddlManager" Width="130px"  runat="server" DataSourceID="SqlDataSource1" DataTextField="FirstName" DataValueField="FirstName" OnSelectedIndexChanged="ddlManager_SelectedIndexChanged"  > </asp:DropDownList>
                <asp:SqlDataSource  ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OHDConnectionString %>"
                    SelectCommand="SELECT managerLogin.FirstName FROM managerLogin  WHERE (managerLogin.department = @department)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlDept" Name="department" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
              
                <br />
              
       </td>
    </tr>
        
</table>
        <div>
            <strong> Priorieti:<asp:RadioButton ID="RadioButton1" Text="I Larte" runat="server" GroupName="priority" OnCheckedChanged="RadioButton1_CheckedChanged"/>
&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" Text="I Ulet" GroupName="priority" OnCheckedChanged="RadioButton2_CheckedChanged"/>
            </strong>
        </div>
        <table width="100%">
    <tr>
        <td align="center">
            <asp:Button ID="btnSubmit" runat="server" ForeColor="floralwhite" BackColor="green" Font-Bold="true" Text="Delego detyren" OnClick="btnSubmit_Click" Width="190px" />
        &nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Njofto me email" Width="182px" BackColor="green" ForeColor="floralwhite" OnClick="Button1_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;</td>
    </tr>
    
</table>
    </form>
      
</body>
</html>
