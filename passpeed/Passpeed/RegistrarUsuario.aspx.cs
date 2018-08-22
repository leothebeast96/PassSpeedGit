using Pass.Libreria;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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
        public String matriculaEdit { get; set; }


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

            String Query = String.Format("exec consultarEmpleadosRH");
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
        

        protected void gvUsuario_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
             
            bdCon objconexion = new bdCon();
            DataTable dteliminar = new DataTable();
            eliminar = gvUsuario.Rows[e.RowIndex].Cells[4].Text;
            String Queryb = String.Format("exec eliminarEmpleadosRH '{0}'", eliminar);
            dteliminar = objconexion.GetDataTable(Queryb);

            gvUsuario.DataSource = dteliminar;
            gvUsuario.DataBind();
            LlenarTabla();
        }

        protected void gvUsuario_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            gvUsuario.Attributes.Add("onClick", "Actualizar();");
            matriculaEdit = gvUsuario.Rows[e.NewSelectedIndex].Cells[5].Text;
            Session["Actualizar"] = matriculaEdit.ToString();
            
            
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            
        }
        
    }
}