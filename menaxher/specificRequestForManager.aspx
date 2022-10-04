<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="specificRequestForManager.aspx.cs" Inherits="WebApplication1.menaxher.specificRequestForManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     
    <title> Delego te Punonjesi</title>
    <style type="text/css">
        .auto-style1 {
            height: 91px;
        }
        .auto-style3 {
            height: 91px;
            width: 455px;
        font-weight: bold;
        vertical-align: middle;
    }
        .auto-style4 {
            margin-top: 9px;
            margin-bottom: 1px;
        }
    .auto-style5 {
        height: 132px;
        width: 455px;
        font-weight: bold;
        vertical-align: middle;
    }
    .auto-style6 {
        height: 132px;
    }
    .auto-style7 {
        height: 71px;
    }
    .auto-style8 {
        height: 57px;
        width: 455px;
    }
    .auto-style9 {
        height: 57px;
    }
    .auto-style10 {
        height: 69px;
        width: 455px;
    }
    .auto-style11 {
        height: 69px;
    }
    .auto-style12 {
        height: 58px;
        width: 455px;
        font-weight: bold;
        vertical-align: middle;
    }
    .auto-style13 {
        height: 58px;
    }
    .auto-style14 {
        height: 56px;
        width: 455px;
        font-weight: bold;
        vertical-align: middle;
    }
    .auto-style15 {
        height: 56px;
    }
    .auto-style16 {
        height: 38px;
        width: 455px;
        font-weight: bold;
        vertical-align: middle;
    }
    .auto-style17 {
        height: 38px;
    }
    .auto-style18 {
        height: 49px;
        width: 455px;
        font-weight: bold;
        vertical-align: middle;
    }
    .auto-style19 {
        height: 49px;
    }
    .auto-style20 {
        color: teal;
    }
        .auto-style21 {
            color: white;
            height: 57px;
            background-color: #0000CC;
        }
    </style>
</head>

    <body>

   
        <form id="form1" runat="server">

   
        <div>
            <table width ="100%">
            <tr align="center">
                        <td align="center" colspan="2" style="text-decoration:underline; font-size:larger; font-weight:bold; font-family:Bookman Old Style;">
                               
                                
                                     <h3 class="auto-style21">   SMART IT<asp:Menu ID="AdminMenu" BorderWidth="2" BackColor="#330033" ForeColor="#ffffff"  Font-Underline="true" Font-Size="Medium" Orientation="Horizontal" Width="100%" Height="40px" runat="server">
                                <items>
                                    <asp:MenuItem Text="Shto dokument"  Value="Shto" NavigateUrl="~/menaxher/new_file.aspx"></asp:MenuItem>

                                    <asp:MenuItem Text="Kërkesë e Re"  Value="New Request" NavigateUrl="~/menaxher/requestArrivedForManager.aspx"></asp:MenuItem>
                                    <asp:MenuItem Text="Ndrysho fjalëkalimin"  Value="New Password" NavigateUrl="~/menaxher/changePswdManager.aspx"></asp:MenuItem>
                                    <asp:MenuItem Text="Harruat fjalëkalimin"  Value="Forgot Password" NavigateUrl="~/menaxher/forgotPwdManager.aspx"></asp:MenuItem>
                                  <asp:MenuItem  Text="Log Out" Value="Log Out" NavigateUrl="~/logOut.aspx" ></asp:MenuItem>
                                </items>
                            </asp:Menu>
                       
                                     <h3 class="auto-style20">   DETAJE</h3>
                               
                               
                        </td>
            </tr>
    <tr>
            <td align="right" class="auto-style18">
                &nbsp;Kerkesa&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            
            <td align="left" class="auto-style19">
                
              
                 <asp:Label ID="lblQ"  runat="server"  Text=""></asp:Label>
             </td>
    </tr>
    
    <tr>
    
              <td align="right" class="auto-style16">
                  Kategoria&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </td>
            
            <td align="left" class="auto-style17">
                    <asp:Label ID="lblCat" runat="server" Text=""></asp:Label>
                   
            </td>
    </tr>
    
    
    
    
    <tr>
    
             <td align="right" class="auto-style14">
                 Emri&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
    
            <td align="left" class="auto-style15">
                
                    <asp:Label ID="lblFnamevalue" runat="server" Text=""></asp:Label>
                
                   
            </td>
    </tr>
    
    <tr>
    
                 <td align="right" class="auto-style12">
                        Mbiemri&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
    
            <td align="left" class="auto-style13">
                    <asp:Label ID="lblLnamevalue" runat="server" Text=""></asp:Label>
                   
            </td>
    </tr>
    
    
    
    <tr>
    
             <td align="right" class="auto-style10">
                <asp:Label ID="lblEmail" runat="server" Width="150px" Font-Bold="true" style="vertical-align: middle; text-align:left;" Text="Email-Address: "></asp:Label>
            </td>
    
    
        <td align="left" class="auto-style11">
            <asp:Label ID="lblEmailValue" runat="server" Text=""></asp:Label>
           
         </td>
   </tr>
   
   <tr>
   
             <td align="right" class="auto-style8">
                 <strong>&nbsp; Prioriteti&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </strong>
            </td>
                
            <td align="left" class="auto-style9">   
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <br />
               </td>
    </tr>

                <tr>
   
             <td align="right" class="auto-style8">
                 &nbsp; <strong>UserId&nbsp; </strong>
            </td>
                
            <td align="left" class="auto-style9">   
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                <br />
               </td>
                </tr>

    <tr>
        <td align="center" colspan="2" style="font-size:14pt;" class="auto-style7">
        <br />
        <br />
            Delego te punonjesi i departamentit perkates<br />
            <br />  
        </td>
    </tr>
    <tr align="center">
        <td align="right" class="auto-style5">
                
                Departamenti</td>
       <td align="left" class="auto-style6">
                <asp:DropDownList ID="ddlDept" runat="server" DataSourceID="dsDepartment" DataValueField="department" AutoPostBack="true" OnSelectedIndexChanged="ddlDept_SelectedIndexChanged"    > </asp:DropDownList>
                <asp:SqlDataSource ID="dsDepartment" runat="server" ConnectionString="<%$ ConnectionStrings:OHDConn%>" SelectCommand= "Select department from department" ></asp:SqlDataSource>
               
            </td>
    </tr>
    <tr align="center">
        <td align="right" class="auto-style3">
                
                Punonjesi</td>
       <td align="left" class="auto-style1">
                <asp:DropDownList ID="ddlAssignee" Width="130px"  runat="server" DataSourceID="SqlDataSource1" DataTextField="FirstName" DataValueField="FirstName" OnSelectedIndexChanged="ddlAssignee_SelectedIndexChanged"     > </asp:DropDownList>
                <asp:SqlDataSource  ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OHDConnectionString %>"
                    SelectCommand="SELECT assigneeLogin.FirstName FROM assigneeLogin  WHERE (assigneeLogin.department = @department)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlDept" Name="department" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
              
                <br />
              
       </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <strong>Koha e Delegimit te Punonjësi:<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            Afati për Përfundim:<asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <code style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 13px; vertical-align: baseline; box-sizing: inherit; background-color: transparent; white-space: inherit;">YYYY-MM-DDTHH:MM:SSS</code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <pre class="lang-sql s-code-block hljs" style="margin-top: 0px; margin-right: 0px; margin-bottom: calc(var(--s-prose-spacing) + 0.4em); margin-left: 0px; padding: 12px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: 1.30769; font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace, sans-serif; font-size: 13px; vertical-align: baseline; box-sizing: inherit; width: auto; max-height: 600px; overflow: auto; background-color: var(--highlight-bg); border-radius: 5px; color: var(--highlight-color); overflow-wrap: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">&nbsp;</pre>
            </strong>
        </td>
    </tr>
    
</table>
        </div>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSubmit" runat="server" ForeColor="floralwhite" BackColor="Green" Font-Bold="true" Text="Delego" OnClick="btnSubmit_Click" Width="319px" CssClass="auto-style4" />
            &nbsp;</p>
        </form>
  </body>
    </html>