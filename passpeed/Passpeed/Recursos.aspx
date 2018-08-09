<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recursos.aspx.cs" Inherits="Passpeed.Recursos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="./recursos.css" media="all" />
    <title></title>
    <style type="text/css">
        .buscar {
            margin-left: 0px;
        }
        .divmenu {
            width: 24px;
        }
    </style>
</head>
<body>
    <form id="frmRecursos"  runat="server">
    <header>
        <div class="divmenu">
            <asp:Button Text="" CssClass="btnmenu" runat="server" Width="24px" Height="24px" />
        </div>
        <div style="width: 612px; margin-left: 290px; margin-top: 0px;" class="divbuscar">
            <asp:TextBox runat="server"  id="txtBuscar" CssClass="buscar" /> 
            <asp:Button ID="btnBuscar" runat="server" Text="🔎" OnClick="btnBuscar_Click" CssClass="btnbuscar" />
       </div>
       <div style="width: 217px; margin-left: 688px" class="divUsuario">
            <asp:Label Text="" id="lblUsuario" runat="server" />
            <a href="Login.aspx"  >Salir </a>  

       </div>
        

    </header>
    <br />
    <br />
    <aside class="lateral"></aside>
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
