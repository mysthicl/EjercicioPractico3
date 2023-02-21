using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;
using CapaEntidad;

namespace CapaLogica
{
    public class CategoriaLogica
    {
        CategoriaDatos Datos = new CategoriaDatos();

        public DataTable ListaCategorias()
        {
            return Datos.SelectCategoriaDatos();
        }

        public bool AgregarCategoria(ECategoria ecategoria)
        {
            return Datos.InssertCategoria(ecategoria);
        } 
    }
}
