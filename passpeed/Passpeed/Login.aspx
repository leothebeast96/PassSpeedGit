<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Passpeed.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="./login.css" media="all" />
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC" rel="stylesheet"/> 
     <link rel="shortcut icon" href="./IMG/ps.ico" />
    <title >PassSpeed</title>
 
</head>
<body >
    <div id="bg"></div>
     <aside>   
        <asp:Image ImageUrl="./IMG/passcell.png" runat="server" style="height: 604px; width: 404px" CssClass="cel"  />
     </aside>
     <article >
        <form id="login" runat="server">
            <asp:Image ImageUrl="./IMG/pass2.png" runat="server" Height="161px" Width="235px" />
            <br />
            <asp:TextBox ID="txtUsuario" runat="server" placeholder="Ingresa Tu Usuario..." />
            <br />
            <br />
            <asp:TextBox id="txtContraseña" CssClass="password" runat="server" TextMode="Password" placeholder="Ingresa tu Contraseña..." />
            <br />
            <br />
            <asp:Label Text="" runat="server" ID="lblError" ForeColor="Salmon" />  <br />         
            <asp:Button Text="Iniciar Sesion" runat="server" ID="btniniciar" CssClass="logear" OnClick="btniniciar_Click"  />
            <br />
            <br />
        </form>
        <p > Disponible en</p>
        <img src="./IMG/logo google.png" style="height: 35px; width: 117px" class="logo_google" />
    </article>
    <footer>
        
    </footer>
    <p>
   </p>

</body>
</html>
