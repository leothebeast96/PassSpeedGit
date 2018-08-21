<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="agregar.aspx.cs" Inherits="Passpeed.agregar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <asp:Label Text="Nombre" runat="server" /> 
            <asp:TextBox Text="" ID="txtNombre" runat="server" />
            <br />
            <br />
            <asp:Label Text="Apellidos" runat="server" /> 
            <asp:TextBox Text="" ID="txtApellidos" runat="server" />
            <br />
            <br />
            <asp:Label Text="Telefono" runat="server" /> 
            <asp:TextBox Text="" runat="server" ID="txtTel" />
            <br />
            <br />
            <asp:Label Text="Puesto" runat="server" /> 
            <asp:DropDownList  runat="server" ID="DDLPuesto" />
            <br />
            <br />
            <asp:Label Text="Area" runat="server" /> 
            <asp:DropDownList  runat="server"  ID="DDLArea"/>
            <br />
            <br />
            <asp:Label Text="Matricula" runat="server" /> 
            <asp:TextBox Text="" runat="server" ID="txtMatricula" />
            <br />
            <br />
            <asp:Label Text="Contraseña" runat="server" /> 
            <asp:TextBox Text="" runat="server" ID="txtContra" />
        <br />
        <br />
        <asp:Button Text="Guardar" runat="server" ID="btnGuardar" OnClick="btnGuardar_Click" />
        <br />
    </form>
</body>
</html>
