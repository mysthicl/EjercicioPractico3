using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class CategoriaDatos
    {
        private SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlconn"].ConnectionString);

        public DataTable SelectCategoriaDatos()
        {
            SqlCommand command = new SqlCommand("SelectCategoria", connection);
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
            DataTable dataTable= new DataTable();
            dataAdapter.Fill(dataTable);
            return dataTable;
        }

        public bool InssertCategoria(ECategoria ecategoria)
        {
            connection.Open();
            SqlCommand command = new SqlCommand("InsertCategoria", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@nombreCategoria", ecategoria.NombreCategoria);
            command.Parameters.AddWithValue("@descripcionCategoria", ecategoria.DescripcionCategoria);
            int result = command.ExecuteNonQuery();
            connection.Close();

            if(result > 0)
            {
                return true;
            }

            return false;
        }
    }
}
