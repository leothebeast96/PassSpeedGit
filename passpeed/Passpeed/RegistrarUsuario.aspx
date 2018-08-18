<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarUsuario.aspx.cs" Inherits="Passpeed.RegistrarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <link rel="stylesheet" href="css/recursos.css" media="all" />
    <link rel="shortcut icon" href="./IMG/ps.ico" />
    <title >PassSpeed Recursos</title>
    <style type="text/css">
       
        
        .arriba {
            height: 47px;
        }
        
    </style>
</head>
<body>
    <form id="frmUsuarios"  runat="server">
    <header>
        <div class="arriba">
            
                <div id="divmenu">
                     <input type="checkbox" id="check"/>
                     <label for="check" class="icon-menu" >
                         <asp:Image ImageUrl="~/IMG/png/ico8-menú24.png" runat="server" /></label>
                    <nav class="menu">
                        <ul>
                            <li><asp:Image ImageUrl="~/IMG/bpng/001-boton-de-inicio.png" runat="server" /> <a href="Recursos.aspx"> Inicio</a></li>
                            <li><asp:Image ImageUrl="~/IMG/bpng/002-agregar-usuario.png" runat="server" /> <a href="#"> Agregar Usuario</a></li>
                            <li><asp:Image ImageUrl="~/IMG/bpng/engranaje-boton-ajustes.png" runat="server" /> <a href="Login.aspx">  Modificar Usuario</a></li>
                            <li><asp:Image ImageUrl="~/IMG/bpng/004-papelera.png" runat="server" />   <a href="#">  Dar de Baja Usuario</a></li>
                            <li><asp:Image ImageUrl="~/IMG/bpng/boton-salir-a-aplicacion(1).png" runat="server" /><a href="Login.aspx">  Salir</a></li>
                            
                        </ul>
                    </nav>
                </div>
        <div class="divbuscar">
            <asp:Button ID="btnBuscar" runat="server" Text="" CssClass="btnbuscar" OnClick="btnBuscar_Click" />
            <asp:TextBox runat="server" Text="" placeholder="Buscar..." id="txtBuscar" CssClass="buscar" ForeColor="white" /> 
           
            </div>
       <div class="divUsuario" >
           <asp:Label Text="" id="lblUsuario" runat="server"  />
            <asp:Button Text="" CssClass="btnSalir" ID="btnSalir" runat="server" OnClick="btnSalir_Click" Height="24px" Width="24px"  /> 
       </div>
      </div>
    </header>
    <br />
       
    <br />
    <br />
    <br />
    <article>
            <br />
            <br />
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
    </article>          
    </form>
  
</body>
</html>