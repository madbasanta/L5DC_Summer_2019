using sudokugenerator.View_controller;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace sudokugenerator.View_controller
{
    public partial class sudoku : Form
    {
        public sudoku()
        {
            InitializeComponent();
        }

        private void btnplay_Click(object sender, EventArgs e)
        {
            this.Hide();
            sudokuboards sk = new sudokuboards();
            sk.Show();
        }
    }
}
