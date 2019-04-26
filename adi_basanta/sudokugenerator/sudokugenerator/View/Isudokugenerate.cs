using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace sudokugenerator.View
{
    interface Isudokugenerate
    {
        int Id { get; set; }        
        string Puzzle { get; set; }
        string SolutionString { get; set; }
        int Level { get; set; }
        string Startedtime { get; set; }
        string Completedtime { get; set; }
        int Iscompleted { get; set; }
        int Noofmistakes { get; set; }
        int User_Id { get; set; }
        int[][] Grid { get; set; }
    }
}
