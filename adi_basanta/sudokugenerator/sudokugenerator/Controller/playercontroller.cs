using sudokugenerator.Model;
using sudokugenerator.View;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace sudokugenerator.Controller
{
    class playercontroller
    {
        IPlayers playerview;
        Users u;
        public playercontroller(IPlayers view)
        {
            playerview = view;
        }
        public string Userlogin()
        {
            u = new Users();
            u.Username = playerview.UsernameText;
            u.Password = playerview.PasswordText;

            return u.Userlogin();

        }

        public bool Register()
        {
            u = new Users();
            u.Username = playerview.UsernameText;
            u.Password = playerview.PasswordText;

            return u.Register(); 
        }
        public string GetUserName()
        {
            u = new Users();
            u.User_Id = playerview.User_IdText;
            return u.GetUserName();

        }



    }
}
