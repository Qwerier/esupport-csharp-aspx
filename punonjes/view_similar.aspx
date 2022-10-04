<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_similar.aspx.cs" Inherits="WebApplication1.punonjes.view_similar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="Stylesheet" href="Styles/bootstrap.min.css" style="" />  
        <link rel="Stylesheet" href="Styles/bootstrap.css" />  
    <title>Dokumente</title>
</head>

  <body>  
    <form id="form1" runat="server">  
    <div class="container">  
        <hr />  
        <asp:GridView ID="GridView1" runat="server"   
              
            AutoGenerateColumns="false" CssClass="table">  
            <Columns>  
                <asp:BoundField DataField="Name" HeaderText="Emri i File" />  
                <asp:TemplateField ItemStyle-HorizontalAlign="Center">  
                    <ItemTemplate>  
                        <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile"  
                            CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>  
                    </ItemTemplate>  
                </asp:TemplateField>  
            </Columns>  
        </asp:GridView>  
    </div>  
    </form>  
</body>  
</html>  
    
        
    


