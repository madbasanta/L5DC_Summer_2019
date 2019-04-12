namespace Sudoku
{
    partial class frm_High_Score
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frm_High_Score));
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.txt_Email_ID = new System.Windows.Forms.TextBox();
            this.lbl_Name = new System.Windows.Forms.Label();
            this.lbl_Score = new System.Windows.Forms.Label();
            this.lbl_Email_ID = new System.Windows.Forms.Label();
            this.lbl_Score_Txt = new System.Windows.Forms.Label();
            this.txt_Name = new System.Windows.Forms.TextBox();
            this.btn_Save = new System.Windows.Forms.Button();
            this.btn_Exit = new System.Windows.Forms.Button();
            this.tableLayoutPanel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.BackColor = System.Drawing.Color.Transparent;
            this.tableLayoutPanel1.ColumnCount = 2;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 31.25061F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 68.74939F));
            this.tableLayoutPanel1.Controls.Add(this.txt_Email_ID, 1, 2);
            this.tableLayoutPanel1.Controls.Add(this.lbl_Name, 0, 0);
            this.tableLayoutPanel1.Controls.Add(this.lbl_Score, 0, 1);
            this.tableLayoutPanel1.Controls.Add(this.lbl_Email_ID, 0, 2);
            this.tableLayoutPanel1.Controls.Add(this.lbl_Score_Txt, 1, 1);
            this.tableLayoutPanel1.Controls.Add(this.txt_Name, 1, 0);
            this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.tableLayoutPanel1.Location = new System.Drawing.Point(0, 0);
            this.tableLayoutPanel1.Margin = new System.Windows.Forms.Padding(4);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 3;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 33.33333F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 33.33333F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 33.33333F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(389, 258);
            this.tableLayoutPanel1.TabIndex = 0;
            // 
            // txt_Email_ID
            // 
            this.txt_Email_ID.CharacterCasing = System.Windows.Forms.CharacterCasing.Lower;
            this.txt_Email_ID.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txt_Email_ID.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_Email_ID.Location = new System.Drawing.Point(125, 176);
            this.txt_Email_ID.Margin = new System.Windows.Forms.Padding(4);
            this.txt_Email_ID.Multiline = true;
            this.txt_Email_ID.Name = "txt_Email_ID";
            this.txt_Email_ID.Size = new System.Drawing.Size(260, 78);
            this.txt_Email_ID.TabIndex = 5;
            this.txt_Email_ID.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.txt_Email_ID.TextChanged += new System.EventHandler(this.txt_Email_ID_TextChanged);
            // 
            // lbl_Name
            // 
            this.lbl_Name.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lbl_Name.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_Name.Location = new System.Drawing.Point(4, 0);
            this.lbl_Name.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lbl_Name.Name = "lbl_Name";
            this.lbl_Name.Size = new System.Drawing.Size(113, 86);
            this.lbl_Name.TabIndex = 0;
            this.lbl_Name.Text = "NAME";
            this.lbl_Name.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lbl_Score
            // 
            this.lbl_Score.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lbl_Score.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_Score.Location = new System.Drawing.Point(4, 86);
            this.lbl_Score.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lbl_Score.Name = "lbl_Score";
            this.lbl_Score.Size = new System.Drawing.Size(113, 86);
            this.lbl_Score.TabIndex = 1;
            this.lbl_Score.Text = "SCORE";
            this.lbl_Score.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lbl_Email_ID
            // 
            this.lbl_Email_ID.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lbl_Email_ID.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_Email_ID.Location = new System.Drawing.Point(4, 172);
            this.lbl_Email_ID.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lbl_Email_ID.Name = "lbl_Email_ID";
            this.lbl_Email_ID.Size = new System.Drawing.Size(113, 86);
            this.lbl_Email_ID.TabIndex = 2;
            this.lbl_Email_ID.Text = "E-MAIL ID";
            this.lbl_Email_ID.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lbl_Score_Txt
            // 
            this.lbl_Score_Txt.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lbl_Score_Txt.Font = new System.Drawing.Font("Arial Rounded MT Bold", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_Score_Txt.Location = new System.Drawing.Point(125, 86);
            this.lbl_Score_Txt.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lbl_Score_Txt.Name = "lbl_Score_Txt";
            this.lbl_Score_Txt.Size = new System.Drawing.Size(260, 86);
            this.lbl_Score_Txt.TabIndex = 3;
            this.lbl_Score_Txt.Text = "00:00:00";
            this.lbl_Score_Txt.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // txt_Name
            // 
            this.txt_Name.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txt_Name.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txt_Name.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_Name.Location = new System.Drawing.Point(125, 4);
            this.txt_Name.Margin = new System.Windows.Forms.Padding(4);
            this.txt_Name.Multiline = true;
            this.txt_Name.Name = "txt_Name";
            this.txt_Name.Size = new System.Drawing.Size(260, 78);
            this.txt_Name.TabIndex = 4;
            this.txt_Name.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.txt_Name.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txt_Name_KeyPress);
            // 
            // btn_Save
            // 
            this.btn_Save.Location = new System.Drawing.Point(17, 267);
            this.btn_Save.Margin = new System.Windows.Forms.Padding(4);
            this.btn_Save.Name = "btn_Save";
            this.btn_Save.Size = new System.Drawing.Size(100, 28);
            this.btn_Save.TabIndex = 1;
            this.btn_Save.Text = "&SAVE";
            this.btn_Save.UseVisualStyleBackColor = true;
            this.btn_Save.Click += new System.EventHandler(this.btn_Save_Click);
            // 
            // btn_Exit
            // 
            this.btn_Exit.Location = new System.Drawing.Point(273, 267);
            this.btn_Exit.Margin = new System.Windows.Forms.Padding(4);
            this.btn_Exit.Name = "btn_Exit";
            this.btn_Exit.Size = new System.Drawing.Size(100, 28);
            this.btn_Exit.TabIndex = 2;
            this.btn_Exit.Text = "CL&OSE";
            this.btn_Exit.UseVisualStyleBackColor = true;
            this.btn_Exit.Click += new System.EventHandler(this.btn_Exit_Click);
            // 
            // frm_High_Score
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::Sudoku.Properties.Resources._6;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.ClientSize = new System.Drawing.Size(389, 332);
            this.Controls.Add(this.btn_Exit);
            this.Controls.Add(this.btn_Save);
            this.Controls.Add(this.tableLayoutPanel1);
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frm_High_Score";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "HIGH SCORE";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frm_High_Score_FormClosing);
            this.Load += new System.EventHandler(this.frm_High_Score_Load);
            this.tableLayoutPanel1.ResumeLayout(false);
            this.tableLayoutPanel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private System.Windows.Forms.Button btn_Save;
        private System.Windows.Forms.Button btn_Exit;
        private System.Windows.Forms.TextBox txt_Email_ID;
        private System.Windows.Forms.Label lbl_Name;
        private System.Windows.Forms.Label lbl_Score;
        private System.Windows.Forms.Label lbl_Email_ID;
        private System.Windows.Forms.Label lbl_Score_Txt;
        private System.Windows.Forms.TextBox txt_Name;


    }
}