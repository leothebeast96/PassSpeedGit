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
    public partial class pendientes : System.Web.UI.Page
    {
        public bdCon objconexion { get; set; }
        public string idArea { get; set; }
        public DataTable dt3 { get; set; }
        public Login objLogin { get; set; }
        public string Usuario { set; get; }
        public String buscar { set; get; }
        public string idsolicitud { set; get; }
        public string estado { get; set; }
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

                    Response.Write(ex.Message);
                }
            }
        }
        private void UsuarioLog()
        {
            Login objLogin = new Login();

            Usuario = Session["Nombre"].ToString() + " " + Session["Apellidos"].ToString();
            lblUsuario.Text = Usuario.ToString();

        }
        private void LlenarTabla()
        {
            Login objLogin = new Login();
            bdCon objconexion = new bdCon();
            DataTable dtResultado = new DataTable();

            idArea = Session["IdArea"].ToString();

            String Query = String.Format("exec solicitudesPen '{0}'", idArea);
            dtResultado = objconexion.GetDataTable(Query);

            gvPendientes.DataSource = dtResultado;
            gvPendientes.DataBind();

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            bdCon objconexion = new bdCon();
            DataTable dtBusqueda = new DataTable();
            buscar = txtBuscar.Text;

            idArea = Session["IdArea"].ToString();
            String Queryb = String.Format("exec solicitudesPen2 {0},'{1}'", idArea, buscar);
            dtBusqueda = objconexion.GetDataTable(Queryb);

            gvPendientes.DataSource = dtBusqueda;
            gvPendientes.DataBind();
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void gvPendientes_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            idsolicitud= gvPendientes.Rows[e.NewSelectedIndex].Cells[1].Text;
            estado = gvPendientes.Rows[e.NewSelectedIndex].Cells[8].Text;
            Session["Estado"] = estado.ToString();
            Session["Actualizar"] = idsolicitud.ToString();
            gvPendientes.Attributes.Add("onClick", "Pendientes();");
        }
    }
}