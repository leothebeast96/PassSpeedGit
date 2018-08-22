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
        private string strconn = @"Server=sql5027.site4now.net;Database=DB_A3F5A1_pases;User Id=DB_A3F5A1_pases_admin; Password=ASDF1234;";

        public bdCon()
        {
            objSqlconn = new SqlConnection(strconn);

        }

        public bdCon(string server, string databaseName,string usuario, string pass)
        {

            //objSqlconn = new SqlConnection(string.Format("Server= {0};Database={1};User Id={2};Password={3};",server,databaseName,usuario,pass));
            objSqlconn = new SqlConnection(string.Format("Server= {0};Database={1};User Id={2};Password={3};", "sql5027.site4now.net", "DB_A3F5A1_pases", "DB_A3F5A1_pases_admin", "ASDF1234"));


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
