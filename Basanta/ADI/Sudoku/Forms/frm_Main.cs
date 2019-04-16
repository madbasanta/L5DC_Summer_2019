using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace Sudoku
{
    public partial class frm_Main : Form
    {
        public frm_Main()
        {
            InitializeComponent();
        }

        private void frm_Main_Load(object sender, EventArgs e)
        {                        
        }

        private void btn_Exit_Click(object sender, EventArgs e)
        {
            Application.ExitThread();
        }

        private void btn_Instructions_Click(object sender, EventArgs e)
        {
            this.Opacity = 0.5;
            frm_Instructions instructions = new frm_Instructions();
            instructions.ShowDialog();
            this.Opacity = 1;
        }

        private void btn_NewGame_Click(object sender, EventArgs e)
        {
            this.Hide();
            frm_Welcome welcome = new frm_Welcome();
            welcome.Dispose();
            frm_Sudoku sudoku = new frm_Sudoku();
            sudoku.ShowDialog();
            this.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click_1(object sender, EventArgs e)
        {

        }
    }
}
