using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Text.RegularExpressions;
using System.Xml;

namespace Sudoku
{
    public partial class frm_High_Score : Form
    {

        public frm_High_Score()
        {
            InitializeComponent();
        }

        public static string s_High_Score = frm_Sudoku.s_Time;
        string s_Pattern = @"^[a-z][a-z|0-9|]*([_][a-z|0-9]+)*([.][a-z|" +
               @"0-9]+([_][a-z|0-9]+)*)?@[a-z][a-z|0-9|]*\.([a-z]" +
               @"[a-z|0-9]*(\.[a-z][a-z|0-9]*)?)$";
        private void frm_High_Score_Load(object sender, EventArgs e)
        {            
            lbl_Score_Txt.Text = s_High_Score;
        }

        private void frm_High_Score_FormClosing(object sender, FormClosingEventArgs e)
        {
            //this.Close();
        }

        private void btn_Save_Click(object sender, EventArgs e)
        {
            Match match = Regex.Match(txt_Email_ID.Text.Trim(), s_Pattern);
            if (isValid(txt_Name.Text))
            {
                if (match.Success)
                {
                    //MessageBox.Show("Success");
                    xmlWrite();
                }
                else
                {
                    MessageBox.Show("EMAIL ID IS NOT VALID.\nTRY AGAIN.", "SUDOKU", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txt_Email_ID.Focus();
                }
            }
        }

        private bool isValid(string s_Name)
        {
            if (s_Name == "")
            {
                MessageBox.Show("FIELD NAME CANNOT BE LEFT BLANK.","SUDOKU",MessageBoxButtons.OK,MessageBoxIcon.Error);
                return false;
            }
            return true;
        }

        private void xmlWrite()
        {
            try
            {
                string s_FileName = Application.StartupPath + "\\High_Score.xml"; ;
                XmlDocument xml_Doc = new XmlDocument();
                XmlTextWriter xml_Writer = new XmlTextWriter(s_FileName, System.Text.Encoding.UTF8);
                xml_Writer.Formatting = Formatting.Indented;
                xml_Writer.WriteProcessingInstruction("xml", "version='1.0' encoding='UTF-8'");
                xml_Writer.WriteStartElement("SUDOKU_HIGH_SCORE");
                xml_Writer.Close();
                xml_Doc.Load(s_FileName);
                XmlNode xml_Root = xml_Doc.DocumentElement;
                XmlElement xml_Element_1 = xml_Doc.CreateElement("NAME");
                XmlElement xml_Element_2 = xml_Doc.CreateElement("SCORE");
                XmlElement xml_Element_3 = xml_Doc.CreateElement("E_MAIL_ID");
                xml_Root.AppendChild(xml_Element_1);
                xml_Root.AppendChild(xml_Element_2);
                xml_Root.AppendChild(xml_Element_3);
                xml_Element_1.InnerText = txt_Name.Text;
                xml_Element_2.InnerText = lbl_Score_Txt.Text.ToString();
                xml_Element_3.InnerText = txt_Email_ID.Text;
                xml_Doc.Save(s_FileName);

                MessageBox.Show("HIGH SCORE SAVED SUCCESSFULLY.","SUDOKU",MessageBoxButtons.OK,MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "SUDOKU", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btn_Exit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void txt_Name_KeyPress(object sender, KeyPressEventArgs e)
        {
            if ((e.KeyChar == 46) || (e.KeyChar == 8) || (e.KeyChar == 32))
            {
                e.Handled = false;
            }
            else if (e.KeyChar == 192)
            {
                e.Handled = true;
            }
            else if ((e.KeyChar < 65) || (e.KeyChar > 90) && (e.KeyChar < 97) || (e.KeyChar > 122))
            {
                e.Handled = true;
            }           
        }

        private void txt_Email_ID_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
