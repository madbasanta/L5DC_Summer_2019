using sudokugenerator.Model;
using sudokugenerator.View;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace sudokugenerator.Controller
{
    class playerstatcontroller
    {
        IPlayerstat stats;
        playerstats player;

        public playerstatcontroller(IPlayerstat view)
        {
            stats = view;
        }
        //public void GetStat()        {           player = new playerstats(); player.User_IdText = stats.User_IdText;  return player.GetStat();        }
    }
}
