using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aplicacionWeb.App
{
    public partial class Datos : System.Web.UI.Page
    {
        GestionDatos datos = new GestionDatos();
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Aqui invocamos el objeto para listar todos los empleados
            List<Empleado> listaEmpleados = datos.LeerTodos();

            gvEmpleados.DataSource = listaEmpleados;
            gvEmpleados.DataBind();


        }

        protected void gvEmpleados_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvEmpleados.PageIndex = e.NewPageIndex;

            List<Empleado> listaEmpleados = datos.LeerTodos();

            gvEmpleados.DataSource = listaEmpleados;
            gvEmpleados.DataBind();


        }

        protected void BtbBuscarCodigo_Click(object sender, EventArgs e)
        {
            if (datos.ExisteEmpleado(InCodigoBuscar.Text))
            {

                Response.Redirect("Formulario.aspx?id=" + InCodigoBuscar.Text);


            }
            else
            {
                lblrespuestaBuscar.Text = "No existe el codigo en la Base de datosz";
            }
        }

        protected void gvEmpleados_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {

                int indice = Convert.ToInt32(e.CommandArgument);
                string valor = Convert.ToString(gvEmpleados.DataKeys[indice].Value);
                //Response.Write("Valor de fila" + indice);
                //Response.Write("Valor de celda" + valor);
                Response.Redirect("formulario.aspx?id=" + valor);

            }

        }
    }
}
