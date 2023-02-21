using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidad;
using CapaLogica;

namespace CapaPresentacion
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        CategoriaLogica Logica = new CategoriaLogica();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewCategorias.DataSource = Logica.ListaCategorias();
            GridViewCategorias.DataBind();
        }

        protected void ButtonGudarCategoria_Click(object sender, EventArgs e)
        {
            if(TextBoxNombreCategoria.Text == "" || TextBoxDescripcionCategoria.Text == "")
            {
                return;
            }

            ECategoria model = new ECategoria
            {
                NombreCategoria = TextBoxNombreCategoria.Text,
                DescripcionCategoria = TextBoxDescripcionCategoria.Text
            };

            bool resultado = Logica.AgregarCategoria(model);

            if (resultado)
            {
                Page_Load(sender, e);
            }
        }
    }
}