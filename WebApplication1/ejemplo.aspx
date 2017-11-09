<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ejemplo.aspx.vb" Inherits="WebApplication1.ejemplo" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        table
        {
            border: 1px solid #ccc;
            border-collapse: collapse;
        }
        table th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }
        table th, table td
        {
            padding: 5px;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="Button1" Text="Upload" runat="server" OnClick="UploadFile" />
    <hr />
    <asp:GridView ID="gvImages" runat="server" AutoGenerateColumns="False" OnRowDataBound="OnRowDataBound" Width="867px">
        <Columns>
            <asp:BoundField HeaderText="provincia" DataField="provincia" />
            <asp:BoundField HeaderText="Cuarto sala" DataField="cuartosala" />
            <asp:BoundField DataField="precio" HeaderText="precio" />
            <asp:BoundField DataField="utilidades" HeaderText="utilidades" />
            <asp:TemplateField HeaderText = "foto1">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="80" Width="80" />
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText = "foto2">
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" Height="80" Width="80" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>

