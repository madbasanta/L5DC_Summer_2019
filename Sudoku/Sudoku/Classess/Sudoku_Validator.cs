using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Forms;
using System.Collections;
using System.Drawing;

namespace Sudoku.Classess
{
    class Sudoku_Validator
    {
        //Form1 form;

        public static readonly Random rand = new Random();
        public static readonly object syncLock = new object();

     
        //Horizontal List
        public TextBox[] txtBox_Array_Horiz_1;// = { };
        public TextBox[] txtBox_Array_Horiz_2;// = { };
        public TextBox[] txtBox_Array_Horiz_3;// = { };
        public TextBox[] txtBox_Array_Horiz_4;// = { };
        public TextBox[] txtBox_Array_Horiz_5;// = { };
        public TextBox[] txtBox_Array_Horiz_6;// = { };
        public TextBox[] txtBox_Array_Horiz_7;// = { };
        public TextBox[] txtBox_Array_Horiz_8;// = { };
        public TextBox[] txtBox_Array_Horiz_9;// = { };
        

        
        //Horizontal List
        public TextBox[] txtBox_Array_Vert_1;// = { };
        public TextBox[] txtBox_Array_Vert_2;// = { };
        public TextBox[] txtBox_Array_Vert_3;// = { };
        public TextBox[] txtBox_Array_Vert_4;// = { };
        public TextBox[] txtBox_Array_Vert_5;// = { };
        public TextBox[] txtBox_Array_Vert_6;// = { };
        public TextBox[] txtBox_Array_Vert_7;// = { };
        public TextBox[] txtBox_Array_Vert_8;// = { };
        public TextBox[] txtBox_Array_Vert_9;// = { };
       

        public ArrayList arr_txtBox_Horiz = new ArrayList();
        public ArrayList arr_txtBox_Vert = new ArrayList();
        public ArrayList arr_control = new ArrayList();

        public void txtBox_Array_Add()
        {
            //Begin Horizontal Array Add
            arr_txtBox_Horiz.Add(txtBox_Array_Horiz_1);
            arr_txtBox_Horiz.Add(txtBox_Array_Horiz_2);
            arr_txtBox_Horiz.Add(txtBox_Array_Horiz_3);
            arr_txtBox_Horiz.Add(txtBox_Array_Horiz_4);
            arr_txtBox_Horiz.Add(txtBox_Array_Horiz_5);
            arr_txtBox_Horiz.Add(txtBox_Array_Horiz_6);
            arr_txtBox_Horiz.Add(txtBox_Array_Horiz_7);
            arr_txtBox_Horiz.Add(txtBox_Array_Horiz_8);
            arr_txtBox_Horiz.Add(txtBox_Array_Horiz_9);
            //End Horizontal Array Add

            //Begin Vertical Array Add
            arr_txtBox_Vert.Add(txtBox_Array_Vert_1);
            arr_txtBox_Vert.Add(txtBox_Array_Vert_2);
            arr_txtBox_Vert.Add(txtBox_Array_Vert_3);
            arr_txtBox_Vert.Add(txtBox_Array_Vert_4);
            arr_txtBox_Vert.Add(txtBox_Array_Vert_5);
            arr_txtBox_Vert.Add(txtBox_Array_Vert_6);
            arr_txtBox_Vert.Add(txtBox_Array_Vert_7);
            arr_txtBox_Vert.Add(txtBox_Array_Vert_8);
            arr_txtBox_Vert.Add(txtBox_Array_Vert_9);
            //End Vertical Array Add

        }

        public void txtBox_Vert_Validate()
        {
            foreach (TextBox[] txtBox_Vert_Controls in arr_txtBox_Vert)
            {
                foreach (TextBox txtBox_Vert in txtBox_Vert_Controls)
                {
                    string s_txt_Value = txtBox_Vert.Text;
                    foreach (TextBox txtBox_Vert_1 in txtBox_Vert_Controls)
                    {
                        if (txtBox_Vert.Name == txtBox_Vert_1.Name)
                        {
                            continue;
                        }
                        else if (s_txt_Value == txtBox_Vert_1.Text)
                        {
                            if (arr_control.Contains(txtBox_Vert_1) == false)
                            {
                                arr_control.Add(txtBox_Vert_1);
                            }
                        }
                    }
                }
            }
        }

        public void txtBox_Horiz_Validate()
        {
            foreach (TextBox[] txtBox_Horiz_Controls in arr_txtBox_Horiz)
            {
                foreach (TextBox txtBox_Horiz in txtBox_Horiz_Controls)
                {
                    string s_txt_Value = txtBox_Horiz.Text;
                    foreach (TextBox txtBox_Horiz_1 in txtBox_Horiz_Controls)
                    {
                        if (txtBox_Horiz.Name == txtBox_Horiz_1.Name)
                        {
                            continue;
                        }
                        else if (s_txt_Value == txtBox_Horiz_1.Text)
                        {
                            if (arr_control.Contains(txtBox_Horiz_1) == false)
                            {
                                arr_control.Add(txtBox_Horiz_1);
                            }
                        }
                    }
                }
            }
        }

        public DialogResult paint_TxtBox()
        {
            DialogResult d_Result = DialogResult.Cancel;
            if (arr_control.Count != 0)
            {
                foreach (TextBox txtBox2 in arr_control)
                {
                    txtBox2.BackColor = Color.Yellow;                    
                }
                arr_control.Clear();
                
            }
            else
            {
                d_Result = MessageBox.Show("GAME OVER.\nSUDOKU SOLVED SUCCESSFULLY...\nCLICK YES TO START A NEW GAME OR NO TO SET HIGH SCORE.", "SUDOKU", MessageBoxButtons.YesNo, MessageBoxIcon.Information);
            }
            
            return d_Result;
        }

        public void ctrl_Tab_Change()
        {
            int i_Cnt = 0;
            foreach (TextBox[] arr_txtBox in arr_txtBox_Horiz)
            {
                foreach (TextBox txtBox in arr_txtBox)
                {                    
                    txtBox.TabIndex = i_Cnt;
                    i_Cnt++;
                }
            }            

        }
    }
}
