<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="conJoin.aspx.cs" Inherits="LinqNorth.conJoin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Consultas con Join<br />
            <br />
            <asp:Button ID="btnCompras3y5" runat="server" OnClick="btnCompras3y5_Click" Text="Compras de cliente 3 - 5" />
            <br />
            <br />
            <asp:Button ID="btnOrderde4y7" runat="server" OnClick="btnOrderde4y7_Click" Text="Order 4-7" />
        </div>
        <asp:GridView ID="gvConsulta" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
