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
    public partial class DCPendiente : System.Web.UI.Page
    {
        public bdCon objconexion { get; set; }
        public String buscar { set; get; }
        public String idsoli { get; set; }
        public int id { set; get; }
        public String respuesta { set; get; }
        public String Estado { set; get; }
        public int est { set; get; }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                try
                {
                    
                    LlenarTabla();
                }
                catch (Exception ex)
                {

                    Response.Write(ex.Message);
                }


            }
        }
        private void LlenarTabla()
        {
            idsoli = Session["Actualizar"].ToString();
            id = int.Parse(idsoli);
            bdCon objconexion = new bdCon();
            DataTable dtResultado = new DataTable();
             
            String Query = String.Format("exec solicitudID {0}",id);
            dtResultado = objconexion.GetDataTable(Query);
          
            gvDCPendiente.DataSource = dtResultado;
            gvDCPendiente.DataBind();

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            idsoli = Session["Actualizar"].ToString();
            id = int.Parse(idsoli);
            respuesta = txtRespuesta.Text;
            est = 1;
            bdCon objconexion = new bdCon();
            DataTable dtResultado = new DataTable();
            String Query = String.Format("exec respuestaDirector {0},'{1}',{2}",est,respuesta,id);
            dtResultado = objconexion.GetDataTable(Query);
            
            string script = "window.close();";

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "closewindows", script, true);
        }

        protected void btnRechazar_Click(object sender, EventArgs e)
        {
            idsoli = Session["Actualizar"].ToString();
            id = int.Parse(idsoli);
            respuesta = txtRespuesta.Text;
            Estado = Session["Estado"].ToString();
            est = 2;
            bdCon objconexion = new bdCon();
            DataTable dtResultado = new DataTable();

            String Query = String.Format("exec respuestaDirector {0},'{1}',{2}",est,respuesta,id);
            dtResultado = objconexion.GetDataTable(Query);


            string script = "window.close();";

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "closewindows", script, true);
        }
    }
}