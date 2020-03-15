namespace B2BAdmin
{
    partial class FRMAKTAR
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FRMAKTAR));
            this.visualStudio2012DarkTheme1 = new Telerik.WinControls.Themes.VisualStudio2012DarkTheme();
            this.GridAktarılanlar = new Telerik.WinControls.UI.RadGridView();
            this.GridAktarilamayan = new Telerik.WinControls.UI.RadGridView();
            this.radButton1 = new Telerik.WinControls.UI.RadButton();
            this.LBLOG = new Telerik.WinControls.UI.RadListControl();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.notifyIcon1 = new System.Windows.Forms.NotifyIcon(this.components);
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.programıGösterToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.yeniToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.çıkışToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.timer2 = new System.Windows.Forms.Timer(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.GridAktarılanlar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.GridAktarılanlar.MasterTemplate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.GridAktarilamayan)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.GridAktarilamayan.MasterTemplate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radButton1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.LBLOG)).BeginInit();
            this.contextMenuStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            this.SuspendLayout();
            // 
            // GridAktarılanlar
            // 
            this.GridAktarılanlar.Location = new System.Drawing.Point(4, 45);
            this.GridAktarılanlar.Name = "GridAktarılanlar";
            this.GridAktarılanlar.Size = new System.Drawing.Size(376, 265);
            this.GridAktarılanlar.TabIndex = 0;
            this.GridAktarılanlar.Text = "radGridView1";
            this.GridAktarılanlar.ThemeName = "VisualStudio2012Dark";
            // 
            // GridAktarilamayan
            // 
            this.GridAktarilamayan.Location = new System.Drawing.Point(386, 45);
            this.GridAktarilamayan.Name = "GridAktarilamayan";
            this.GridAktarilamayan.Size = new System.Drawing.Size(392, 265);
            this.GridAktarilamayan.TabIndex = 0;
            this.GridAktarilamayan.Text = "radGridView1";
            this.GridAktarilamayan.ThemeName = "VisualStudio2012Dark";
            // 
            // radButton1
            // 
            this.radButton1.Location = new System.Drawing.Point(668, 4);
            this.radButton1.Name = "radButton1";
            this.radButton1.Size = new System.Drawing.Size(110, 40);
            this.radButton1.TabIndex = 1;
            this.radButton1.Text = "Formu Gizle";
            this.radButton1.ThemeName = "VisualStudio2012Dark";
            this.radButton1.Click += new System.EventHandler(this.radButton1_Click);
            // 
            // LBLOG
            // 
            this.LBLOG.Location = new System.Drawing.Point(3, 322);
            this.LBLOG.Name = "LBLOG";
            this.LBLOG.Size = new System.Drawing.Size(784, 210);
            this.LBLOG.TabIndex = 2;
            this.LBLOG.Text = "radListControl1";
            this.LBLOG.ThemeName = "VisualStudio2012Dark";
            // 
            // timer1
            // 
            this.timer1.Enabled = true;
            this.timer1.Interval = 10000;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // notifyIcon1
            // 
            this.notifyIcon1.ContextMenuStrip = this.contextMenuStrip1;
            this.notifyIcon1.Icon = ((System.Drawing.Icon)(resources.GetObject("notifyIcon1.Icon")));
            this.notifyIcon1.Text = "notifyIcon1";
            this.notifyIcon1.Visible = true;
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.programıGösterToolStripMenuItem,
            this.yeniToolStripMenuItem,
            this.çıkışToolStripMenuItem});
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(161, 70);
            // 
            // programıGösterToolStripMenuItem
            // 
            this.programıGösterToolStripMenuItem.Name = "programıGösterToolStripMenuItem";
            this.programıGösterToolStripMenuItem.Size = new System.Drawing.Size(160, 22);
            this.programıGösterToolStripMenuItem.Text = "Programı Göster";
            this.programıGösterToolStripMenuItem.Click += new System.EventHandler(this.programıGösterToolStripMenuItem_Click);
            // 
            // yeniToolStripMenuItem
            // 
            this.yeniToolStripMenuItem.Name = "yeniToolStripMenuItem";
            this.yeniToolStripMenuItem.Size = new System.Drawing.Size(160, 22);
            this.yeniToolStripMenuItem.Text = "Yeniden Başlat";
            this.yeniToolStripMenuItem.Click += new System.EventHandler(this.yeniToolStripMenuItem_Click);
            // 
            // çıkışToolStripMenuItem
            // 
            this.çıkışToolStripMenuItem.Name = "çıkışToolStripMenuItem";
            this.çıkışToolStripMenuItem.Size = new System.Drawing.Size(160, 22);
            this.çıkışToolStripMenuItem.Text = "Çıkış";
            this.çıkışToolStripMenuItem.Click += new System.EventHandler(this.çıkışToolStripMenuItem_Click);
            // 
            // timer2
            // 
            this.timer2.Enabled = true;
            this.timer2.Interval = 1200000;
            this.timer2.Tick += new System.EventHandler(this.timer2_Tick);
            // 
            // FRMAKTAR
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(785, 534);
            this.Controls.Add(this.LBLOG);
            this.Controls.Add(this.radButton1);
            this.Controls.Add(this.GridAktarilamayan);
            this.Controls.Add(this.GridAktarılanlar);
            this.Name = "FRMAKTAR";
            // 
            // 
            // 
            this.RootElement.ApplyShapeToControl = true;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "MEN@ Aktarım";
            this.ThemeName = "VisualStudio2012Dark";
            this.Load += new System.EventHandler(this.FRMAKTAR_Load);
            ((System.ComponentModel.ISupportInitialize)(this.GridAktarılanlar.MasterTemplate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.GridAktarılanlar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.GridAktarilamayan.MasterTemplate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.GridAktarilamayan)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radButton1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.LBLOG)).EndInit();
            this.contextMenuStrip1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Telerik.WinControls.Themes.VisualStudio2012DarkTheme visualStudio2012DarkTheme1;
        private Telerik.WinControls.UI.RadGridView GridAktarılanlar;
        private Telerik.WinControls.UI.RadGridView GridAktarilamayan;
        private Telerik.WinControls.UI.RadButton radButton1;
        private Telerik.WinControls.UI.RadListControl LBLOG;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.NotifyIcon notifyIcon1;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem programıGösterToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem yeniToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem çıkışToolStripMenuItem;
        private System.Windows.Forms.Timer timer2;
    }
}
