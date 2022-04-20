<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConPartial.aspx.cs" Inherits="LinqNorth.ConPartial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Consultas con clases Partiales<br />
            <br />
            Consultar los datos completos del Employee
            <asp:Button ID="btnNombre" runat="server" OnClick="btnNombre_Click" Text="Consulta" />
            <br />
            <br />
            Consulta de datos de Order
            <asp:Button ID="btnOrder22" runat="server" OnClick="btnOrder22_Click" Text="Consultar" />
            <br />
            <br />
            <br />
            Consutlar el stock disponible
            <asp:Button ID="btnStock" runat="server" OnClick="btnStock_Click" Text="Consultar" />
        </div>
        <asp:GridView ID="gvConsulta" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
