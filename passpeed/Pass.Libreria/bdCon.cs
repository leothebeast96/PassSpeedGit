using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace Pass.Libreria
{
   public class bdCon
    {
        public SqlConnection objSqlconn { get; set; }
        private string strconn = @"Server=LEO-WORKSTATION\LEO;Database=Passspeed;User Id=sa; Password=heavymetal96;";

        public bdCon()
        {
            objSqlconn = new SqlConnection(strconn);

        }

        public bdCon(string server, string databaseName,string usuario, string pass)
        {

            objSqlconn = new SqlConnection(string.Format("Server= {0};Database={1};User Id={2};Password={3};",server,databaseName,usuario,pass)); 


        }
        public DataTable GetDataTable(string Query)
        {
            try
            {
                SqlDataAdapter sqlAdaptador = new SqlDataAdapter(Query,objSqlconn);
                DataTable dtRespuesta = new DataTable();
                sqlAdaptador.Fill(dtRespuesta);

                return dtRespuesta;
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
    }
}
