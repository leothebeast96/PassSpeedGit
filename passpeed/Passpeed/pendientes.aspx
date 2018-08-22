<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pendientes.aspx.cs" Inherits="Passpeed.pendientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/Director.css" media="all" />
     <link rel="shortcut icon" href="./IMG/ps.ico" />
    <script language="javascript" type="text/javascript">
    function Pendientes()
    {
        var altura =450;

        var anchura=670;

        // calculamos la posicion x e y para centrar la ventana

        var y=parseInt((window.screen.height/2)-(altura/2));

        var x=parseInt((window.screen.width/2)-(anchura/2));
        // mostramos la ventana centrada
        window.open('DCPendiente.aspx', 'Pases', 'width=' + anchura + ',height=' + altura + ',top=' + y + ',left=' + x + ',toolbar=no,location=no,status=no,menubar=no,scrollbars=no,directories=no,resizable=no');
        }
    </script>
    <title >PassSpeed Director</title>
    <style type="text/css">
        .buscar {
           
        }
        
        .arriba {
            height: 47px;
        }
        
    </style>
</head>
<body>
    <form id="frmDirector"  runat="server">
    <header>
        <div class="arriba">
            
                <div id="divmenu">
                     <input type="checkbox" id="check"/>
                     <label for="check" class="icon-menu" >
                         <asp:Image ImageUrl="~/IMG/png/ico8-menú24.png" runat="server" /></label>
                    <nav class="menu">
                        <ul>
                            <li><asp:Image ImageUrl="~/IMG/bpng/001-boton-de-inicio.png" runat="server" /> <a href="directoCarrera.aspx"> Inicio</a></li>
                             <li><asp:Image ImageUrl="~/IMG/bpng/archivo-pdf-google-drive.png" runat="server" /><a href="#">  Generar Reporte</a></li>
                            <li><asp:Image ImageUrl="~/IMG/bpng/001-error.png" runat="server" /> <a href="pendientes.aspx"> Pendientes</a></li>
                            <li><asp:Image ImageUrl="~/IMG/bpng/boton-salir-a-aplicacion(1).png" runat="server" /><a href="Login.aspx">  Salir</a></li>
                            
                        </ul>
                    </nav>
                </div>
        <div class="divbuscar">
            <asp:Button ID="btnBuscar" runat="server" Text="" CssClass="btnbuscar" OnClick="btnBuscar_Click"  />
            <asp:TextBox runat="server" Text="" placeholder="Buscar..." id="txtBuscar" CssClass="buscar" ForeColor="white" /> 
           
            </div>
       <div class="divUsuario" >
           <asp:Label Text="" id="lblUsuario" runat="server"  />
            <asp:Button Text="" CssClass="btnSalir" ID="btnSalir" runat="server"  Height="24px" Width="24px" OnClick="btnSalir_Click"   /> 
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
            <h1>Solicitudes Pendientes</h1>
                <div style="width: 100%; height: 300px; overflow: scroll"><asp:GridView ID="gvPendientes" CssClass="mGrid" runat="server" GridLines="Both" AutoGenerateSelectButton="True" OnSelectedIndexChanging="gvPendientes_SelectedIndexChanging" ></asp:GridView>  </div> 
                <br />
    </article>          
    </form>
  
</body>
</html>