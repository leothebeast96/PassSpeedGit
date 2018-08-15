using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pass.Libreria;

namespace Passpeed
{
    public partial class directoCarrera : System.Web.UI.Page
    {
        public bdCon objconexion { get; set; }
        public string idArea { get; set; }
         public DataTable dt3 { get; set; }
        public Login objLogin { get; set; }
        public string Usuario { set; get; }
        public String buscar { set; get; }
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

            Usuario = Session["Nombre"].ToString();
            lblUsuario.Text = Usuario.ToString();

        }
        private void LlenarTabla()
        {
            Login objLogin = new Login();
            bdCon objconexion = new bdCon();
            DataTable dtResultado = new DataTable();

            idArea = Session["IdArea"].ToString();
           
            String Query = String.Format("exec consultarDirector {0}", idArea);
            dtResultado = objconexion.GetDataTable(Query);

            gvDirector.DataSource = dtResultado;
            gvDirector.DataBind();

        }

        

        protected void btnBuscar_Click1(object sender, EventArgs e)
        {
            bdCon objconexion = new bdCon();
            DataTable dtBusqueda = new DataTable();
            buscar = txtBuscar.Text;

            idArea = Session["IdArea"].ToString();
            String Queryb = String.Format("exec consultarDirector2 {0},'{1}'", idArea, buscar);
            dtBusqueda = objconexion.GetDataTable(Queryb);

            gvDirector.DataSource = dtBusqueda;
            gvDirector.DataBind();
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}