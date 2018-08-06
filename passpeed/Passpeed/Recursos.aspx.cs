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
    public partial class Recursos : System.Web.UI.Page
    {
        public bdCon objconexion { get; set; }
        public DataTable dt4 { get; set; }
        public string Usuario { get; set; }
        public string matriculaUsr { set; get; }
        public Login objLogin { set; get; }
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
           


        }
        private void UsuarioLog()
        {
            Login objLogin = new Login();

            Usuario = Session["Nombre"].ToString();
            lblUsuario.Text = Usuario.ToString(); 
           
        }
        private void LlenarTabla()
        {
            
            bdCon objconexion = new bdCon();
           
            DataTable dtResultado = new DataTable();

            String Query = String.Format("exec consultarRH");
            dtResultado = objconexion.GetDataTable(Query);

            gvRecursos.DataSource = dtResultado;
            gvRecursos.DataBind();

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter();

        }
    }
}