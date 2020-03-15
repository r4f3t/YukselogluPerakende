namespace B2BAdmin
{
    partial class FRMCari
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
            this.GridCari = new System.Windows.Forms.DataGridView();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.BTNCMPGNADD = new System.Windows.Forms.Button();
            this.TXTGSearch = new System.Windows.Forms.TextBox();
            this.textBox3 = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.GridCari)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            this.SuspendLayout();
            // 
            // GridCari
            // 
            this.GridCari.AllowUserToAddRows = false;
            this.GridCari.AllowUserToDeleteRows = false;
            this.GridCari.BackgroundColor = System.Drawing.SystemColors.InactiveCaption;
            this.GridCari.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.GridCari.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.GridCari.Location = new System.Drawing.Point(0, 47);
            this.GridCari.Name = "GridCari";
            this.GridCari.ReadOnly = true;
            this.GridCari.Size = new System.Drawing.Size(823, 389);
            this.GridCari.TabIndex = 0;
            this.GridCari.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.GridCari_CellDoubleClick);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.GridCari);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(823, 436);
            this.panel1.TabIndex = 1;
            // 
            // panelControl1
            // 
            this.panelControl1.Controls.Add(this.BTNCMPGNADD);
            this.panelControl1.Controls.Add(this.TXTGSearch);
            this.panelControl1.Controls.Add(this.textBox3);
            this.panelControl1.Location = new System.Drawing.Point(0, 1);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(823, 46);
            this.panelControl1.TabIndex = 2;
            // 
            // BTNCMPGNADD
            // 
            this.BTNCMPGNADD.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.BTNCMPGNADD.Font = new System.Drawing.Font("Trebuchet MS", 9F);
            this.BTNCMPGNADD.Location = new System.Drawing.Point(436, 7);
            this.BTNCMPGNADD.Name = "BTNCMPGNADD";
            this.BTNCMPGNADD.Size = new System.Drawing.Size(87, 26);
            this.BTNCMPGNADD.TabIndex = 9;
            this.BTNCMPGNADD.Text = "Ara";
            this.BTNCMPGNADD.UseVisualStyleBackColor = true;
            this.BTNCMPGNADD.Click += new System.EventHandler(this.BTNCMPGNADD_Click);
            // 
            // TXTGSearch
            // 
            this.TXTGSearch.BackColor = System.Drawing.SystemColors.Window;
            this.TXTGSearch.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.TXTGSearch.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.TXTGSearch.Location = new System.Drawing.Point(97, 7);
            this.TXTGSearch.Name = "TXTGSearch";
            this.TXTGSearch.Size = new System.Drawing.Size(339, 26);
            this.TXTGSearch.TabIndex = 1;
            // 
            // textBox3
            // 
            this.textBox3.BackColor = System.Drawing.SystemColors.Control;
            this.textBox3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBox3.Font = new System.Drawing.Font("Trebuchet MS", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.textBox3.Location = new System.Drawing.Point(2, 7);
            this.textBox3.Name = "textBox3";
            this.textBox3.ReadOnly = true;
            this.textBox3.Size = new System.Drawing.Size(95, 26);
            this.textBox3.TabIndex = 2;
            this.textBox3.Text = "Genel Arama";
            // 
            // FRMCari
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(823, 436);
            this.Controls.Add(this.panelControl1);
            this.Controls.Add(this.panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "FRMCari";
            this.Text = "                                                                                 " +
    "                                           Cari Liste Formu";
            this.Load += new System.EventHandler(this.FRMCari_Load);
            ((System.ComponentModel.ISupportInitialize)(this.GridCari)).EndInit();
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView GridCari;
        private System.Windows.Forms.Panel panel1;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private System.Windows.Forms.TextBox TXTGSearch;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.Button BTNCMPGNADD;
    }
}