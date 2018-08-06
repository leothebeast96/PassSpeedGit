using Pass.Libreria;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Passpeed
{
    public partial class Login : System.Web.UI.Page
    {
        public bdCon objconexion { get; set; }
       public string matricula { get; set; }
        public string contraseña { get; set; }
        public DataTable dt3 { get; set; }
        public DataTable dt4 { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btniniciar_Click(object sender, EventArgs e)
        {
            try
            {
                matricula = txtUsuario.Text;
                contraseña = txtContraseña.Text;
                Session["Matricula"] = matricula.ToString() ;
                Session["Contraseña"] = contraseña.ToString(); ;
                bdCon objconexion = new bdCon();
                objconexion.objSqlconn.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from Usuarios where Matricula='"+matricula+"' and Contra ='"+contraseña+"'",objconexion.objSqlconn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows[0][0].ToString() == "1")
                {
                    SqlCommand cmd2 = new SqlCommand("select Puesto from Empleados where Matricula='" + matricula +"'", objconexion.objSqlconn);
                    SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
                    DataTable dt2 = new DataTable();
                    sda2.Fill(dt2);
                    cmd2.ExecuteNonQuery();
                    if (dt2.Rows[0][0].ToString() == "1")
                    {
                        SqlCommand cmd4 = new SqlCommand("select Nombre from Empleados where Matricula='" + matricula + "'", objconexion.objSqlconn);
                        SqlDataAdapter sda4 = new SqlDataAdapter(cmd4);
                        DataTable dt4 = new DataTable();
                        sda4.Fill(dt4);
                        cmd4.ExecuteNonQuery();

                        Session["Nombre"] = dt4.Rows[0][0].ToString();
                        Response.Redirect("./Recursos.aspx");
                    }
                    else if(dt2.Rows[0][0].ToString() == "2")
                    {
                        SqlCommand cmd3 = new SqlCommand("select idArea from Empleados where Matricula='" + matricula + "'", objconexion.objSqlconn);
                        SqlDataAdapter sda3 = new SqlDataAdapter(cmd3);
                        DataTable dt3 = new DataTable();
                        sda3.Fill(dt3);
                        cmd3.ExecuteNonQuery();

                        SqlCommand cmd4 = new SqlCommand("select Nombre from Empleados where Matricula='" + matricula + "'", objconexion.objSqlconn);
                        SqlDataAdapter sda4 = new SqlDataAdapter(cmd4);
                        DataTable dt4 = new DataTable();
                        sda4.Fill(dt4);
                        cmd4.ExecuteNonQuery();

                        Session["Nombre"] = dt4.Rows[0][0].ToString();
                        Session["IdArea"] = dt3.Rows[0][0].ToString();
                        Response.Redirect("./directoCarrera.aspx");
                    }
                }
                else
                {
                    lblError.Text = "Usuario o Contraseña Invalidos".ToString();
                }


            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);
            }

        }
    }
}