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
    public partial class Recursos : System.Web.UI.Page
    {
        public bdCon objconexion { get; set; }


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

                    throw ex;
                }

            }
            else
            {

            }


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
    }
}