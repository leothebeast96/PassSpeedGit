<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recursos.aspx.cs" Inherits="Passpeed.Recursos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="./recursos.css" media="all" />
    <title></title>
</head>
<body>
    <header>
     
        <asp:Label Text="" id="lblUsuario" CssClass="Usuario" runat="server" />   
        <a id="Salir" class="Salir"  href="./Login.aspx" runat="server">
            <img src="IMG/png/003-hogar.png" height="28" width="33" /></a>
    </header>
    <form id="frmRecursos" runat="server">
      
           
            <aside>   
                <br />
                <br />
                
            <input type="search" placeholder="Buscar..."  value="" id="inBuscar" /> 
             <asp:Button ID="btnBuscar" runat="server" Text="🔎" OnClick="btnBuscar_Click" />    
            </aside>
            <br />
            <br />
            <h1>Solicitudes de Salida</h1>
            <article>
                <asp:GridView ID="gvRecursos" CssClass="Tabla" runat="server"></asp:GridView>
                <br />
               
            </article>
    </form>
</body>
</html>
