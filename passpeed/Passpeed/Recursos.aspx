<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recursos.aspx.cs" Inherits="Passpeed.Recursos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="./recursos.css" media="all" />
    <title></title>
    <style type="text/css">
        .buscar {
           
        }
        
        .arriba {
            height: 47px;
        }
        
    </style>
</head>
<body>
    <form id="frmRecursos"  runat="server">
    <header>
        <div class="arriba">
        <div class="divmenu">
            <asp:Button Text="" CssClass="btnmenu" runat="server" Width="24px" Height="24px" />
            
        </div>
        <div class="divbuscar">
             <asp:Button ID="btnBuscar" runat="server" Text="" OnClick="btnBuscar_Click" CssClass="btnbuscar" />
            <asp:TextBox runat="server" Text="" placeholder="Buscar..." id="txtBuscar" CssClass="buscar" ForeColor="white" /> 
           
            </div>
       <div class="divUsuario" >
           <a href="" Text="" id="lblUsuario" runat="server"  />
            <asp:Button Text="" CssClass="btnSalir" runat="server" OnClick="Unnamed2_Click" /> 
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
                <asp:GridView ID="gvRecursos" CssClass="mGrid" runat="server" GridLines="Both"  ></asp:GridView>
                <br />
    </article>          
    </form>
  
</body>
</html>
