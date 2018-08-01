<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="directoCarrera.aspx.cs" Inherits="Passpeed.directoCarrera" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="./Director.css" media="all" />
    <title></title>
</head>
<body>
     <header>
         <b>Graciela Isolina Martinez</b>
         <a href="./Login.aspx">Cerrar Sesion</a>
     </header>
    <form id="frmRecursos" runat="server">
        <div>
            <aside>    
                <asp:Label Text="🔎 " runat="server" />
            <input type="search" placeholder="Buscar..." value="" id="inBuscar" />    
            </aside>
            <br />
            <br />
            <h1>Solicitudes de Salida</h1>
            <article>
                <asp:GridView ID="gvDirector" runat="server"></asp:GridView>
            </article>
        </div>
    </form>
</body>
</html>
