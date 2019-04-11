using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace Sudoku
{
    public partial class frm_Instructions : Form
    {
        public frm_Instructions()
        {
            InitializeComponent();
        }

        private void btn_Close_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void frm_Instructions_Load(object sender, EventArgs e)
        {
            string s_FileName = Application.StartupPath + "\\Instructions.rtf";
            richTextBox1.LoadFile(s_FileName);
        }

        private void richTextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
