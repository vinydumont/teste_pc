using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;

namespace Teste_PC
{
    public class ClienteDAL
    {
        private string server = "localhost";
        private string port = "3307";
        private string database = "teste_pc";
        private string user = "root";
        private string password = "";
        private string connectionString = "Server={0};Database={1};Port={2};Uid={3};Pwd={4};";
        private MySqlConnection connection;

        public ClienteDAL()
        {
            connectionString = String.Format(connectionString, server, database, port, user, password);
            connection = new MySqlConnection(connectionString);
            connection.Open();
        }

        public DataTable ClienteDataTable(string sql)
        {
            DataTable clienteLista = new DataTable();
            MySqlCommand comm = new MySqlCommand(sql, connection);
            MySqlDataAdapter da = new MySqlDataAdapter(comm);
            da.Fill(clienteLista);

            return clienteLista;
        }

        public void ExecutarComando(string sql)
        {
            MySqlCommand comm = new MySqlCommand(sql, connection);
            comm.ExecuteNonQuery();
        }
    }
}