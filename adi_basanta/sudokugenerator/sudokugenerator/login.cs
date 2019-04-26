using sudokugenerator.Controller;
using sudokugenerator.Dbconnect;
using System;
using System.Windows.Forms;
using sudokugenerator.View;


namespace sudokugenerator
{
    public partial class login : Form, IPlayers
    {
       
        public login()
        {
          
            InitializeComponent();
        }
        public string User_IdText
        {
            get { return labelid.Text;}
            set { labelid.Text = value; }

        }
        public string UsernameText {
            get { return txtusername.Text; }
            set { txtusername.Text = value; }
        }
        public string PasswordText
        {
            get { return txtpassword.Text; }
            set { txtpassword.Text = value; }
        }



        private void btnlogin_Click(object sender, EventArgs e)
        {
            playercontroller p = new playercontroller(this);
            User_IdText=p.Userlogin();

            if(User_IdText != "")
            {
                sudokuboards sb = new sudokuboards();
                sb.User_Id = Int32.Parse(User_IdText);
                sb.Show();
                this.Hide();
            }

        }

        private void login_Load(object sender, EventArgs e)
        {

        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.Hide();
            new Register().Show();
        }
    }
}
