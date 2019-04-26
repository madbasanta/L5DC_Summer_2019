using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace sudokugenerator.View
{
    interface IPlayers
    {
        string User_IdText { get; set; }
        string UsernameText { get; set; }
        string PasswordText { get; set; }
    }
}
