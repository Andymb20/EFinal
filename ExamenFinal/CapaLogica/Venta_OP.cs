using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace ExamenFinal.CapaLogica
{
    public class Venta_OP
    {
        private string cadenaConexion = "conexion";

        public DataTable ObtenerVentas()
        {
            using (SqlConnection conexion = new SqlConnection(cadenaConexion))
            {
                string procedimiento = "GestionarVentas";
                using (SqlCommand comando = new SqlCommand(procedimiento, conexion))
                {
                    comando.CommandType = CommandType.StoredProcedure;
                    comando.Parameters.AddWithValue("@accion", "consultar");
                    conexion.Open();
                    DataTable tabla = new DataTable();
                    tabla.Load(comando.ExecuteReader());
                    return tabla;
                }
            }
        }

        public void AgregarVenta(int idAgente, int idCliente, int idCasa, DateTime fecha)
        {
            using (SqlConnection conexion = new SqlConnection(cadenaConexion))
            {
                string procedimiento = "GestionarVentas";
                using (SqlCommand comando = new SqlCommand(procedimiento, conexion))
                {
                    comando.CommandType = CommandType.StoredProcedure;
                    comando.Parameters.AddWithValue("@accion", "agregar");
                    comando.Parameters.AddWithValue("@id_agente", idAgente);
                    comando.Parameters.AddWithValue("@id_cliente", idCliente);
                    comando.Parameters.AddWithValue("@id_casa", idCasa);
                    comando.Parameters.AddWithValue("@fecha", fecha);
                    conexion.Open();
                    comando.ExecuteNonQuery();
                }
            }
        }

        public void BorrarVenta(int id)
        {
            using (SqlConnection conexion = new SqlConnection(cadenaConexion))
            {
                string procedimiento = "GestionarVentas";
                using (SqlCommand comando = new SqlCommand(procedimiento, conexion))
                {
                    comando.CommandType = CommandType.StoredProcedure;
                    comando.Parameters.AddWithValue("@accion", "borrar");
                    comando.Parameters.AddWithValue("@id_venta", id);
                    conexion.Open();
                    comando.ExecuteNonQuery();
                }
            }
        }

        public void ModificarVenta(int id, int idAgente, int idCliente, int idCasa, DateTime fecha)
        {
            using (SqlConnection conexion = new SqlConnection(cadenaConexion))
            {
                string procedimiento = "GestionarVentas";
                using (SqlCommand comando = new SqlCommand(procedimiento, conexion))
                {
                    comando.CommandType = CommandType.StoredProcedure;
                    comando.Parameters.AddWithValue("@accion", "modificar");
                    comando.Parameters.AddWithValue("@id_venta", id);
                    comando.Parameters.AddWithValue("@id_agente", idAgente);
                    comando.Parameters.AddWithValue("@id_cliente", idCliente);
                    comando.Parameters.AddWithValue("@id_casa", idCasa);
                    comando.Parameters.AddWithValue("@fecha", fecha);
                    conexion.Open();
                    comando.ExecuteNonQuery();
                }
            }
        }

        public void ConfigurarGridView(GridView gridView)
        {
            // Obtener los datos de las ventas
            DataTable ventas = ObtenerVentas();

            // Establecer los datos del GridView
            gridView.DataSource = ventas;
            gridView.DataBind();
        }


    }
}
