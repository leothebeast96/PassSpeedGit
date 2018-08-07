<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroEmpleado.aspx.cs" Inherits="Passpeed.RegistroEmpleado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="Nombre" runat="server" /> 
            <asp:TextBox Text="" ID="txtNombre" runat="server" />
            <asp:Label Text="Apellidos" runat="server" /> 
            <asp:TextBox Text="" ID="txtApellidos" runat="server" />
            <br />
            <br />
            <asp:Label Text="Telefono" runat="server" /> 
            <asp:TextBox Text="" runat="server" ID="txtTel" />
            <asp:Label Text="IdPuesto" runat="server" /> 
            <asp:TextBox Text="" runat="server" ID="txtPuesto" />
            <br />
            <br />
            <asp:Label Text="IdArea" runat="server" /> 
            <asp:TextBox Text="" runat="server"  ID="txtArea"/>
            <asp:Label Text="Matricula" runat="server" /> 
            <asp:TextBox Text="" runat="server" ID="txtMatricula" />
            <br />
            <br />
            <asp:Label Text="Contraseña" runat="server" /> 
            <asp:TextBox Text="" runat="server" ID="txtContra" />

        </div>
    </form>
</body>
</html>
