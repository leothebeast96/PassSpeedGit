<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="directoCarrera.aspx.cs" Inherits="Passpeed.directoCarrera" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/Director.css" media="all" />
     <link rel="shortcut icon" href="./IMG/ps.ico" />
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
        <div class="divmenu">
            <asp:Button Text="" CssClass="btnmenu" runat="server" Width="24px" Height="24px" />
            
        </div>
        <div class="divbuscar">
             <asp:Button ID="btnBuscar" runat="server" Text=""  CssClass="btnbuscar" OnClick="btnBuscar_Click1"  />
            <asp:TextBox runat="server" Text="" placeholder="Buscar..." id="txtBuscar" CssClass="buscar" ForeColor="white" /> 
           
            </div>
       <div class="divUsuario" >
            <asp:Label Text="" id="lblUsuario" runat="server"  />
            <asp:Button Text="" CssClass="btnSalir" runat="server" id="btnSalir" OnClick="btnSalir_Click"   /> 
       </div>
    </div>
    </header>
    <br />
    <aside class="lateral"></aside>
    <br />
    <br />
    <br />
    <article>
            <br />
            <br />
            <h1>Solicitudes de Salida</h1>
                <asp:GridView ID="gvDirector" CssClass="mGrid" runat="server" GridLines="Both"  ></asp:GridView>
                <br />
    </article>          
    </form>
  
</body>
</html>
