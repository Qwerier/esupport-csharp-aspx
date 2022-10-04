<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master.Master"CodeBehind="createNewAccount.aspx.cs" Inherits="WebApplication1.createNewAccount" %>

  <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      

    <table width="100%" style="color:Blue;">
    <tr>
   
   
    
    
    
        <td align="center"  style="text-decoration:underline;font-style:normal; font-weight:bold; font-size :larger; color:Green;">
        
                
        <h2>        CREATE A NEW ACCOUNT NOW!!!!</h2>
                <br />
                <br />
                
        </td>
        
        
        
    </tr>
    
    
    
    <tr align="center">
        <td style="background-color:Transparent;" align="left" valign="top">
        <span style="font-size:14pt; font-weight:bold; text-align:justify; color:Teal; font-family:Arial;">Fields Marked with &nbsp;<span style=" color:Red; font-weight:bold; font-size:14pt;"><span style="font-size:10pt; font-family:Arial;" class="auto-style1">#</span>
            
                &nbsp; </span>are mandatory as this information is necessary for successfull Account Creation</span>
       
                
                
         </td>
    
       
    
    </tr>
    </table>

    <table>
      
    
    <tr align="center">
            <td align="right" style="width: 337px"><span style="font-size:10pt; font-family:Arial;" class="auto-style1">#</span>&nbsp;
            

            
                <asp:Label ID="lblFname" runat="server" Text="FIRSTNAME"></asp:Label>     
            </td>
            <td align="left">
                <asp:TextBox ID="txtFname"  runat="server" EnableViewState="false"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="rqfvFname" runat="server" ErrorMessage="FIRST NAME CANNOT BE NULL" ControlToValidate="txtFname"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator id="revFName" runat="server" ErrorMessage="Enter only text in first name !" ControlToValidate="txtFname" ValidationExpression= "[a-zA-Z]{1,20}"></asp:RegularExpressionValidator>
               
               
            </td>
    </tr>
    <tr align="center">
            <td align="right" style="width: 337px"><span style="font-size:10pt; font-family:Arial;" class="auto-style1">#</span>&nbsp;
            
                <asp:Label ID="lblLname" runat="server" Text="LASTNAME" Height="19px"></asp:Label>     
            </td>
            <td align="left">
                <asp:TextBox ID="txtLname"  runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqfvLname" runat="server" ErrorMessage="LAST NAME CANNOT BE LEFT BLANK" ControlToValidate="txtLname"></asp:RequiredFieldValidator>
                <asp:CompareValidator  runat="server" ErrorMessage="Enter only text in last name." ID="cvLname" ControlToValidate="txtLname" Operator="DataTypeCheck" Type="String"></asp:CompareValidator>
            </td>
    </tr>
    <tr align="center">
            <td align="right" style="width: 337px"><span style="font-size:10pt; font-family:Arial;" class="auto-style1">#</span>
            
                            
                <asp:Label ID="lblGender" runat="server" Text="GENDER" Height="19px"></asp:Label>     
            </td>
            
            <td align="left">
                    <asp:RadioButton  Text="MALE" GroupName="rbtGender" ID="rbtMale" runat="server" />
                    <asp:RadioButton  Text="FEMALE" GroupName="rbtGender" ID="rbtFemale" runat="server" />
            </td>
    </tr>
    <tr align="center">
            <td align="right" style="width: 337px"><span style="font-size:10pt; font-family:Arial;" class="auto-style1">#</span>&nbsp;
            
                <asp:Label ID="lblUname" runat="server" Text="USERNAME" Height="19px"></asp:Label>     
            </td>
            <td align="left">
                <asp:TextBox ID="txtUname"  runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqfvUname" runat="server" ErrorMessage="THIS FIELD CANNOT BE LEFT BLANK" ControlToValidate="txtUname"></asp:RequiredFieldValidator>
                
            </td>
    </tr>
    <tr align="center">
            <td align="right" style="width: 337px"><span style="font-size:10pt; font-family:Arial;" class="auto-style1">#</span>&nbsp;
            
                <asp:Label ID="lblPassword" runat="server" Text="PASSWORD"></asp:Label>     
            </td>
            <td align="left">
                <asp:TextBox ID="txtPassword"  TextMode="Password"  MaxLength="15"  runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqfvPswd" runat="server" ErrorMessage="PASSWORD FIELD CANNOT BE BLANK" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
            
                    <asp:CompareValidator ID="cvPswd" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRpswd" ErrorMessage="BOTH PASSWORD'S DO NOT MATCH."  Operator="Equal" ></asp:CompareValidator>
            </td>
    </tr>
    <tr align="center">
            <td align="right" style="width: 337px"><span style="font-size:10pt; font-family:Arial;" class="auto-style1">#</span>&nbsp;
            
                <asp:Label ID="lblRPswd" runat="server" Text="RETYPE PASSWORD"></asp:Label>     
            </td>
            <td align="left">
                <asp:TextBox ID="txtRpswd"  TextMode="Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqfv" runat="server" ErrorMessage="CONFIRM PASSWORD" ControlToValidate="txtRpswd"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr align="center">
            <td align="right" style="width: 337px"><span style="font-size:10pt; font-family:Arial;" class="auto-style1">#</span>&nbsp;
            
                <asp:Label ID="lblEmail" runat="server" Text="EMAIL ADDRESS"></asp:Label>     
            </td>
            <td align="left">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="ENTER VALID EMAIL" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="rgvEmail" runat="server" ErrorMessage="EMAIL-ID IS INVALID" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
    </tr>
    
    
    
    <tr align="center">
            <td align="right" style="width: 337px"><span style="font-size:10pt; font-family:Arial;" class="auto-style1">#</span>
            
                <asp:Label ID="lblAdd" runat="server" Text="ADDRESS"></asp:Label>     
            </td>
            <td align="left">
                <asp:TextBox ID="txtAdd"  TextMode="MultiLine" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqfvAddress" runat="server" ErrorMessage="ADDRESS FIELD SHOULD NOT BE NULL" ControlToValidate="txtAdd"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr align="center">
            <td align="right" style="width: 337px"><span style="font-size:10pt; font-family:Arial;" class="auto-style1">#</span>&nbsp;
            
                <asp:Label ID="lblMobile" runat="server" Text="MOBILE NO"></asp:Label>     
            </td>
            <td align="left">
                <asp:TextBox ID="txtMob" runat="server" TextMode="SingleLine" ></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="rqfvMob" runat="server" ErrorMessage="PLZ ENTER YOUR MOBILE NUMBER" ControlToValidate="txtMob"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="rgvMob" runat="server" ErrorMessage="MOBILE NO IS  NOT VALID" ControlToValidate="txtMob" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                
            </td>
    </tr>
    <tr align="center">
            <td align="right" style="width: 337px; height: 46px"><span style="font-size:10pt; font-family:Arial;" class="auto-style1">#</span>
            
                <asp:Label ID="lblDob" runat="server" Text="DATE OF BIRTH"></asp:Label>     
            </td>
            <td align="left" style="height: 46px">
            
                    <asp:DropDownList ID="ddlDays"  runat="server" DataSourceID="dsDay" DataValueField="days">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="dsDay"  runat="server" ConnectionString="<%$ ConnectionStrings:OHDConn %>" SelectCommand="Select * from days" ></asp:SqlDataSource>
                    <asp:DropDownList ID="ddlMonth"   runat="server" DataSourceID="dsMonth" DataValueField="months">
                    </asp:DropDownList> 
                    <asp:SqlDataSource ID="dsMonth" runat="server" ConnectionString="<%$ ConnectionStrings:OHDConn%>" SelectCommand= "Select * from months" ></asp:SqlDataSource>
                    
                    <asp:TextBox ID="txtYear" runat="server" MaxLength="4" Width="35" Text="year" > </asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqfvYear" runat="server" ErrorMessage="YEAR FIELD CANNOT BE LEFT BLANK" ControlToValidate="txtYear"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="rgvYear" runat="server" ErrorMessage="ENTER ONLY DIGITS FOR YEAR" ValidationExpression="\d{4}" ControlToValidate="txtYear"></asp:RegularExpressionValidator>
                    <asp:RangeValidator ID="rngYear" runat="server" ErrorMessage="Enter Year between 1900 and 2000 " ControlToValidate="txtYear" MaximumValue="2000" MinimumValue="1900"></asp:RangeValidator>
                    
                    
            </td>
    </tr>
    <tr align="center">
            <td align="right" style="width: 337px"><span style="font-size:10pt; font-family:Arial;" class="auto-style1">#</span>&nbsp;
            
                I ACCEPT:    
            </td>
           
            <td align="left">
                <asp:HyperLink ID="hyplTnC" runat="server" ForeColor="blue" NavigateUrl="~/terms.aspx">ALL TERMS AND CONDITIONS</asp:HyperLink>    
                <asp:RadioButton ID="rbtAccept" Text="YES" GroupName="chkform" runat="server" /> 
                <asp:RadioButton ID="rbtNotAccept" Text="NO"  GroupName="chkform" runat="server" /> 
            </td>
    </tr>
    
    <tr align="center">
    
    <td align="right" style="width: 337px">
        <asp:Button ID="btnSubmit" runat="server" Font-Bold="true" ForeColor="floralwhite"  BackColor="Green" Text="SUBMIT" OnClick="btnSubmit_Click1" CssClass="auto-style2" />   
        <asp:Button ID="btnCancel" runat="server" ForeColor="floralwhite"  Font-Bold="true" BackColor="green" Text="CANCEL" OnClick="btnCancel_Click" CausesValidation="false" />
    </td>
      
    </tr>
    <%--<tr align="center">
        <td align="right" style="width: 317px">
        
            <asp:ValidationSummary ID="ValidationSummary1" DisplayMode="BulletList" BackColor="transparent" runat="server" HeaderText="THE FOLLOWING ERRORS NEED TO BE SOLVED" />     
                
        </td>
    </tr>--%>
    
    
    
    
</table>
        <div>
        </div>
   </asp:Content>