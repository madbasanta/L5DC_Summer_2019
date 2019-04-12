using System;
using System.Collections.Generic;

using System.Text;
using System.Windows.Forms;

namespace SuDoKu
{
    class SudokuGenerator
    {
        private string[] points;

        public void Init()
        {
            //sudoku seed..this is a valid and complete sudoku
            points = new string[]{
             "152974368",
               "489326751",
               "763581492",
                
               "537298614",
               "621745983",
               "894613527",
                
               "315867249",
               "946132875",
               "278459136"};

        }

        public string[] Remove(int count)
        {
            //remove a 'count' number of cells
            var random = new Random(DateTime.Now.Millisecond);

            for (int i = 0; i < count; i++)
            {
                string number = "";

                int r = 0;
                int c = 0;

                do
                {
                    r = random.Next(0, 9);
                    c = random.Next(0, 9);

                    var row = points[r];

                    number = "" + row[c];
                } while (number == ".");

                points[r] = points[r].Replace(number, ".");
            }
            return points;
        }

        /// <summary>
        /// Interesting facts about Sudokus: a complete sudoku is still a complete sudoku if you do one of the following:
        /// 1) Exchange 2 numbers all over the board. If every 1 becomes a 7 and every 7 becomes a 1 everything is still correct
        /// 2) Exchange any two rows in the same square. Exchange rows 0 and 1 and everything still works
        /// 3) Exchange any two columns in the same square. Exchange columns 0 and 1 and everything still works
        /// 
        /// Do any of these things in a random fashion and you get a completely new sudoku every time. 
        /// Remove cells to get a sudoku that is guaranteed to be solvable (anthough difficulty is not easy to estimate.
        /// </summary>
        /// <param name="count">How many cells are to be left empty. Use values from 1 to 81. Values of 60 to 70 represent workable options </param>
        /// <returns>an array of string that represent the sudoku</returns>
        public string[] Generate()
        {
            //create full correct and solved sudoku
            Init();

            var random = new Random(DateTime.Now.Millisecond);

            for (int i = 0; i < 9; i++)
            {
                int x1 = random.Next(1, 10);
                int x2 = random.Next(1, 10);

                //flip numbers: eg 1 becomes 6 and 6 becomes 1 all over the board
                Flip(x1, x2);

                //flip rows and cols as long as they fall in the same square 'box' 
                //switching rows or columns 1/3 or 1/2 or 2/3 is not problem but 1/4 or 6/1 is not allowed

                int j = i;

                switch (i)
                {
                    case 0:
                    case 1:
                    case 2:
                        j = random.Next(0, 3);
                        break;
                    case 3:
                    case 4:
                    case 5:
                        j = random.Next(3, 6);
                        break;
                    case 6:
                    case 7:
                    case 8:
                    default:
                        j = random.Next(6, 9);
                        break;

                }

                FlipRow(i, j);
                FlipColumn(i, j);
            }

            //Remove(difficulty);

            return points;
        }

        private void FlipColumn(int i, int j)
        {
            var s = points[i];
            points[i] = points[j];
            points[j] = s;
        }

        private void FlipRow(int i, int j)
        {
            for (int r = 0; r < points.Length; r++)
            {
                var row = points[r];

                var c1 = row[i].ToString(); ;
                var c2 = row[j].ToString();

                row = row.Replace(c1, "x");
                row = row.Replace(c2, c1);
                row = row.Replace("x", c2);
                points[r] = row;
            }
        }

        private void Flip(int i, int j)
        {
            for (int col = 0; col < points.Length; col++)
            {
                var s = points[col];
                s = s.Replace(i.ToString(), "x");
                s = s.Replace(j.ToString(), i.ToString());
                s = s.Replace("x", j.ToString());

                points[col] = s;
            }
        }

    }
}
