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
        <asp:Label Text="" id="lblUsuario" CssClass="Usuario" runat="server" />   
        <a id="Salir" class="Salir"  href="./Login.aspx" runat="server">
            <img src="IMG/png/003-hogar.png" height="28" width="33" /></a>
    </header>
    <form id="frmRecursos" runat="server">
        <div>
            <aside>  
                <br />
                <br />
               
                <asp:TextBox runat="server" id="txtbuscar"/>
                <asp:Button ID="btnBuscar" runat="server" Text="🔎" OnClick="btnBuscar_Click" />
            </aside>
            <br />
            <br />
            <h1>Solicitudes de Salida</h1>
            <br />
            <asp:Label Text="" ID="lblerror" runat="server" />
            <article>
                <asp:GridView ID="gvDirector" runat="server"></asp:GridView>
            </article>
        </div>
    </form>
</body>
</html>
