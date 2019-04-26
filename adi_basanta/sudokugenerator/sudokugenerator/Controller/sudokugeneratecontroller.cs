using sudokugenerator.View;
using sudokugenerator.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace sudokugenerator.Controller
{
    class sudokugeneratecontroller
    {
        Isudokugenerate skGame;
        SudokuPuzzle sk;

        private List<int>[] HRow = new List<int>[9];
        private List<int>[] VRow = new List<int>[9];
        private List<int>[] ThreeSquare = new List<int>[9];

        private int[][] sudoku = new int[9][];
        private Random r;
        public sudokugeneratecontroller(Isudokugenerate view) { skGame = view; }
         

         


        public void NewGame(Random rn)
        {
            sk = new SudokuPuzzle();
            this.r = rn;
            createNewGame(r);

        }
        private void initializeLists()
        {
            for (int x = 0; x <= 8; x++)
            {
                HRow[x] = new List<int>(new int[] { 1, 2, 3, 4, 5, 6, 7, 8, 9 });
                VRow[x] = new List<int>(new int[] { 1, 2, 3, 4, 5, 6, 7, 8, 9 });
                ThreeSquare[x] = new List<int>(new int[] { 1, 2, 3, 4, 5, 6, 7, 8, 9 });
                int[] row = new int[9];
                sudoku[x] = row;
            }
        }

        public void createNewGame(Random rn)
        {
            while (true)
            {
                break1:
                initializeLists();
                for (int y = 0; y <= 8; y++)
                {
                    for (int x = 0; x <= 8; x++)
                    {
                        int si = (y / 3) * 3 + (x / 3);
                        int[] useful = HRow[y].Intersect(VRow[x]).Intersect(ThreeSquare[si]).ToArray();
                        if (useful.Count() == 0)
                        {
                            goto break1;

                        }
                        int randomNumber = useful[rn.Next(0, useful.Count())];
                        HRow[y].Remove(randomNumber);
                        VRow[x].Remove(randomNumber);
                        ThreeSquare[si].Remove(randomNumber);
                        sudoku[y][x] = randomNumber;
                        if (y == 8 && x == 8) {
                            goto break2;
                        }

                    }
                }
            }
            break2:
            skGame.Grid = sudoku;
        }

        public void SavePuzzle(string puzzle, string solution, int level, int user_id)
        {
            sk.Puzzle = puzzle;
            sk.SolutionString = solution;
            sk.Level = level;
            sk.User_Id = user_id;

            sk.SavePuzzle();
        }
        public void SavePlayerSolution(int sudoku_id, string usersolution, int user_id)
        {
            sk.Puzzle = usersolution;
            sk.Id = sudoku_id;
            sk.User_Id = user_id;

            sk.SavePlayerSolution();

        }

    }
}
