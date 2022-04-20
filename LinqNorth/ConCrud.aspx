<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConCrud.aspx.cs" Inherits="LinqNorth.ConCrud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            /*================================*/&nbsp;<br />
            Crud Categories<br />
            /*================================*/<br />
            <asp:Button ID="btnListarC" runat="server" Text="Listar" OnClick="btnListarC_Click" />
            <asp:Button ID="btnAgregarC" runat="server" Text="Agregar" Width="67px" OnClick="btnAgregarC_Click" />
            <asp:Button ID="btnEliminarC" runat="server" Text="Eliminar" OnClick="btnEliminarC_Click" />
            <asp:Button ID="btnActualizarC" runat="server" Text="Actualizar" OnClick="btnActualizarC_Click" />
            <br />
            Categoria Id: <asp:TextBox ID="txtIDC" runat="server"></asp:TextBox>
            <br />
            Categoria Name:
            <asp:TextBox ID="txtNameC" runat="server"></asp:TextBox>
            <br />
            Description:
            <asp:TextBox ID="txtDescriptionC" runat="server"></asp:TextBox>
            <br />
            Picture<asp:FileUpload ID="FileCateogir" runat="server" />
            <br />
            <br />
            /*================================*/<br />
            Crud Suppliers<br />
            /*================================*/<br />
             Id Supplier
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            Nombre de Compañia
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            Nombre de Contacto
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            Titulo del Contacto
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            Direccion
            <asp:TextBox ID="TextBox7" runat="server" style="margin-top: 0px"></asp:TextBox>
            <br />
            Ciudad
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <br />
            Region
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <br />
            Codigo Postal
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            <br />
            Pais
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            <br />
            Phone
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            <br />
            Fax
            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            <br />
            <br />
            Web
            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnListarS" runat="server" Text="Listar" OnClick="btnListarS_Click" />
            <asp:Button ID="btnAgregarS" runat="server" Text="Agregar" OnClick="btnAgregarS_Click" />
            <asp:Button ID="btnEliminarS" runat="server" Text="Eliminar" OnClick="btnEliminarS_Click" />
            <asp:Button ID="btnActualizarS" runat="server" Text="Actualizar" OnClick="btnActualizarS_Click" />
            <br />
            <br />
            <br />
            /*================================*/<br />
            Crud Products<br />
            /*================================*/<br />
            Producto id&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
            <br />
        <br />
        Nombre Producto
        <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
        <br />
        <br />
        Supplier Id&nbsp;&nbsp;
        <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
        <br />
        <br />
        Categoria Id
        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
        <br />
        <br />
        Cantidad por Unidad
        <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
        <br />
        <br />
        Precio Unitario
        <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
        <br />
        <br />
        Unidades en Stock
        <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
        <br />
        <br />
        Unidades en Orden
        <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
        <br />
        <br />
        Nivel de Orden
        <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
        <br />
        <br />
        Discontinued
        <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnListarP" runat="server" Text="Listar" OnClick="btnListarP_Click" />
        <asp:Button ID="btnAgregarP" runat="server" Height="29px" Text="Agregar" Width="89px" OnClick="btnAgregarP_Click" />
        <asp:Button ID="btnEliminarP" runat="server" Text="Eliminar" OnClick="btnEliminarP_Click" />
        <asp:Button ID="btnActualizarP" runat="server" Text="Actualizar" OnClick="btnActualizarP_Click" />
        <br />
            <br />
        </div>
        <asp:GridView ID="gvConsulta" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
