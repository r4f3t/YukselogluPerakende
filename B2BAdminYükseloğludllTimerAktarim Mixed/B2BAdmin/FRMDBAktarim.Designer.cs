namespace B2BAdmin
{
    partial class FRMDBAktarim
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
            this.components = new System.ComponentModel.Container();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.GridAktarılanlar = new System.Windows.Forms.DataGridView();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.GridAktarilamayan = new System.Windows.Forms.DataGridView();
            this.TMRAktarim = new System.Windows.Forms.Timer(this.components);
            this.LBLOG = new System.Windows.Forms.ListBox();
            this.LBStaticLog = new System.Windows.Forms.ListBox();
            this.button1 = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.GridAktarılanlar)).BeginInit();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.GridAktarilamayan)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.GridAktarılanlar);
            this.groupBox1.Location = new System.Drawing.Point(3, 3);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(461, 327);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Aktarılanlar";
            // 
            // GridAktarılanlar
            // 
            this.GridAktarılanlar.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.GridAktarılanlar.Dock = System.Windows.Forms.DockStyle.Fill;
            this.GridAktarılanlar.Location = new System.Drawing.Point(3, 16);
            this.GridAktarılanlar.Name = "GridAktarılanlar";
            this.GridAktarılanlar.Size = new System.Drawing.Size(455, 308);
            this.GridAktarılanlar.TabIndex = 0;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.GridAktarilamayan);
            this.groupBox2.Location = new System.Drawing.Point(470, 3);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(461, 327);
            this.groupBox2.TabIndex = 0;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Aktarılamayanlar";
            // 
            // GridAktarilamayan
            // 
            this.GridAktarilamayan.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.GridAktarilamayan.Dock = System.Windows.Forms.DockStyle.Fill;
            this.GridAktarilamayan.Location = new System.Drawing.Point(3, 16);
            this.GridAktarilamayan.Name = "GridAktarilamayan";
            this.GridAktarilamayan.Size = new System.Drawing.Size(455, 308);
            this.GridAktarilamayan.TabIndex = 0;
            this.GridAktarilamayan.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.GridAktarilamayan_CellDoubleClick);
            // 
            // TMRAktarim
            // 
            this.TMRAktarim.Enabled = true;
            this.TMRAktarim.Interval = 5000;
            this.TMRAktarim.Tick += new System.EventHandler(this.TMRAktarim_Tick);
            // 
            // LBLOG
            // 
            this.LBLOG.FormattingEnabled = true;
            this.LBLOG.Location = new System.Drawing.Point(6, 333);
            this.LBLOG.Name = "LBLOG";
            this.LBLOG.Size = new System.Drawing.Size(455, 199);
            this.LBLOG.TabIndex = 1;
            // 
            // LBStaticLog
            // 
            this.LBStaticLog.FormattingEnabled = true;
            this.LBStaticLog.Location = new System.Drawing.Point(476, 333);
            this.LBStaticLog.Name = "LBStaticLog";
            this.LBStaticLog.Size = new System.Drawing.Size(455, 199);
            this.LBStaticLog.TabIndex = 1;
            this.LBStaticLog.Click += new System.EventHandler(this.LBStaticLog_Click);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(435, 540);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 2;
            this.button1.Text = "İncele";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // FRMDBAktarim
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(937, 575);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.LBStaticLog);
            this.Controls.Add(this.LBLOG);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "FRMDBAktarim";
            this.Text = "FRMDBAktarim";
            this.Load += new System.EventHandler(this.FRMDBAktarim_Load);
            this.groupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.GridAktarılanlar)).EndInit();
            this.groupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.GridAktarilamayan)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Timer TMRAktarim;
        private System.Windows.Forms.DataGridView GridAktarılanlar;
        private System.Windows.Forms.DataGridView GridAktarilamayan;
        private System.Windows.Forms.ListBox LBLOG;
        private System.Windows.Forms.ListBox LBStaticLog;
        private System.Windows.Forms.Button button1;
    }
}