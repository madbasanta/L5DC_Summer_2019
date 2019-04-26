using sudokugenerator.Dbconnect;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace sudokugenerator.Model
{
    class playerstats
    {
        private int Player_Id { get; set; }
        private int NoofPuzzleCreate { get; set; }
        private int TotalNoofCompletePuzzle { get; set; }
        private int NoofEasyPuzzle { get; set; }
        private int NoofMediumPuzzle { get; set; }
        private int NoofHardPuzzle { get; set; }
        private int AverageNoofMistakes { get; set; }
        private int User_Id { get; set; }
        dbconnect db = new dbconnect();

        public void GetStat()
        {
           


        }



    }
}
