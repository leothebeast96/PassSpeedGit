<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recursos.aspx.cs" Inherits="Passpeed.Recursos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="./recursos.css" media="all" />
    <title></title>
</head>
<body>
    <form id="frmRecursos"  runat="server">
    <header>
        <asp:Button Text="" ID="btnMenu" runat="server" OnClick="btnMenu_Click" />
        <asp:TextBox runat="server"  id="txtBuscar" CssClass="buscar" /> 
             <asp:Button ID="btnBuscar" runat="server" Text="🔎" OnClick="btnBuscar_Click" CssClass="btnbuscar" />
       
    <asp:Label Text="" id="lblUsuario" runat="server" />
        <a href="Login.aspx"  >Salir </a>  
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
