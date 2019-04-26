using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace sudokugenerator.View
{
    interface IPlayerstat
    {
        int Player_Id { get; set; }
        int NoofPuzzleCreate { get; set; }
        int TotalNoofCompletePuzzle { get; set; }
         int NoofEasyPuzzle { get; set; }
       int NoofMediumPuzzle { get; set; }
        int NoofHardPuzzle { get; set; }
         int AverageNoofMistakes { get; set; }
        int User_Id { get; set; }

    }
}
