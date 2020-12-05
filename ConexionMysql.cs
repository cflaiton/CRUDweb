using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace aplicacionWeb
{
    public class ConexionMysql
    {

        private static MySqlConnection ObjetoConexion;
        private static string error;

        public static MySqlConnection getConnection()

        {
            if (ObjetoConexion != null)
            {
                return ObjetoConexion;

            }
            else
            {
                ObjetoConexion = new MySqlConnection("Server=localhost;Database=appweb;Uid=usersena;Pwd=sena2020;");
                try
                {
                    ObjetoConexion.Open();
                    return ObjetoConexion;
                }
                catch (Exception e)
                {

                    error = e.Message;
                    return null;
                }

            }


        }

        public static void cerrarConexion()
        {
            if (ObjetoConexion != null) ;
            ObjetoConexion.Close();

        }






    }
}