using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace Teste_PC
{
    public class ClienteBLL
    {
        public string ID { get; set; }
        public string Nome { get; set; }
        public string Razao { get; set; }
        public string Tipo_ID { get; set; }
        public string Data { get; set; }
        public string Endereco { get; set; }
        public string EndNumero { get; set; }
        public string Cep { get; set; }
        public string Telefone { get; set; }
        public string Email { get; set; }

        ClienteDAL clienteDAL = new ClienteDAL();

        public DataTable retornaListaCliente()
        {
            return clienteDAL.ClienteDataTable("select * from cliente");
        }

        public void cadastrarCliente()
        {
            string sql = "INSERT INTO cliente(id, nome_fantasia, razao_social, tipo_inscricao, data_inicio, endereco, end_numero, cep, telefone, email)" +
                         "VALUES({0}, '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}')";
            sql = String.Format(sql, ID, Nome, Razao, Tipo_ID, Data, Endereco, EndNumero, Cep, Telefone, Email);
            clienteDAL.ExecutarComando(sql);
        }

        public void alterarCliente(string id)
        {
            string sql = "UPDATE cliente " +
                         "SET nome_fantasia='{0}', razao_social='{1}', tipo_inscricao='{2}', data_inicio='{3}', endereco='{4}', end_numero='{5}', cep='{6}', telefone='{7}', email='{9}'" +
                         "WHERE id={9}";
            sql = String.Format(sql, Nome, Razao, Tipo_ID, Data, Endereco, EndNumero, Cep, Telefone, Email, ID);
            clienteDAL.ExecutarComando(sql);
        }

        public void excluirCliente(string id)
        {
            string sql = String.Format("DELETE FROM cliente WHERE id={0}", id);
            clienteDAL.ExecutarComando(sql);
        }

    }
}