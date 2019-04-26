namespace sudokugenerator
{
    partial class sudokuboards
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            this.dataGridview = new System.Windows.Forms.DataGridView();
            this.btnnew = new System.Windows.Forms.Button();
            this.btncheck = new System.Windows.Forms.Button();
            this.btnrestart = new System.Windows.Forms.Button();
            this.btnshow = new System.Windows.Forms.Button();
            this.cmb_level = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnsave = new System.Windows.Forms.Button();
            this.labelUserId = new System.Windows.Forms.Label();
            this.puzzleid = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.txtstart = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.txtcomplete = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.btnverify = new System.Windows.Forms.Button();
            this.txtpuzzlestring = new System.Windows.Forms.TextBox();
            this.txtsolutionstring = new System.Windows.Forms.TextBox();
            this.panelcontrols = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridview)).BeginInit();
            this.panelcontrols.SuspendLayout();
            this.SuspendLayout();
            // 
            // dataGridview
            // 
            this.dataGridview.AllowUserToAddRows = false;
            this.dataGridview.AllowUserToDeleteRows = false;
            this.dataGridview.AllowUserToResizeColumns = false;
            this.dataGridview.AllowUserToResizeRows = false;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.dataGridview.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.dataGridview.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridview.ColumnHeadersVisible = false;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Arial", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dataGridview.DefaultCellStyle = dataGridViewCellStyle2;
            this.dataGridview.GridColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.dataGridview.Location = new System.Drawing.Point(344, 28);
            this.dataGridview.Margin = new System.Windows.Forms.Padding(2);
            this.dataGridview.MultiSelect = false;
            this.dataGridview.Name = "dataGridview";
            this.dataGridview.RowHeadersVisible = false;
            this.dataGridview.RowTemplate.Height = 24;
            this.dataGridview.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.dataGridview.Size = new System.Drawing.Size(365, 363);
            this.dataGridview.TabIndex = 0;
            // 
            // btnnew
            // 
            this.btnnew.Location = new System.Drawing.Point(38, 58);
            this.btnnew.Margin = new System.Windows.Forms.Padding(2);
            this.btnnew.Name = "btnnew";
            this.btnnew.Size = new System.Drawing.Size(56, 19);
            this.btnnew.TabIndex = 0;
            this.btnnew.Text = "New";
            this.btnnew.UseVisualStyleBackColor = true;
            this.btnnew.Click += new System.EventHandler(this.btnnew_Click);
            // 
            // btncheck
            // 
            this.btncheck.Location = new System.Drawing.Point(38, 154);
            this.btncheck.Margin = new System.Windows.Forms.Padding(2);
            this.btncheck.Name = "btncheck";
            this.btncheck.Size = new System.Drawing.Size(56, 19);
            this.btncheck.TabIndex = 1;
            this.btncheck.Text = "check";
            this.btncheck.UseVisualStyleBackColor = true;
            this.btncheck.Click += new System.EventHandler(this.btncheck_Click);
            // 
            // btnrestart
            // 
            this.btnrestart.Location = new System.Drawing.Point(38, 188);
            this.btnrestart.Margin = new System.Windows.Forms.Padding(2);
            this.btnrestart.Name = "btnrestart";
            this.btnrestart.Size = new System.Drawing.Size(56, 19);
            this.btnrestart.TabIndex = 2;
            this.btnrestart.Text = "restart";
            this.btnrestart.UseVisualStyleBackColor = true;
            this.btnrestart.Click += new System.EventHandler(this.btnrestart_Click);
            // 
            // btnshow
            // 
            this.btnshow.Location = new System.Drawing.Point(38, 245);
            this.btnshow.Margin = new System.Windows.Forms.Padding(2);
            this.btnshow.Name = "btnshow";
            this.btnshow.Size = new System.Drawing.Size(56, 19);
            this.btnshow.TabIndex = 3;
            this.btnshow.Text = "show solution";
            this.btnshow.UseVisualStyleBackColor = true;
            this.btnshow.Click += new System.EventHandler(this.btnshow_Click);
            // 
            // cmb_level
            // 
            this.cmb_level.FormattingEnabled = true;
            this.cmb_level.Items.AddRange(new object[] {
            "Easy",
            "Medium",
            "Hard"});
            this.cmb_level.Location = new System.Drawing.Point(22, 103);
            this.cmb_level.Margin = new System.Windows.Forms.Padding(2);
            this.cmb_level.Name = "cmb_level";
            this.cmb_level.Size = new System.Drawing.Size(92, 21);
            this.cmb_level.TabIndex = 4;
            this.cmb_level.SelectedIndexChanged += new System.EventHandler(this.cmb_level_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(20, 87);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(76, 13);
            this.label1.TabIndex = 5;
            this.label1.Text = "Difficulty Level";
            // 
            // btnsave
            // 
            this.btnsave.Location = new System.Drawing.Point(38, 211);
            this.btnsave.Margin = new System.Windows.Forms.Padding(2);
            this.btnsave.Name = "btnsave";
            this.btnsave.Size = new System.Drawing.Size(56, 19);
            this.btnsave.TabIndex = 6;
            this.btnsave.Text = "Save";
            this.btnsave.UseVisualStyleBackColor = true;
            // 
            // labelUserId
            // 
            this.labelUserId.AutoSize = true;
            this.labelUserId.Location = new System.Drawing.Point(32, 28);
            this.labelUserId.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.labelUserId.Name = "labelUserId";
            this.labelUserId.Size = new System.Drawing.Size(43, 13);
            this.labelUserId.TabIndex = 13;
            this.labelUserId.Text = "User_id";
            // 
            // puzzleid
            // 
            this.puzzleid.AutoSize = true;
            this.puzzleid.Location = new System.Drawing.Point(132, 28);
            this.puzzleid.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.puzzleid.Name = "puzzleid";
            this.puzzleid.Size = new System.Drawing.Size(46, 13);
            this.puzzleid.TabIndex = 14;
            this.puzzleid.Text = "Puzzleid";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(20, 324);
            this.label7.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(63, 13);
            this.label7.TabIndex = 15;
            this.label7.Text = "Started time";
            // 
            // txtstart
            // 
            this.txtstart.Location = new System.Drawing.Point(144, 322);
            this.txtstart.Margin = new System.Windows.Forms.Padding(2);
            this.txtstart.Name = "txtstart";
            this.txtstart.Size = new System.Drawing.Size(76, 20);
            this.txtstart.TabIndex = 16;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(19, 381);
            this.label8.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(79, 13);
            this.label8.TabIndex = 17;
            this.label8.Text = "Completed time";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(11, 452);
            this.label6.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(66, 13);
            this.label6.TabIndex = 12;
            this.label6.Text = "Puzzle string";
            // 
            // txtcomplete
            // 
            this.txtcomplete.Location = new System.Drawing.Point(143, 379);
            this.txtcomplete.Margin = new System.Windows.Forms.Padding(2);
            this.txtcomplete.Name = "txtcomplete";
            this.txtcomplete.Size = new System.Drawing.Size(76, 20);
            this.txtcomplete.TabIndex = 18;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(17, 474);
            this.label5.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(72, 13);
            this.label5.TabIndex = 13;
            this.label5.Text = "SolutionString";
            // 
            // btnverify
            // 
            this.btnverify.Location = new System.Drawing.Point(87, 356);
            this.btnverify.Margin = new System.Windows.Forms.Padding(2);
            this.btnverify.Name = "btnverify";
            this.btnverify.Size = new System.Drawing.Size(56, 19);
            this.btnverify.TabIndex = 19;
            this.btnverify.Text = "Verify";
            this.btnverify.UseVisualStyleBackColor = true;
            // 
            // txtpuzzlestring
            // 
            this.txtpuzzlestring.Location = new System.Drawing.Point(135, 450);
            this.txtpuzzlestring.Margin = new System.Windows.Forms.Padding(2);
            this.txtpuzzlestring.Name = "txtpuzzlestring";
            this.txtpuzzlestring.Size = new System.Drawing.Size(611, 20);
            this.txtpuzzlestring.TabIndex = 14;
            // 
            // txtsolutionstring
            // 
            this.txtsolutionstring.Location = new System.Drawing.Point(135, 470);
            this.txtsolutionstring.Margin = new System.Windows.Forms.Padding(2);
            this.txtsolutionstring.Multiline = true;
            this.txtsolutionstring.Name = "txtsolutionstring";
            this.txtsolutionstring.Size = new System.Drawing.Size(611, 20);
            this.txtsolutionstring.TabIndex = 15;
            // 
            // panelcontrols
            // 
            this.panelcontrols.Controls.Add(this.dataGridview);
            this.panelcontrols.Controls.Add(this.txtsolutionstring);
            this.panelcontrols.Controls.Add(this.txtpuzzlestring);
            this.panelcontrols.Controls.Add(this.btnverify);
            this.panelcontrols.Controls.Add(this.label5);
            this.panelcontrols.Controls.Add(this.txtcomplete);
            this.panelcontrols.Controls.Add(this.label6);
            this.panelcontrols.Controls.Add(this.label8);
            this.panelcontrols.Controls.Add(this.txtstart);
            this.panelcontrols.Controls.Add(this.label7);
            this.panelcontrols.Controls.Add(this.puzzleid);
            this.panelcontrols.Controls.Add(this.labelUserId);
            this.panelcontrols.Controls.Add(this.btnsave);
            this.panelcontrols.Controls.Add(this.label1);
            this.panelcontrols.Controls.Add(this.cmb_level);
            this.panelcontrols.Controls.Add(this.btnshow);
            this.panelcontrols.Controls.Add(this.btnrestart);
            this.panelcontrols.Controls.Add(this.btncheck);
            this.panelcontrols.Controls.Add(this.btnnew);
            this.panelcontrols.Location = new System.Drawing.Point(1, 2);
            this.panelcontrols.Margin = new System.Windows.Forms.Padding(2);
            this.panelcontrols.Name = "panelcontrols";
            this.panelcontrols.Size = new System.Drawing.Size(778, 570);
            this.panelcontrols.TabIndex = 1;
            // 
            // sudokuboards
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(778, 578);
            this.Controls.Add(this.panelcontrols);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "sudokuboards";
            this.Text = "sudokuboards";
            this.Load += new System.EventHandler(this.sudokuboards_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridview)).EndInit();
            this.panelcontrols.ResumeLayout(false);
            this.panelcontrols.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.DataGridView dataGridview;
        private System.Windows.Forms.Button btnnew;
        private System.Windows.Forms.Button btncheck;
        private System.Windows.Forms.Button btnrestart;
        private System.Windows.Forms.Button btnshow;
        private System.Windows.Forms.ComboBox cmb_level;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnsave;
        private System.Windows.Forms.Label labelUserId;
        private System.Windows.Forms.Label puzzleid;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtstart;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtcomplete;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnverify;
        private System.Windows.Forms.TextBox txtpuzzlestring;
        private System.Windows.Forms.TextBox txtsolutionstring;
        private System.Windows.Forms.Panel panelcontrols;
    }
}