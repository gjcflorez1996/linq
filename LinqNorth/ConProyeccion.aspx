<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConProyeccion.aspx.cs" Inherits="LinqNorth.ConProyeccion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="btnCategories" runat="server" OnClick="btnCategories_Click" Text="Categories" />
        <asp:Button ID="btnProducts" runat="server" OnClick="btnProducts_Click" Text="Produts" />
        <asp:Button ID="btnSuppliers" runat="server" OnClick="btnSuppliers_Click" Text="Suppliers" />
        <div>
            <br />
        </div>
        <asp:GridView ID="gvConsulta" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
