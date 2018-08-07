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

            <img src="IMG/png/003-hogar.png" style="height: 25px; width: 31px" /></a>
    </header>
    <br />
    
    <nav ></nav>
    <br />
    <br />
    <article>
    <form id="frmRecursos" runat="server">
      
           
           
        <asp:TextBox runat="server"  id="txtBuscar" /> 
             <asp:Button ID="btnBuscar" runat="server" Text="🔎" OnClick="btnBuscar_Click" />    
          
            <br />
            <br />
            <h1>Solicitudes de Salida</h1>
            
                <asp:GridView ID="gvRecursos" CssClass="Tabla" runat="server" GridLines="None" AllowPaging="true" AllowSorting="true" ></asp:GridView>
                <br />
               
            
    </form>
   </article>
</body>
</html>
