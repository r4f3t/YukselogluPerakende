namespace B2BAdmin
{
    partial class FRMKAMPADD
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.TXTCMPName = new System.Windows.Forms.TextBox();
            this.BTNCMPGNADD = new System.Windows.Forms.Button();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.DTPBas = new System.Windows.Forms.DateTimePicker();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.DTPBit = new System.Windows.Forms.DateTimePicker();
            this.PNLGrid = new System.Windows.Forms.Panel();
            this.GridKamp = new System.Windows.Forms.DataGridView();
            this.panel1.SuspendLayout();
            this.PNLGrid.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.GridKamp)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.DTPBit);
            this.panel1.Controls.Add(this.textBox3);
            this.panel1.Controls.Add(this.DTPBas);
            this.panel1.Controls.Add(this.textBox2);
            this.panel1.Controls.Add(this.textBox1);
            this.panel1.Controls.Add(this.TXTCMPName);
            this.panel1.Controls.Add(this.BTNCMPGNADD);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(585, 108);
            this.panel1.TabIndex = 0;
            // 
            // textBox1
            // 
            this.textBox1.BackColor = System.Drawing.SystemColors.Info;
            this.textBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBox1.Font = new System.Drawing.Font("Trebuchet MS", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.textBox1.Location = new System.Drawing.Point(18, 3);
            this.textBox1.Name = "textBox1";
            this.textBox1.ReadOnly = true;
            this.textBox1.Size = new System.Drawing.Size(116, 26);
            this.textBox1.TabIndex = 6;
            this.textBox1.Text = "Kampanya Adı";
            // 
            // TXTCMPName
            // 
            this.TXTCMPName.BackColor = System.Drawing.SystemColors.Window;
            this.TXTCMPName.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.TXTCMPName.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.TXTCMPName.Location = new System.Drawing.Point(134, 3);
            this.TXTCMPName.Name = "TXTCMPName";
            this.TXTCMPName.Size = new System.Drawing.Size(415, 26);
            this.TXTCMPName.TabIndex = 5;
            // 
            // BTNCMPGNADD
            // 
            this.BTNCMPGNADD.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.BTNCMPGNADD.Font = new System.Drawing.Font("Trebuchet MS", 9F);
            this.BTNCMPGNADD.Location = new System.Drawing.Point(409, 44);
            this.BTNCMPGNADD.Name = "BTNCMPGNADD";
            this.BTNCMPGNADD.Size = new System.Drawing.Size(140, 53);
            this.BTNCMPGNADD.TabIndex = 7;
            this.BTNCMPGNADD.Text = "Kaydet";
            this.BTNCMPGNADD.UseVisualStyleBackColor = true;
            this.BTNCMPGNADD.Click += new System.EventHandler(this.BTNCMPGNADD_Click);
            // 
            // textBox2
            // 
            this.textBox2.BackColor = System.Drawing.SystemColors.Info;
            this.textBox2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBox2.Font = new System.Drawing.Font("Trebuchet MS", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.textBox2.Location = new System.Drawing.Point(18, 44);
            this.textBox2.Name = "textBox2";
            this.textBox2.ReadOnly = true;
            this.textBox2.Size = new System.Drawing.Size(116, 26);
            this.textBox2.TabIndex = 6;
            this.textBox2.Text = "Başlama";
            // 
            // DTPBas
            // 
            this.DTPBas.Font = new System.Drawing.Font("Trebuchet MS", 12F);
            this.DTPBas.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.DTPBas.Location = new System.Drawing.Point(134, 44);
            this.DTPBas.Name = "DTPBas";
            this.DTPBas.Size = new System.Drawing.Size(118, 26);
            this.DTPBas.TabIndex = 8;
            // 
            // textBox3
            // 
            this.textBox3.BackColor = System.Drawing.SystemColors.Info;
            this.textBox3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBox3.Font = new System.Drawing.Font("Trebuchet MS", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.textBox3.Location = new System.Drawing.Point(18, 71);
            this.textBox3.Name = "textBox3";
            this.textBox3.ReadOnly = true;
            this.textBox3.Size = new System.Drawing.Size(116, 26);
            this.textBox3.TabIndex = 6;
            this.textBox3.Text = "Bitiş";
            // 
            // DTPBit
            // 
            this.DTPBit.Font = new System.Drawing.Font("Trebuchet MS", 12F);
            this.DTPBit.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.DTPBit.Location = new System.Drawing.Point(134, 71);
            this.DTPBit.Name = "DTPBit";
            this.DTPBit.Size = new System.Drawing.Size(118, 26);
            this.DTPBit.TabIndex = 8;
            // 
            // PNLGrid
            // 
            this.PNLGrid.Controls.Add(this.GridKamp);
            this.PNLGrid.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.PNLGrid.Location = new System.Drawing.Point(0, 114);
            this.PNLGrid.Name = "PNLGrid";
            this.PNLGrid.Size = new System.Drawing.Size(585, 362);
            this.PNLGrid.TabIndex = 1;
            // 
            // GridKamp
            // 
            this.GridKamp.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.GridKamp.Dock = System.Windows.Forms.DockStyle.Fill;
            this.GridKamp.Location = new System.Drawing.Point(0, 0);
            this.GridKamp.Name = "GridKamp";
            this.GridKamp.Size = new System.Drawing.Size(585, 362);
            this.GridKamp.TabIndex = 0;
            this.GridKamp.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.GridKamp_CellDoubleClick);
            // 
            // FRMKAMPADD
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(585, 476);
            this.Controls.Add(this.PNLGrid);
            this.Controls.Add(this.panel1);
            this.Name = "FRMKAMPADD";
            this.Text = "FRMKAMPADD";
            this.Load += new System.EventHandler(this.FRMKAMPADD_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.PNLGrid.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.GridKamp)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DateTimePicker DTPBit;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.DateTimePicker DTPBas;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.TextBox TXTCMPName;
        private System.Windows.Forms.Button BTNCMPGNADD;
        private System.Windows.Forms.Panel PNLGrid;
        private System.Windows.Forms.DataGridView GridKamp;
    }
}