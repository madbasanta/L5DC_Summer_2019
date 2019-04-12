using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Threading;

namespace Sudoku
{
    public partial class frm_Welcome : Form
    {
        public frm_Welcome()
        {
            InitializeComponent();
        }

        frm_Main main = new frm_Main();
        Random random = new Random();
        int i = 1;
       
        private void timer1_Tick(object sender, EventArgs e)
        {
            progressBar1.Minimum = 0;
            progressBar1.Maximum = 100;
            progressBar1.Increment(1);

            if (progressBar1.Value < progressBar1.Maximum)
            {
                label1.Text = progressBar1.Value.ToString() + "%";
            }
            if (progressBar1.Value == 99)
            {
                this.Hide();
                new frm_Main().Show();
            }
        }

        private void frm_Welcome_Load(object sender, EventArgs e)
        {
            timer1.Start();                        
        }


    }
}
