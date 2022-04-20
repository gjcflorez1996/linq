<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConLamba.aspx.cs" Inherits="LinqNorth.ConLamba" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Expresiones con lambad<br />
            <br />
            Products cuyo UnitsInOrder es mayor:
            <asp:TextBox ID="txtNro" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnConsultar" runat="server" OnClick="btnConsultar_Click" Text="Consulta Order" />
            <asp:Button ID="btnStock" runat="server" OnClick="btnStock_Click" Text="Consulta Stock" />
            <asp:Button ID="btnCantidad" runat="server" OnClick="btnCantidad_Click" Text="Consultar" />
        </div>
        <asp:GridView ID="gvConsulta" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
