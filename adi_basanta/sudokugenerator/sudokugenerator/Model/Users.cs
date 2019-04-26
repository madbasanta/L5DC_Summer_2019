using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using sudokugenerator.Dbconnect;

namespace sudokugenerator.Model
{

    class Users
    {
        public string User_Id { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        dbconnect db;

        public string Userlogin()
        {
            db = new dbconnect();
         
            // db.OpenConnection();
            string query = "select * from Users where username='"+Username+"' And password='"+Password+"'";

            SqlDataReader reader =db.DataReader(query);

            if (reader.HasRows) {
                while (reader.Read())
                {
                    User_Id = reader[0].ToString();
                }
            }
            
          
            return User_Id;
        }
        public bool Register()
        {

            db = new dbconnect();

            // db.OpenConnection();
            string query = "Insert into Users (username,password) values ('" + Username + "','" + Password + "')";

            return (db.ExecuteQueries(query) > 0);

        }
        public string GetUserName()
        {


            try
            {
                string query = "SELECT * FROM Users WHERE Player_id='" + User_Id + "'";
                SqlDataReader reader = db.DataReader(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Username = reader[1].ToString();
                    }

                }
                return User_Id;
            }
            catch (Exception e)
            {
                return e.Message;
            }
        }


    }
}
