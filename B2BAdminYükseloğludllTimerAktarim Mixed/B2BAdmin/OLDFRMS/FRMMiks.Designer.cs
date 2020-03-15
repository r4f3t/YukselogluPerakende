namespace B2BAdmin
{
    partial class FRMMiks
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
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.GridVade = new System.Windows.Forms.DataGridView();
            this.HFVADEREF = new System.Windows.Forms.Label();
            this.HFLREF = new System.Windows.Forms.Label();
            this.BTNMikSil = new System.Windows.Forms.Button();
            this.BTNADD = new System.Windows.Forms.Button();
            this.TXTMikAdi = new System.Windows.Forms.TextBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.GridVade)).BeginInit();
            this.SuspendLayout();
            // 
            // groupControl1
            // 
            this.groupControl1.Controls.Add(this.GridVade);
            this.groupControl1.Controls.Add(this.HFVADEREF);
            this.groupControl1.Controls.Add(this.HFLREF);
            this.groupControl1.Controls.Add(this.BTNMikSil);
            this.groupControl1.Controls.Add(this.BTNADD);
            this.groupControl1.Controls.Add(this.TXTMikAdi);
            this.groupControl1.Controls.Add(this.textBox1);
            this.groupControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupControl1.Location = new System.Drawing.Point(0, 0);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(547, 507);
            this.groupControl1.TabIndex = 1;
            this.groupControl1.Text = "                                                              Miktar Giriş/Düzenl" +
    "eme Formu";
            // 
            // GridVade
            // 
            this.GridVade.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.GridVade.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.GridVade.Location = new System.Drawing.Point(2, 60);
            this.GridVade.Name = "GridVade";
            this.GridVade.Size = new System.Drawing.Size(543, 445);
            this.GridVade.TabIndex = 0;
            this.GridVade.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.GridVade_CellClick);
            this.GridVade.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.GridVade_CellDoubleClick);
            // 
            // HFVADEREF
            // 
            this.HFVADEREF.AutoSize = true;
            this.HFVADEREF.Location = new System.Drawing.Point(289, 230);
            this.HFVADEREF.Name = "HFVADEREF";
            this.HFVADEREF.Size = new System.Drawing.Size(0, 13);
            this.HFVADEREF.TabIndex = 23;
            this.HFVADEREF.Visible = false;
            // 
            // HFLREF
            // 
            this.HFLREF.AutoSize = true;
            this.HFLREF.Location = new System.Drawing.Point(281, 222);
            this.HFLREF.Name = "HFLREF";
            this.HFLREF.Size = new System.Drawing.Size(0, 13);
            this.HFLREF.TabIndex = 22;
            this.HFLREF.Visible = false;
            // 
            // BTNMikSil
            // 
            this.BTNMikSil.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.BTNMikSil.Font = new System.Drawing.Font("Trebuchet MS", 9F);
            this.BTNMikSil.Location = new System.Drawing.Point(472, 29);
            this.BTNMikSil.Name = "BTNMikSil";
            this.BTNMikSil.Size = new System.Drawing.Size(75, 26);
            this.BTNMikSil.TabIndex = 19;
            this.BTNMikSil.Text = "Sil";
            this.BTNMikSil.UseVisualStyleBackColor = true;
            this.BTNMikSil.Visible = false;
            this.BTNMikSil.Click += new System.EventHandler(this.BTNMikSil_Click);
            // 
            // BTNADD
            // 
            this.BTNADD.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.BTNADD.Font = new System.Drawing.Font("Trebuchet MS", 9F);
            this.BTNADD.Location = new System.Drawing.Point(381, 29);
            this.BTNADD.Name = "BTNADD";
            this.BTNADD.Size = new System.Drawing.Size(88, 26);
            this.BTNADD.TabIndex = 20;
            this.BTNADD.Text = "Kaydet";
            this.BTNADD.UseVisualStyleBackColor = true;
            this.BTNADD.Click += new System.EventHandler(this.BTNADD_Click);
            // 
            // TXTMikAdi
            // 
            this.TXTMikAdi.BackColor = System.Drawing.SystemColors.Window;
            this.TXTMikAdi.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.TXTMikAdi.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.TXTMikAdi.Location = new System.Drawing.Point(121, 28);
            this.TXTMikAdi.Name = "TXTMikAdi";
            this.TXTMikAdi.Size = new System.Drawing.Size(254, 26);
            this.TXTMikAdi.TabIndex = 15;
            // 
            // textBox1
            // 
            this.textBox1.BackColor = System.Drawing.SystemColors.Control;
            this.textBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBox1.Font = new System.Drawing.Font("Trebuchet MS", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.textBox1.Location = new System.Drawing.Point(5, 28);
            this.textBox1.Name = "textBox1";
            this.textBox1.ReadOnly = true;
            this.textBox1.Size = new System.Drawing.Size(116, 26);
            this.textBox1.TabIndex = 16;
            this.textBox1.Text = "Miktar Grubu";
            // 
            // FRMMiks
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(547, 507);
            this.Controls.Add(this.groupControl1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "FRMMiks";
            this.Text = "FRMMiks";
            this.Load += new System.EventHandler(this.FRMMiks_Load);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.GridVade)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.GroupControl groupControl1;
        private System.Windows.Forms.DataGridView GridVade;
        private System.Windows.Forms.Label HFVADEREF;
        private System.Windows.Forms.Label HFLREF;
        private System.Windows.Forms.Button BTNMikSil;
        private System.Windows.Forms.Button BTNADD;
        private System.Windows.Forms.TextBox TXTMikAdi;
        private System.Windows.Forms.TextBox textBox1;
    }
}