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
    public partial class agregar : System.Web.UI.Page
    {
        public String Usuario {set;get;}
        public bdCon objconexion { get; set; }
        public int area { get; set; }
        public int puesto { get; set; }
        public String Nombre { set; get; }
        public String Apellidos { set; get; }
        public String Telefono { set; get; }
        public String Matricula { set; get; }
        public String Contraseña { set; get; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    LlenarForm();
                }
                catch (Exception ex)
                {

                    throw ex;
                }

            }

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            

            Nombre = txtNombre.Text;
            Apellidos = txtApellidos.Text;
            Telefono = txtTel.Text;
            Matricula = txtMatricula.Text;
            Contraseña = txtContra.Text;
            area = int.Parse(DDLArea.SelectedValue);
            puesto = int.Parse(DDLPuesto.SelectedValue);

            bdCon objconexion = new bdCon();
            string Query = string.Format("exec crearTrabajadorRH '{0}','{1}','{2}',{3},{4},'{5}','{6}'",Nombre,Apellidos,Telefono,puesto,area,Matricula,Contraseña);
            DataTable dtresultado = objconexion.GetDataTable(Query);
            

            string script = "window.close();";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "closewindows", script, true);
            

        }

        private void LlenarForm()
        {
            bdCon objconexion = new bdCon();

            DataTable dtAreas = new DataTable();
            dtAreas = objconexion.GetDataTable("EXEC llamarAreas");
            DDLArea.DataSource = dtAreas;
            DDLArea.DataValueField = "idArea";
            DDLArea.DataTextField = "Area";
            DDLArea.DataBind();

            
            
            DataTable puestos = new DataTable();
            puestos = objconexion.GetDataTable("EXEC llamarPuestos");
            DDLPuesto.DataSource = puestos;
            DDLPuesto.DataValueField = "idPuesto";
            DDLPuesto.DataTextField = "puesto";
            DDLPuesto.DataBind();

          



        }
    }
}