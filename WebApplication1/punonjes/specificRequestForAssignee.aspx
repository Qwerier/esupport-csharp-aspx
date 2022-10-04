<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/punonjes/punonjes.Master"CodeBehind="specificRequestForAssignee.aspx.cs" Inherits="WebApplication1.punonjes.specificRequestAssignee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
            <tr align="center">
                        <td align="center" colspan="2" style="text-decoration:underline; font-size:larger; font-weight:bold; font-family:Bookman Old Style;">
                                <br />
                                <br />
                                        Detaje nga Kërkesa<br />
                                <br />
                        </td>
            </tr>
    <tr>
            <td align="right" class="auto-style5">
                Kërkesa</td>
            
            <td align="left">
                
                <asp:TextBox ID="txtVal" Font-Bold="true" ReadOnly="true" runat="server"></asp:TextBox>
             </td>
    </tr>
    
    <tr>
    
              <td align="right" class="auto-style5">
                  Kategoria</td>
            
            <td align="left">
                    <asp:TextBox ID="txtNext" Font-Bold="true"  ReadOnly="true" runat="server"></asp:TextBox>
            </td>
    </tr>
    
    <tr>
    
             <td align="right" class="auto-style5">
                 Emri</td>
    
            <td align="left">
                
                      <asp:TextBox ID="Texfname" Font-Bold="true" ReadOnly="true" runat="server"></asp:TextBox>
            </td>
    </tr>
    
    <tr>
    
                 <td align="right" class="auto-style5">
                        Mbiemri</td>
    
            <td align="left">
                    <asp:TextBox ID="TexLname" ReadOnly="true" Font-Bold="true"  runat="server"></asp:TextBox>
            </td>
    </tr>
    
    <tr>
    
             <td align="right" style="width: 520px">
                <asp:Label ID="lblEmail" runat="server" Text="Email-Address: " style="font-weight:bold; vertical-align: middle; text-align: left;" Width="142px"></asp:Label>
            </td>
    
    
        <td align="left">
            <asp:TextBox ID="TexEmail" runat="server" Font-Bold="true" ReadOnly="true" ></asp:TextBox>
         </td>
   </tr>
   
   
    <tr>
    
             <td align="right" style="width: 520px">
                 <strong>&nbsp;Afati:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
            </td>
    
    
        <td align="left">
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
         </td>
   </tr>
   
   
   
   <tr>
   
             <td align="right" style="width: 520px">
                 <strong>Shtyrje Afati</strong></td>
                
            <td align="left">   
            
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
             </td>
    </tr>
    <tr>
        <td align="right" style="width: 520px">
            <span class="auto-style6">Zgjidhja</span><br />
        </td>
        <td align="left">
            <asp:TextBox ID="txtSolution" runat="server" Font-Bold="true" TextMode="MultiLine" MaxLength="100"></asp:TextBox>
            Zgjidhja nuk mund te lihet bosh<br />
        </td>
    </tr>
    
    <tr>
        <td align="center" colspan="2">
        <br />
            <asp:Button ID="btnSubmit" Font-Bold="true" runat="server" Text="Proceso detyrën" ForeColor="floralWhite" BackColor="Blue" OnClick="btnSubmit_Click" style="vertical-align: middle; width: 250px; text-align: center" />
        </td>
    </tr>
    
</table>
        <div>
        </div>
   </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style5 {
        vertical-align: middle;
        width: 520px;
        font-weight: bold;
    }
    .auto-style6 {
        font-weight: bold;
        vertical-align: middle;
    }
</style>
</asp:Content>
