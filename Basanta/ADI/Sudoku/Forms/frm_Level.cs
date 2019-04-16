using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace Sudoku
{
    public partial class frm_Level : Form
    {
        public frm_Level()
        {
            InitializeComponent();
        }

        public static int i_Level = 45;

       
        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //MessageBox.Show(comboBox1.SelectedItem.ToString());
            switch (comboBox1.SelectedItem.ToString())
            {
                case "BEGINNER":
                    i_Level = 45;
                    //MessageBox.Show(i_Level.ToString());
                    break;

                case "INTERMEDIATE":
                    i_Level = 55;
                    //MessageBox.Show(i_Level.ToString());
                    break;

                case "EXPERT":
                    i_Level = 62;
                    //MessageBox.Show(i_Level.ToString());
                    break;
            }
            this.Close();
          
        }
    }
}
