<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recursos.aspx.cs" Inherits="Passpeed.Recursos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <link rel="stylesheet" href="icon/css/fontello.css"/>
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
    <form id="frmRecursos"  runat="server">
    <header>
        <div class="arriba">
            
                <div id="divmenu">
                     <input type="checkbox" id="check"/>
                     <label for="check" class="icon-menu">Menu</label>
                    <nav class="menu">
                        <ul>
                            <li>Inicio</li>
                            <li>Registrar Usuario</li>
                            <li></li>
                            <li></li>
                            <li></li>
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
            <h1>Solicitudes de Salida</h1>
                <asp:GridView ID="gvRecursos" CssClass="mGrid" runat="server" GridLines="Both"  ></asp:GridView>
                <br />
    </article>          
    </form>
  
</body>
</html>
