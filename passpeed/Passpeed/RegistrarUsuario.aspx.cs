using Pass.Libreria;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Passpeed
{   

    public partial class RegistrarUsuario : System.Web.UI.Page
    {
        public bdCon objconexion { get; set; }
        public DataTable dt4 { get; set; }
        public string Usuario { get; set; }
        public string matriculaUsr { set; get; }
        public Login objLogin { set; get; }
        public String buscar { set; get; }
        public string eliminar { set; get; }


        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                try
                {
                    UsuarioLog();
                    LlenarTabla();
                }
                catch (Exception ex)
                {

                    throw ex;
                }

            }


            btnAgregar.Attributes.Add("onClick", "abrirNuevo();");
            btnActualizar.Attributes.Add("onClick", "Actualizar();");

            Session["Actualizar"] = txtAct.Text;

        }

        private void UsuarioLog()
        {
            Login objLogin = new Login();

            Usuario = Session["Nombre"].ToString() + " " + Session["Apellidos"].ToString();
            lblUsuario.Text = Usuario.ToString();

        }
        private void LlenarTabla()
        {

            bdCon objconexion = new bdCon();

            DataTable dtResultado = new DataTable();

            String Query = String.Format("select Nombre, Apellidos, Areas.area, Puestos.Puesto, Empleados.Matricula, Contra from empleados join usuarios on" +
                " empleados.matricula = usuarios.matricula join Areas on Areas.idArea = Empleados.idArea join Puestos on Puestos.idPuesto = Empleados.Puesto");
            dtResultado = objconexion.GetDataTable(Query);

            gvUsuario.DataSource = dtResultado;
            gvUsuario.DataBind();

        }
        

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnBuscar_Click1(object sender, EventArgs e)
        {
            bdCon objconexion = new bdCon();
            DataTable dtBusqueda = new DataTable();
            buscar = txtBuscar.Text;
            String Queryb = String.Format("exec buscarEmpleadoRH '{0}'",buscar);
            dtBusqueda = objconexion.GetDataTable(Queryb);

            gvUsuario.DataSource = dtBusqueda;
            gvUsuario.DataBind();

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            bdCon objconexion = new bdCon();
            DataTable dteliminar = new DataTable();
            eliminar = txtMatricula.Text;
            String Queryb = String.Format("exec eliminarEmpleadosRH '{0}'", eliminar);
            dteliminar = objconexion.GetDataTable(Queryb);

            gvUsuario.DataSource = dteliminar;
            gvUsuario.DataBind();
            LlenarTabla();
        }

        

        protected void btnActualizar_Click(object sender, EventArgs e)
        {

        }
    }
}