using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace sudokugenerator.Dbconnect
{
    class dbconnect
    {
        string ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=sudokugame;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        SqlConnection con;
        public dbconnect()
        {
            OpenConnection();
        }
        public void OpenConnection()
        {
            con = new SqlConnection(ConnectionString);
            con.Open();
        }
       

        public void CloseConnection()
        {
            con.Close();

        }

        public int ExecuteQueries(string Query_)
        {
            
            SqlCommand cmd = new SqlCommand(Query_, con);
           return cmd.ExecuteNonQuery();
        }

        public SqlDataReader DataReader(string Query_)
        {
            SqlCommand cmd = new SqlCommand(Query_, con);
            SqlDataReader reader = cmd.ExecuteReader();
            return reader;
        }

        public object ShowDataInGridView(string Query_)
        {
            SqlDataAdapter dr = new SqlDataAdapter(Query_, ConnectionString);
            DataSet ds = new DataSet();
            dr.Fill(ds);
            object dataum = ds.Tables[0];
            return dataum;
        }


    }
}