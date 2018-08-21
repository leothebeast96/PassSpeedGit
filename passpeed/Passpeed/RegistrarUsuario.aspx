﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarUsuario.aspx.cs" Inherits="Passpeed.RegistrarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <link rel="stylesheet" href="css/registro.css" media="all" />
    <link rel="shortcut icon" href="./IMG/ps.ico" />
    <title >PassSpeed Recursos</title>
    <script language="javascript">
    function abrirNuevo()
    {
        window.open('agregar.aspx','Nuevo Usuario','width=350,height=340,scrollbars=no,resizable=no');
        }
        function Actualizar() {
            window.open('actualizar.aspx', 'Nuevo Usuario', 'width=350,height=340,scrollbars=no,resizable=no');
        }
</script>
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
                            <li><asp:Image ImageUrl="~/IMG/bpng/archivo-pdf-google-drive.png" runat="server" /><a href="#">  Generar Reporte</a></li>
                            <li><asp:Image ImageUrl="~/IMG/bpng/002-agregar-usuario.png" runat="server" /> <a href="RegistrarUsuario.aspx">Usuarios</a></li>
                            <li><asp:Image ImageUrl="~/IMG/bpng/boton-salir-a-aplicacion(1).png" runat="server" /><a href="Login.aspx">  Salir</a></li>
                            
                        </ul>
                    </nav>
                </div>
         <div class="divbuscar">
            <asp:Button ID="btnBuscar" runat="server" Text="" CssClass="btnbuscar" OnClick="btnBuscar_Click1"  />
            <asp:TextBox runat="server" Text="" placeholder="Buscar..." id="txtBuscar" CssClass="buscar" ForeColor="white" /> 
           
        </div>
       <div class="divUsuario" >
           <asp:Label Text="" id="lblUsuario" runat="server"  />
            <asp:Button Text="" CssClass="btnSalir" ID="btnSalir" runat="server"  Height="24px" Width="24px" OnClick="btnSalir_Click"  /> 
       </div>
      </div>
    </header>
    <br />
       
    <br />
    <br />
    <br />
    <article>
        <asp:Button Text="Agregar Usuario" runat="server" ID="btnAgregar" /><br />
        <br />
         <asp:TextBox Text="" runat="server" placeholder="Matricula" ID="txtMatricula" /><asp:Button Text="Eliminar Usuario" runat="server" ID="btnEliminar" OnClick="btnEliminar_Click" /><br />
        <br />
        <asp:TextBox placeholder="Matricula" runat="server" ID="txtAct" /><asp:Button id="btnActualizar" Text="Modificar Usuario" runat="server" OnClick="btnActualizar_Click"  /><br />
        <br />
        <h1>Usuarios</h1>
        <div style="width: 100%; height: 300px; overflow: scroll"><asp:GridView ID="gvUsuario" CssClass="mGrid" runat="server" GridLines="Both" ></asp:GridView></div>
          
          
       
        
    </article>          
    </form>
  
</body>
</html>