using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Passpeed
{
    public partial class RegistrarUsuario : System.Web.UI.Page
    {
        public string Usuario { get; set; }


        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario = Session["Nombre"].ToString() + " " + Session["Apellidos"].ToString();
            lblUsuario.Text = Usuario.ToString();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}