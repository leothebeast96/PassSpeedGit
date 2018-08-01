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

            String Query = String.Format("exec consultarDirector");
            dtResultado = objconexion.GetDataTable(Query);

            gvDirector.DataSource = dtResultado;
            gvDirector.DataBind();

        }
    }
}