<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="actualizar.aspx.cs" Inherits="Passpeed.actualizar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <link rel="stylesheet" type="text/css" href="css/agregar.css" media="all" />
    <title></title>
</head>
<body>
     <div id="cajaSuperior"><br />
        <asp:Label Text="Actualizar" runat="server" ID="titulo" />
    <br /><br />

    </div>

    <div id="formu"> 
    <div id="formu2"><br /><br />

    <form id="form1" runat="server">
        <center>
         <asp:Label Text="Nombre" runat="server" /> 
            <asp:TextBox Text="" ID="txtNombre" runat="server" CssClass="cc" />
        <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                ControlToValidate="txtNombre"
                ErrorMessage="Nombre Necesario"
                ForeColor="Red">
           </asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label Text="Apellidos" runat="server" /> 
            <asp:TextBox Text="" ID="txtApellidos" runat="server" CssClass="cc" />
            <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
                ControlToValidate="txtApellidos"
                ErrorMessage="Apellidos Necesarios"
                ForeColor="Red">
           </asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label Text="Telefono" runat="server" /> 
            <asp:TextBox Text="" runat="server" ID="txtTel"  CssClass="cc" />
            <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
                ControlToValidate="txtTel"
                ErrorMessage="Telefono Necesario"
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label Text="Puesto" runat="server" /> 
            <asp:DropDownList  runat="server" ID="DDLPuesto"  CssClass="cc" />
            <br />
            <br />
            <asp:Label Text="Area" runat="server" CssClass="cc" /> 
            <asp:DropDownList  runat="server"  ID="DDLArea"/>
            <br />
            <br />
            <asp:Label Text="Codigo de Empleado" runat="server" /> 
            <asp:TextBox Text="" runat="server" ID="txtMatricula" CssClass="cc" />
            <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
                ControlToValidate="txtMatricula"
                ErrorMessage="Matricula Necesaria"
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label Text="Contraseña" runat="server"  /> 
            <asp:TextBox Text="" runat="server" TextMode="Password" ID="txtContra" CssClass="cc" />
            <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server"
                ControlToValidate="txtContra"
                ErrorMessage="Contraseña Necesaria"
                ForeColor="Red">
            </asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button Text="Actualizar" runat="server" ID="btnActualizar" OnClick="btnActualizar_Click"  />
        <br />
      </center>
    </form>
        </div>
    </div>
</body>
</html>
