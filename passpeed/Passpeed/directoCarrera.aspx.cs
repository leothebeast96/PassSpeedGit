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
            else
            {

            }

            
        }
        private void LlenarTabla()
        {
            Login objLogin = new Login();
            bdCon objconexion = new bdCon();
            DataTable dtResultado = new DataTable();

            idArea = objLogin.dt3.Rows[0][0].ToString();
            String Query = String.Format("exec consultarDirector{0}",idArea);
            dtResultado = objconexion.GetDataTable(Query);

            gvDirector.DataSource = dtResultado;
            gvDirector.DataBind();

        }
    }
}