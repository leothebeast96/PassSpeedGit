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
    public partial class actualizar : System.Web.UI.Page
    {
        public String MatAct { set; get; }
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
                    MatAct = Session["Actualizar"].ToString();
                    LlenarForm();
                }
                catch (Exception ex)
                {

                    throw ex;
                }

            }
           


        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            Nombre = txtNombre.Text;
            Apellidos = txtApellidos.Text;
            Telefono = txtTel.Text;
            Matricula = txtMatricula.Text;
            Contraseña = txtContra.Text;
            area = int.Parse(DDLArea.SelectedValue);
            puesto = int.Parse(DDLPuesto.SelectedValue);

            bdCon objconexion = new bdCon();
            string Query = string.Format("exec modificarEmplea2RH '{0}','{1}','{2}',{3},{4},'{5}','{6}'", Nombre, Apellidos, Telefono, puesto, area, Matricula, Contraseña);
            DataTable dtresultado = objconexion.GetDataTable(Query);


            string script = "window.close();";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "closewindows", script, true);
        }
        private void LlenarForm()
        {
            bdCon objconexion = new bdCon();
            objconexion.objSqlconn.Open();
            SqlCommand cmd = new SqlCommand("select Nombre from Empleados where Matricula='" + MatAct + "'", objconexion.objSqlconn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            cmd.ExecuteNonQuery();
            txtNombre.Text = dt.Rows[0][0].ToString();

            SqlCommand cmd2 = new SqlCommand("select Apellidos from Empleados where Matricula='" + MatAct + "'", objconexion.objSqlconn);
            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            sda2.Fill(dt2);
            cmd2.ExecuteNonQuery();
            txtApellidos.Text = dt2.Rows[0][0].ToString();

            SqlCommand cmd3 = new SqlCommand("select Telefono from Empleados where Matricula='" + MatAct + "'", objconexion.objSqlconn);
            SqlDataAdapter sda3 = new SqlDataAdapter(cmd3);
            DataTable dt3 = new DataTable();
            sda3.Fill(dt3);
            cmd3.ExecuteNonQuery();
            txtTel.Text = dt3.Rows[0][0].ToString();

            SqlCommand cmd4 = new SqlCommand("select Contra from Usuarios where Matricula='" + MatAct + "'", objconexion.objSqlconn);
            SqlDataAdapter sda4 = new SqlDataAdapter(cmd4);
            DataTable dt4 = new DataTable();
            sda4.Fill(dt4);
            cmd4.ExecuteNonQuery();
            txtContra.Text = dt4.Rows[0][0].ToString();
            
            txtMatricula.Text =MatAct;
          

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