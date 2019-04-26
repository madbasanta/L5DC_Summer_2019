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
    public partial class Register : Form, IPlayers
    {
        public Register()
        {
            InitializeComponent();
        }
        public string User_IdText
        {
            get { return labelid.Text; }
            set { labelid.Text = value; }

        }
        public string UsernameText
        {
            get { return txtusername.Text; }
            set { txtusername.Text = value; }
        }
        public string PasswordText
        {
            get { return txtpassword.Text; }
            set { txtpassword.Text = value; }
        }

        private void btnregister_Click(object sender, EventArgs e)
        {
            playercontroller p = new playercontroller(this);
            if (p.Register())
            {
                MessageBox.Show("ReigsterSUccess");


            } else
            {
                MessageBox.Show("Reigster Failed");
            }

        }

        private void Register_Load(object sender, EventArgs e)
        {

        }
    }
}
