namespace B2BAdmin
{
    partial class ZZAltmini
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
            Telerik.WinControls.UI.GridViewTextBoxColumn gridViewTextBoxColumn1 = new Telerik.WinControls.UI.GridViewTextBoxColumn();
            Telerik.WinControls.UI.GridViewTextBoxColumn gridViewTextBoxColumn2 = new Telerik.WinControls.UI.GridViewTextBoxColumn();
            Telerik.WinControls.UI.GridViewTextBoxColumn gridViewTextBoxColumn3 = new Telerik.WinControls.UI.GridViewTextBoxColumn();
            Telerik.WinControls.UI.GridViewTextBoxColumn gridViewTextBoxColumn4 = new Telerik.WinControls.UI.GridViewTextBoxColumn();
            Telerik.WinControls.UI.GridViewTextBoxColumn gridViewTextBoxColumn5 = new Telerik.WinControls.UI.GridViewTextBoxColumn();
            Telerik.WinControls.UI.GridViewTextBoxColumn gridViewTextBoxColumn6 = new Telerik.WinControls.UI.GridViewTextBoxColumn();
            Telerik.WinControls.UI.GridViewTextBoxColumn gridViewTextBoxColumn7 = new Telerik.WinControls.UI.GridViewTextBoxColumn();
            Telerik.WinControls.UI.GridViewTextBoxColumn gridViewTextBoxColumn8 = new Telerik.WinControls.UI.GridViewTextBoxColumn();
            Telerik.WinControls.UI.GridViewTextBoxColumn gridViewTextBoxColumn9 = new Telerik.WinControls.UI.GridViewTextBoxColumn();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.TXTItem = new Telerik.WinControls.UI.RadTextBoxControl();
            this.radGroupBox1 = new Telerik.WinControls.UI.RadGroupBox();
            this.GridItems = new Telerik.WinControls.UI.RadGridView();
            this.radGroupBox2 = new Telerik.WinControls.UI.RadGroupBox();
            this.GridUrun2 = new Telerik.WinControls.UI.RadGridView();
            this.BTNClear = new Telerik.WinControls.UI.RadButton();
            this.BTNSearch = new Telerik.WinControls.UI.RadButton();
            ((System.ComponentModel.ISupportInitialize)(this.TXTItem)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radGroupBox1)).BeginInit();
            this.radGroupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.GridItems)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.GridItems.MasterTemplate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radGroupBox2)).BeginInit();
            this.radGroupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.GridUrun2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.GridUrun2.MasterTemplate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BTNClear)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BTNSearch)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            this.SuspendLayout();
            // 
            // simpleButton1
            // 
            this.simpleButton1.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.simpleButton1.Appearance.BackColor2 = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.simpleButton1.Appearance.Font = new System.Drawing.Font("Segoe UI", 15.75F);
            this.simpleButton1.Appearance.Options.UseBackColor = true;
            this.simpleButton1.Appearance.Options.UseBorderColor = true;
            this.simpleButton1.Appearance.Options.UseFont = true;
            this.simpleButton1.Appearance.Options.UseTextOptions = true;
            this.simpleButton1.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.simpleButton1.Location = new System.Drawing.Point(2, 3);
            this.simpleButton1.LookAndFeel.SkinName = "Office 2010 Blue";
            this.simpleButton1.LookAndFeel.UseDefaultLookAndFeel = false;
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(139, 43);
            this.simpleButton1.TabIndex = 6;
            this.simpleButton1.Text = "Açıklama/Kod";
            // 
            // TXTItem
            // 
            this.TXTItem.Font = new System.Drawing.Font("Segoe UI", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.TXTItem.Location = new System.Drawing.Point(0, 1);
            this.TXTItem.Name = "TXTItem";
            this.TXTItem.Padding = new System.Windows.Forms.Padding(140, 0, 0, 0);
            this.TXTItem.Size = new System.Drawing.Size(573, 47);
            this.TXTItem.TabIndex = 7;
            this.TXTItem.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.TXTItem_KeyPress);
            // 
            // radGroupBox1
            // 
            this.radGroupBox1.AccessibleRole = System.Windows.Forms.AccessibleRole.Grouping;
            this.radGroupBox1.Controls.Add(this.GridItems);
            this.radGroupBox1.HeaderText = "Aranan Ürünler";
            this.radGroupBox1.Location = new System.Drawing.Point(2, 54);
            this.radGroupBox1.Name = "radGroupBox1";
            this.radGroupBox1.Size = new System.Drawing.Size(571, 397);
            this.radGroupBox1.TabIndex = 8;
            this.radGroupBox1.Text = "Aranan Ürünler";
            this.radGroupBox1.ThemeName = "Aqua";
            // 
            // GridItems
            // 
            this.GridItems.BackColor = System.Drawing.Color.Transparent;
            this.GridItems.Cursor = System.Windows.Forms.Cursors.Default;
            this.GridItems.Dock = System.Windows.Forms.DockStyle.Fill;
            this.GridItems.Font = new System.Drawing.Font("Verdana", 9.75F);
            this.GridItems.ForeColor = System.Drawing.Color.Black;
            this.GridItems.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.GridItems.Location = new System.Drawing.Point(2, 18);
            // 
            // GridItems
            // 
            this.GridItems.MasterTemplate.AllowAddNewRow = false;
            gridViewTextBoxColumn1.EnableExpressionEditor = false;
            gridViewTextBoxColumn1.FieldName = "STGRPCODE";
            gridViewTextBoxColumn1.HeaderText = "Grup Kodu";
            gridViewTextBoxColumn1.Name = "column1";
            gridViewTextBoxColumn1.Width = 137;
            gridViewTextBoxColumn2.EnableExpressionEditor = false;
            gridViewTextBoxColumn2.FieldName = "CODE";
            gridViewTextBoxColumn2.HeaderText = "Kodu";
            gridViewTextBoxColumn2.Name = "column2";
            gridViewTextBoxColumn2.Width = 108;
            gridViewTextBoxColumn3.EnableExpressionEditor = false;
            gridViewTextBoxColumn3.FieldName = "NAME";
            gridViewTextBoxColumn3.HeaderText = "Açıklama";
            gridViewTextBoxColumn3.Name = "column3";
            gridViewTextBoxColumn3.Width = 122;
            gridViewTextBoxColumn4.EnableExpressionEditor = false;
            gridViewTextBoxColumn4.FieldName = "NAME3";
            gridViewTextBoxColumn4.HeaderText = "Açıklama 2";
            gridViewTextBoxColumn4.Name = "column4";
            gridViewTextBoxColumn4.Width = 99;
            gridViewTextBoxColumn5.FieldName = "LOGICALREF";
            gridViewTextBoxColumn5.HeaderText = "LOGICALREF";
            gridViewTextBoxColumn5.IsVisible = false;
            gridViewTextBoxColumn5.Name = "LOGICALREF";
            this.GridItems.MasterTemplate.Columns.AddRange(new Telerik.WinControls.UI.GridViewDataColumn[] {
            gridViewTextBoxColumn1,
            gridViewTextBoxColumn2,
            gridViewTextBoxColumn3,
            gridViewTextBoxColumn4,
            gridViewTextBoxColumn5});
            this.GridItems.MasterTemplate.EnableGrouping = false;
            this.GridItems.Name = "GridItems";
            this.GridItems.ReadOnly = true;
            this.GridItems.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.GridItems.Size = new System.Drawing.Size(567, 377);
            this.GridItems.TabIndex = 0;
            this.GridItems.Text = "radGridView1";
            this.GridItems.ThemeName = "Aqua";
            this.GridItems.CellDoubleClick += new Telerik.WinControls.UI.GridViewCellEventHandler(this.GridItems_CellDoubleClick);
            // 
            // radGroupBox2
            // 
            this.radGroupBox2.AccessibleRole = System.Windows.Forms.AccessibleRole.Grouping;
            this.radGroupBox2.Controls.Add(this.GridUrun2);
            this.radGroupBox2.HeaderText = "İçindeki Ürünler";
            this.radGroupBox2.Location = new System.Drawing.Point(577, 54);
            this.radGroupBox2.Name = "radGroupBox2";
            this.radGroupBox2.Size = new System.Drawing.Size(461, 395);
            this.radGroupBox2.TabIndex = 9;
            this.radGroupBox2.Text = "İçindeki Ürünler";
            this.radGroupBox2.ThemeName = "Aqua";
            // 
            // GridUrun2
            // 
            this.GridUrun2.BackColor = System.Drawing.Color.Transparent;
            this.GridUrun2.Cursor = System.Windows.Forms.Cursors.Default;
            this.GridUrun2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.GridUrun2.Font = new System.Drawing.Font("Verdana", 9.75F);
            this.GridUrun2.ForeColor = System.Drawing.Color.Black;
            this.GridUrun2.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.GridUrun2.Location = new System.Drawing.Point(2, 18);
            // 
            // GridUrun2
            // 
            this.GridUrun2.MasterTemplate.AllowAddNewRow = false;
            gridViewTextBoxColumn6.EnableExpressionEditor = false;
            gridViewTextBoxColumn6.FieldName = "STGRPCODE";
            gridViewTextBoxColumn6.HeaderText = "Grup Kodu";
            gridViewTextBoxColumn6.Name = "column1";
            gridViewTextBoxColumn6.Width = 143;
            gridViewTextBoxColumn7.EnableExpressionEditor = false;
            gridViewTextBoxColumn7.FieldName = "CODE";
            gridViewTextBoxColumn7.HeaderText = "Ürün Kodu";
            gridViewTextBoxColumn7.Name = "column2";
            gridViewTextBoxColumn7.Width = 138;
            gridViewTextBoxColumn8.EnableExpressionEditor = false;
            gridViewTextBoxColumn8.FieldName = "NAME";
            gridViewTextBoxColumn8.HeaderText = "AÇIKLAMA";
            gridViewTextBoxColumn8.Name = "column3";
            gridViewTextBoxColumn8.Width = 223;
            gridViewTextBoxColumn9.EnableExpressionEditor = false;
            gridViewTextBoxColumn9.FieldName = "LOGICALREF";
            gridViewTextBoxColumn9.HeaderText = "column4";
            gridViewTextBoxColumn9.IsVisible = false;
            gridViewTextBoxColumn9.Name = "LOGICALREF";
            this.GridUrun2.MasterTemplate.Columns.AddRange(new Telerik.WinControls.UI.GridViewDataColumn[] {
            gridViewTextBoxColumn6,
            gridViewTextBoxColumn7,
            gridViewTextBoxColumn8,
            gridViewTextBoxColumn9});
            this.GridUrun2.MasterTemplate.EnableGrouping = false;
            this.GridUrun2.Name = "GridUrun2";
            this.GridUrun2.ReadOnly = true;
            this.GridUrun2.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.GridUrun2.Size = new System.Drawing.Size(457, 375);
            this.GridUrun2.TabIndex = 2;
            this.GridUrun2.Text = "radGridView2";
            this.GridUrun2.ThemeName = "Aqua";
            this.GridUrun2.CellDoubleClick += new Telerik.WinControls.UI.GridViewCellEventHandler(this.GridUrun2_CellDoubleClick);
            // 
            // BTNClear
            // 
            this.BTNClear.Font = new System.Drawing.Font("Verdana", 12F);
            this.BTNClear.Location = new System.Drawing.Point(688, 1);
            this.BTNClear.Name = "BTNClear";
            this.BTNClear.Size = new System.Drawing.Size(103, 47);
            this.BTNClear.TabIndex = 10;
            this.BTNClear.Text = "Temizle";
            this.BTNClear.ThemeName = "Aqua";
            this.BTNClear.Click += new System.EventHandler(this.BTNClear_Click);
            // 
            // BTNSearch
            // 
            this.BTNSearch.Font = new System.Drawing.Font("Verdana", 12F);
            this.BTNSearch.Location = new System.Drawing.Point(579, 1);
            this.BTNSearch.Name = "BTNSearch";
            this.BTNSearch.Size = new System.Drawing.Size(103, 47);
            this.BTNSearch.TabIndex = 11;
            this.BTNSearch.Text = "Ara";
            this.BTNSearch.ThemeName = "Aqua";
            this.BTNSearch.Click += new System.EventHandler(this.BTNSearch_Click);
            // 
            // ZZAltmini
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Silver;
            this.ClientSize = new System.Drawing.Size(1040, 448);
            this.Controls.Add(this.BTNClear);
            this.Controls.Add(this.BTNSearch);
            this.Controls.Add(this.radGroupBox2);
            this.Controls.Add(this.radGroupBox1);
            this.Controls.Add(this.simpleButton1);
            this.Controls.Add(this.TXTItem);
            this.Name = "ZZAltmini";
            // 
            // 
            // 
            this.RootElement.ApplyShapeToControl = true;
            this.Text = "Seçilen Ürün";
            this.ThemeName = "Aqua";
            this.Load += new System.EventHandler(this.ZZAltmini_Load);
            ((System.ComponentModel.ISupportInitialize)(this.TXTItem)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radGroupBox1)).EndInit();
            this.radGroupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.GridItems.MasterTemplate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.GridItems)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radGroupBox2)).EndInit();
            this.radGroupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.GridUrun2.MasterTemplate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.GridUrun2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BTNClear)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BTNSearch)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private Telerik.WinControls.UI.RadTextBoxControl TXTItem;
        private Telerik.WinControls.UI.RadGroupBox radGroupBox1;
        private Telerik.WinControls.UI.RadGridView GridItems;
        private Telerik.WinControls.UI.RadGroupBox radGroupBox2;
        private Telerik.WinControls.UI.RadButton BTNClear;
        private Telerik.WinControls.UI.RadButton BTNSearch;
        private Telerik.WinControls.UI.RadGridView GridUrun2;
    }
}
