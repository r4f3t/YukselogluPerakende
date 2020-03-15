namespace B2BAdmin
{
    partial class FRMYetkis
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
            this.HFVADEREF = new System.Windows.Forms.Label();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.GridVade = new System.Windows.Forms.DataGridView();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.TXTVadeAdi = new DevExpress.XtraEditors.TextEdit();
            this.BTNVadeSil = new System.Windows.Forms.Button();
            this.BTNADD = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.GridVade)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.TXTVadeAdi.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // HFVADEREF
            // 
            this.HFVADEREF.AutoSize = true;
            this.HFVADEREF.Location = new System.Drawing.Point(322, -10);
            this.HFVADEREF.Name = "HFVADEREF";
            this.HFVADEREF.Size = new System.Drawing.Size(0, 13);
            this.HFVADEREF.TabIndex = 20;
            this.HFVADEREF.Visible = false;
            // 
            // groupControl1
            // 
            this.groupControl1.Controls.Add(this.GridVade);
            this.groupControl1.Controls.Add(this.textEdit1);
            this.groupControl1.Controls.Add(this.TXTVadeAdi);
            this.groupControl1.Controls.Add(this.BTNVadeSil);
            this.groupControl1.Controls.Add(this.BTNADD);
            this.groupControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupControl1.Location = new System.Drawing.Point(0, 0);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(576, 432);
            this.groupControl1.TabIndex = 21;
            this.groupControl1.Text = "                                                                                 " +
    " Yetki Kodu Girişi";
            // 
            // GridVade
            // 
            this.GridVade.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.GridVade.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.GridVade.Location = new System.Drawing.Point(2, 52);
            this.GridVade.Name = "GridVade";
            this.GridVade.Size = new System.Drawing.Size(572, 378);
            this.GridVade.TabIndex = 27;
            this.GridVade.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.GridVade_CellClick);
            this.GridVade.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.GridVade_CellDoubleClick);
            // 
            // textEdit1
            // 
            this.textEdit1.EditValue = "Yetki  Grubu";
            this.textEdit1.Location = new System.Drawing.Point(1, 20);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Properties.Appearance.BackColor = System.Drawing.SystemColors.Control;
            this.textEdit1.Properties.Appearance.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.textEdit1.Properties.Appearance.Options.UseBackColor = true;
            this.textEdit1.Properties.Appearance.Options.UseFont = true;
            this.textEdit1.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.textEdit1.Properties.Mask.BeepOnError = true;
            this.textEdit1.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.Numeric;
            this.textEdit1.Properties.ReadOnly = true;
            this.textEdit1.Size = new System.Drawing.Size(118, 26);
            this.textEdit1.TabIndex = 25;
            // 
            // TXTVadeAdi
            // 
            this.TXTVadeAdi.Location = new System.Drawing.Point(119, 20);
            this.TXTVadeAdi.Name = "TXTVadeAdi";
            this.TXTVadeAdi.Properties.Appearance.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.TXTVadeAdi.Properties.Appearance.Options.UseFont = true;
            this.TXTVadeAdi.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.TXTVadeAdi.Size = new System.Drawing.Size(250, 26);
            this.TXTVadeAdi.TabIndex = 26;
            // 
            // BTNVadeSil
            // 
            this.BTNVadeSil.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.BTNVadeSil.Font = new System.Drawing.Font("Trebuchet MS", 9F);
            this.BTNVadeSil.Location = new System.Drawing.Point(465, 20);
            this.BTNVadeSil.Name = "BTNVadeSil";
            this.BTNVadeSil.Size = new System.Drawing.Size(75, 26);
            this.BTNVadeSil.TabIndex = 23;
            this.BTNVadeSil.Text = "Sil";
            this.BTNVadeSil.UseVisualStyleBackColor = true;
            this.BTNVadeSil.Visible = false;
            this.BTNVadeSil.Click += new System.EventHandler(this.BTNVadeSil_Click);
            // 
            // BTNADD
            // 
            this.BTNADD.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.BTNADD.Font = new System.Drawing.Font("Trebuchet MS", 9F);
            this.BTNADD.Location = new System.Drawing.Point(374, 20);
            this.BTNADD.Name = "BTNADD";
            this.BTNADD.Size = new System.Drawing.Size(88, 26);
            this.BTNADD.TabIndex = 24;
            this.BTNADD.Text = "Kaydet";
            this.BTNADD.UseVisualStyleBackColor = true;
            this.BTNADD.Click += new System.EventHandler(this.BTNADD_Click);
            // 
            // FRMYetkis
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(576, 432);
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(this.HFVADEREF);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "FRMYetkis";
            this.Text = "Yetki Kodu ";
            this.Load += new System.EventHandler(this.FRMVades_Load);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.GridVade)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.TXTVadeAdi.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label HFVADEREF;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.TextEdit textEdit1;
        private DevExpress.XtraEditors.TextEdit TXTVadeAdi;
        private System.Windows.Forms.Button BTNVadeSil;
        private System.Windows.Forms.Button BTNADD;
        private System.Windows.Forms.DataGridView GridVade;
    }
}