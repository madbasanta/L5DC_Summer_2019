using sudokugenerator.Controller;
using sudokugenerator.Model;
using sudokugenerator.View;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace sudokugenerator
{
    public partial class sudokuboards : Form, Isudokugenerate
    {
        private Random r = new Random();

        public int Id {
            get { return Int32.Parse(puzzleid.Text); }
            set { puzzleid.Text = value.ToString(); }
        }
        public string Puzzle {
            get { return txtpuzzlestring.Text; }
            set { txtpuzzlestring.Text = value.ToString(); }
        }
        public string SolutionString {
            get { return txtsolutionstring.Text; }
            set { txtsolutionstring.Text = value.ToString(); }
        }
        public int Level {
            get { return cmb_level.SelectedIndex; }
            set { cmb_level.SelectedIndex = value; }
        }
        public string Startedtime {
            get {return  txtstart.Text; }
            set { }
        }
        public string Completedtime {
            get { return txtcomplete.Text; }
            set { }
        }
        public int Iscompleted {
            get { return Int32.Parse(puzzleid.Text); }
            set { puzzleid.Text = value.ToString(); }
        }
        public int Noofmistakes {
            get { return Int32.Parse(puzzleid.Text); }
            set { puzzleid.Text = value.ToString(); }
        }
        public int User_Id {
            get { return Int32.Parse(labelUserId.Text); }
            set { labelUserId.Text = value.ToString(); }

        }
        private int[][] grid = new int[9][];
        public int[][] Grid { get => grid; set => grid = value; }

        private sudokugeneratecontroller sgc;
        public sudokuboards()
        {
            InitializeComponent();
            

        }

        private void btnnew_Click(object sender, EventArgs e)
        {

            sgc = new sudokugeneratecontroller(this);
            sgc.NewGame(r);
            game_SudokuDisplay(Grid);
            txtsolutionstring.Text = SolutionString.TrimEnd(',');
            txtpuzzlestring.Text = Puzzle.TrimEnd(',');

            sgc.SavePuzzle(Puzzle, SolutionString, Level, User_Id);


        }

        private void btnrestart_Click(object sender, EventArgs e)
        {

        }

        private void btncheck_Click(object sender, EventArgs e)
        {

        }

        private void btnshow_Click(object sender, EventArgs e)
        {
            game_Solution(Grid);
        }
       

        private void sudokuboards_Load(object sender, EventArgs e)
        {
            dataGridview.ColumnCount = 9;
            dataGridview.Rows.Add(9);
            cmb_level.SelectedIndex = 0;

            for (int i = 0; i < 9; i++)
            {
                DataGridViewColumn column = dataGridview.Columns[i];
                column.Width = 40;
                DataGridViewRow row = dataGridview.Rows[i];
                row.Height = 40;
            }
            dataGridview.Width = dataGridview.Columns[1].Width * 9;
           



        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }
        public void game_SudokuDisplay(int[][] SGrid)
        {
            string puzzle = "";
            string puzzleSolution = "";
            for (int y = 0; y <= 8; y++)
            {
                List<int> cells = new List<int>(new int[] { 1, 2, 3, 4, 5, 6, 7, 8, 9 });
                for (int c = 1; c <= 9 - (5 - cmb_level.SelectedIndex); c++)
                {
                    int randomNumber = cells[r.Next(0, cells.Count())];
                    cells.Remove(randomNumber);
                }
                for (int x = 0; x <= 8; x++)
                {
                    puzzleSolution += SGrid[y][x] + ',';

                    if (cells.Contains(x + 1))
                    {
                        dataGridview.Rows[y].Cells[x].Value = SGrid[y][x];
                        dataGridview.Rows[y].Cells[x].Style.ForeColor = Color.Black;
                        dataGridview.Rows[y].Cells[x].ReadOnly = true;
                        puzzle += SGrid[y][x] + ',';
                    }
                    else {
                        dataGridview.Rows[y].Cells[x].Value = "";
                        dataGridview.Rows[y].Cells[x].Style.ForeColor = Color.Blue;
                        dataGridview.Rows[y].Cells[x].ReadOnly = false;
                        puzzle +=',';
                    }
                }
            }
            Puzzle = puzzle;
            SolutionString = puzzleSolution;
        
        }
        public void game_Solution(int[][] SGrid)
        {
            for (int y = 0; y <= 8; y++) {
                for (int x = 0; x <= 8; x++)
                {
                    if (dataGridview.Rows[y].Cells[x].Style.ForeColor == Color.Blue)
                    {
                        if (string.IsNullOrEmpty(dataGridview.Rows[y].Cells[x].Value.ToString()))
                        {
                            dataGridview.Rows[y].Cells[x].Style.ForeColor = Color.Blue;
                            dataGridview.Rows[y].Cells[x].Value = SGrid[y][x];
                        }
                        else {
                            if (SGrid[y][x].ToString() != dataGridview.Rows[y].Cells[x].Value.ToString())
                            {
                                dataGridview.Rows[y].Cells[x].Style.ForeColor = Color.Red;
                                dataGridview.Rows[y].Cells[x].Value = SGrid[y][x];
                            }
                        }
                    }
                }
            }
        }

        private void cmb_level_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnnew.PerformClick();
        }
    }
}
