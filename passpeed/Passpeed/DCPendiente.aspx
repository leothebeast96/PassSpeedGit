<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DCPendiente.aspx.cs" Inherits="Passpeed.DCPendiente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="stylesheet" type="text/css" href="css/agregar.css" media="all" />
    <title></title>
</head>
<body>
    <div id="cajaSuperior">
        <br />
        <center>
        <asp:Label Text="Solicitud" runat="server" ID="titulo" CssClass="tit"/>
        <asp:Label Text="" runat="server" ID="Label1" CssClass="tit"/></center>
        <br />
    </div>
    <div id="formu"> 
    <div id="formu2"><br /><br />
       <center> <form id="form1" runat="server">
         <div style="width: 100%; height: 400px; overflow: scroll"> 
             <asp:GridView ID="gvDCPendiente" CssClass="mGrid" runat="server" GridLines="Both"  ></asp:GridView>
             <asp:label text="Respuesta" runat="server" CssClass="cc"/>
           <br /><br />
            <asp:TextBox placeholder="Escribe una respuesta" runat="server" ID="txtRespuesta" /> 
            <br /><br />
            <asp:Button Text="Aceptar" runat="server" ID="btnAceptar" OnClick="btnAceptar_Click"/>
            <asp:Button Text="Rechazar" runat="server" ID="btnRechazar" OnClick="btnRechazar_Click" />
         </div>
            <br /><br /><br /><br />
            
        
    </form></center>
            
        </div>

    </div>
</body>
</html>
