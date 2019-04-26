using sudokugenerator.Dbconnect;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace sudokugenerator.Model
{
    class SudokuPuzzle
    {
        public int Id { get; set; }
        public string Puzzle { get; set; }
        public string SolutionString { get; set; }
        public int Level { get; set; }
        public string Startedtime { get; set; }
        public string Completedtime { get; set; }
        public int Iscompleted { get; set; }
        public int Noofmistakes { get; set; }
        public int User_Id { get; set; }
        public int UserPuzzleString { get; set; }
        public int[][] Grid { get => grid; set => grid = value; }

        private int[][] grid = new int[9][];

        dbconnect db = new dbconnect();

       public void SavePuzzle(int[][]gamePuzzleSolution,int[][]gamePuzzle,int gamePuzzleLevel)
       {
            SolutionString = GridTostring(gamePuzzleSolution);
            Puzzle = GridTostring (gamePuzzle);
            Level = gamePuzzleLevel;
            string query = "insert into dbo.sudokugenerate(GamePuzzle,GamePuzzleSolution,GamePuzzleLevel)values'" + SolutionString + "','" + Puzzle + "'," + Level + "";
            db.ExecuteQueries(query);
 

        }

        public string GridTostring(int[][] gamegrid)
        {
            string gridstring = "";
            for (int x = 0; x <= 8; x++)
            {
                for (int y = 0; y <= 8; y++)
                {
                    gridstring += gamegrid[x][y].ToString() + ',';
                }
            }
            return gridstring.TrimEnd(',');
        }


        public string ShowpuzzleToGrid()
        {
            return Puzzle;
        }



        public int[][] PuzzleToGrid(string puzzle)
        {
            Grid = new int[9][];
            return Grid;
        }


        public string ShowSolutionString()
        {
            return SolutionString;
        }


        public bool SavePuzzle()
        {
            db = new dbconnect();
            string query = "insert into dbo.sudokugenerate(puzzle,solutionstring,level,User_id)values('" + Puzzle + "','" + SolutionString + "','" + Level + "','" + User_Id + "')";
            MessageBox.Show(query);
            if (db.ExecuteQueries(query) > 0)
            {
                MessageBox.Show("saved");

                return true;
            }
            else { return false; }
        }


        public bool SavePlayerSolution()
        {
            db = new dbconnect();
            string query = "Update dbo.sudokugenerate set userpuzzleptring='" + UserPuzzleString + "' where User_Id=" + User_Id + " and Id=" +Id + ")";
            MessageBox.Show(query);
            if (db.ExecuteQueries(query) > 0)
            {
                MessageBox.Show("Userstring saved");
                return true;
            }
            else
            {
                return false;
            }
        }

        public string GetPuzzle()
        {

            try
            {
                db = new dbconnect();

                string query = "SELECT * FROM sudokugenerate WHERE Id=" + Id + "";
                SqlDataReader reader = db.DataReader(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Puzzle = reader[1].ToString();
                    }

                }
                return Puzzle;
            }
            catch (Exception e)
            {
                return e.Message;
            }


        }


        public string GetSolution()
        {

            try
            {
                db = new dbconnect();

                string query = "SELECT * FROM sudokugenerate WHERE Id=" + Id + "";
                SqlDataReader reader = db.DataReader(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        SolutionString = reader[2].ToString();
                    }

                }
                return SolutionString;
            }
            catch (Exception e)
            {
                return e.Message;
            }


        }

        public void SavePuzzleGrid(DataGridView dgv)
        {

            string puzzlestring = "";
            int i = 0;
            int x = 0;
            foreach (DataGridViewRow row in dgv.Rows)
            {
                while (x < dgv.Columns.Count)
                {
                    puzzlestring += row.Cells[x].Value != null ? row.Cells[x].Value.ToString() : string.Empty;
                    puzzlestring += ',';
                    x++;
                }

                x = 0;
                i++; //next row
            }
            Puzzle = puzzlestring.TrimEnd(',');
        }

      




    }

}
