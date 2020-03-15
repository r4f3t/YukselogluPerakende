namespace B2BAdmin
{
    partial class FrmSepet
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
            this.GridSepet = new Telerik.WinControls.UI.RadGridView();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.DTPBit = new DevExpress.XtraEditors.DateEdit();
            this.DTPBas = new DevExpress.XtraEditors.DateEdit();
            this.BTNCMPGNADD = new System.Windows.Forms.Button();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.textBox4 = new System.Windows.Forms.TextBox();
            this.BTNTum = new System.Windows.Forms.Button();
            this.BTNNoAkt = new System.Windows.Forms.Button();
            this.BTNAkt = new System.Windows.Forms.Button();
            this.BTNNoTI = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.GridSepet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.GridSepet.MasterTemplate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DTPBit.Properties.CalendarTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DTPBit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DTPBas.Properties.CalendarTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DTPBas.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // GridSepet
            // 
            this.GridSepet.Dock = System.Windows.Forms.DockStyle.Fill;
            this.GridSepet.Location = new System.Drawing.Point(2, 2);
            // 
            // GridSepet
            // 
            this.GridSepet.MasterTemplate.AllowAddNewRow = false;
            this.GridSepet.MasterTemplate.AllowColumnReorder = false;
            gridViewTextBoxColumn1.FieldName = "FICHENO";
            gridViewTextBoxColumn1.HeaderText = "Fiş Numarası";
            gridViewTextBoxColumn1.Name = "FICHENO";
            gridViewTextBoxColumn1.Width = 150;
            gridViewTextBoxColumn2.FieldName = "DEFINITION_";
            gridViewTextBoxColumn2.HeaderText = "Cari Adı";
            gridViewTextBoxColumn2.Name = "DEFINITION_";
            gridViewTextBoxColumn2.Width = 200;
            gridViewTextBoxColumn3.FieldName = "DATE_";
            gridViewTextBoxColumn3.FormatString = "{0:dd/MM/yyyy}";
            gridViewTextBoxColumn3.HeaderText = "Tarih";
            gridViewTextBoxColumn3.Name = "Tarih";
            gridViewTextBoxColumn3.Width = 100;
            gridViewTextBoxColumn4.FieldName = "LineTutar";
            gridViewTextBoxColumn4.FormatString = "{0:#.##}";
            gridViewTextBoxColumn4.HeaderText = "Tutar";
            gridViewTextBoxColumn4.Name = "LineTutar";
            gridViewTextBoxColumn4.Width = 100;
            gridViewTextBoxColumn5.FieldName = "GenelI";
            gridViewTextBoxColumn5.FormatString = "{0:#.##}";
            gridViewTextBoxColumn5.HeaderText = "Genel İnd.";
            gridViewTextBoxColumn5.Name = "GenelI";
            gridViewTextBoxColumn5.Width = 100;
            gridViewTextBoxColumn6.FieldName = "VADI";
            gridViewTextBoxColumn6.FormatString = "{0:#.##}";
            gridViewTextBoxColumn6.HeaderText = "Vade İndirim";
            gridViewTextBoxColumn6.Name = "VADI";
            gridViewTextBoxColumn6.Width = 100;
            gridViewTextBoxColumn7.FieldName = "MIKI";
            gridViewTextBoxColumn7.FormatString = "{0:#.##}";
            gridViewTextBoxColumn7.HeaderText = "Mik İndirim";
            gridViewTextBoxColumn7.Name = "MIKI";
            gridViewTextBoxColumn7.Width = 100;
            gridViewTextBoxColumn8.FieldName = "CLIENTREF";
            gridViewTextBoxColumn8.HeaderText = "column1";
            gridViewTextBoxColumn8.IsVisible = false;
            gridViewTextBoxColumn8.Name = "CLIENTREF";
            this.GridSepet.MasterTemplate.Columns.AddRange(new Telerik.WinControls.UI.GridViewDataColumn[] {
            gridViewTextBoxColumn1,
            gridViewTextBoxColumn2,
            gridViewTextBoxColumn3,
            gridViewTextBoxColumn4,
            gridViewTextBoxColumn5,
            gridViewTextBoxColumn6,
            gridViewTextBoxColumn7,
            gridViewTextBoxColumn8});
            this.GridSepet.Name = "GridSepet";
            this.GridSepet.ReadOnly = true;
            this.GridSepet.Size = new System.Drawing.Size(847, 388);
            this.GridSepet.TabIndex = 0;
            this.GridSepet.Text = "radGridView1";
            this.GridSepet.CellDoubleClick += new Telerik.WinControls.UI.GridViewCellEventHandler(this.GridSepet_CellDoubleClick);
            // 
            // panelControl1
            // 
            this.panelControl1.Controls.Add(this.GridSepet);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelControl1.Location = new System.Drawing.Point(0, 93);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(851, 392);
            this.panelControl1.TabIndex = 1;
            // 
            // groupControl1
            // 
            this.groupControl1.Controls.Add(this.DTPBit);
            this.groupControl1.Controls.Add(this.DTPBas);
            this.groupControl1.Controls.Add(this.BTNCMPGNADD);
            this.groupControl1.Controls.Add(this.textBox1);
            this.groupControl1.Controls.Add(this.textBox4);
            this.groupControl1.Location = new System.Drawing.Point(0, 37);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(847, 58);
            this.groupControl1.TabIndex = 2;
            this.groupControl1.Text = "Arama Kriterleri";
            this.groupControl1.Paint += new System.Windows.Forms.PaintEventHandler(this.groupControl1_Paint);
            // 
            // DTPBit
            // 
            this.DTPBit.EditValue = null;
            this.DTPBit.Location = new System.Drawing.Point(347, 21);
            this.DTPBit.Name = "DTPBit";
            this.DTPBit.Properties.Appearance.Font = new System.Drawing.Font("Trebuchet MS", 12F);
            this.DTPBit.Properties.Appearance.Options.UseFont = true;
            this.DTPBit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.DTPBit.Properties.CalendarTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.DTPBit.Properties.CalendarTimeProperties.CloseUpKey = new DevExpress.Utils.KeyShortcut(System.Windows.Forms.Keys.F4);
            this.DTPBit.Properties.CalendarTimeProperties.PopupBorderStyle = DevExpress.XtraEditors.Controls.PopupBorderStyles.Default;
            this.DTPBit.Size = new System.Drawing.Size(125, 28);
            this.DTPBit.TabIndex = 15;
            // 
            // DTPBas
            // 
            this.DTPBas.EditValue = null;
            this.DTPBas.Location = new System.Drawing.Point(115, 21);
            this.DTPBas.Name = "DTPBas";
            this.DTPBas.Properties.Appearance.Font = new System.Drawing.Font("Trebuchet MS", 12F);
            this.DTPBas.Properties.Appearance.Options.UseFont = true;
            this.DTPBas.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.DTPBas.Properties.CalendarTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.DTPBas.Properties.CalendarTimeProperties.CloseUpKey = new DevExpress.Utils.KeyShortcut(System.Windows.Forms.Keys.F4);
            this.DTPBas.Properties.CalendarTimeProperties.PopupBorderStyle = DevExpress.XtraEditors.Controls.PopupBorderStyles.Default;
            this.DTPBas.Size = new System.Drawing.Size(119, 28);
            this.DTPBas.TabIndex = 15;
            // 
            // BTNCMPGNADD
            // 
            this.BTNCMPGNADD.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.BTNCMPGNADD.Font = new System.Drawing.Font("Trebuchet MS", 9F);
            this.BTNCMPGNADD.Location = new System.Drawing.Point(472, 22);
            this.BTNCMPGNADD.Name = "BTNCMPGNADD";
            this.BTNCMPGNADD.Size = new System.Drawing.Size(115, 26);
            this.BTNCMPGNADD.TabIndex = 14;
            this.BTNCMPGNADD.Text = "Listele";
            this.BTNCMPGNADD.UseVisualStyleBackColor = true;
            this.BTNCMPGNADD.Click += new System.EventHandler(this.BTNCMPGNADD_Click);
            // 
            // textBox1
            // 
            this.textBox1.BackColor = System.Drawing.SystemColors.Control;
            this.textBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBox1.Font = new System.Drawing.Font("Trebuchet MS", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.textBox1.Location = new System.Drawing.Point(235, 22);
            this.textBox1.Name = "textBox1";
            this.textBox1.ReadOnly = true;
            this.textBox1.Size = new System.Drawing.Size(112, 26);
            this.textBox1.TabIndex = 11;
            this.textBox1.Text = "Bit.Tarih";
            // 
            // textBox4
            // 
            this.textBox4.BackColor = System.Drawing.SystemColors.Control;
            this.textBox4.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBox4.Font = new System.Drawing.Font("Trebuchet MS", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.textBox4.Location = new System.Drawing.Point(3, 22);
            this.textBox4.Name = "textBox4";
            this.textBox4.ReadOnly = true;
            this.textBox4.Size = new System.Drawing.Size(112, 26);
            this.textBox4.TabIndex = 11;
            this.textBox4.Text = "Baş.Tarih";
            // 
            // BTNTum
            // 
            this.BTNTum.BackColor = System.Drawing.Color.WhiteSmoke;
            this.BTNTum.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.BTNTum.Font = new System.Drawing.Font("Trebuchet MS", 9F);
            this.BTNTum.Location = new System.Drawing.Point(0, 0);
            this.BTNTum.Name = "BTNTum";
            this.BTNTum.Size = new System.Drawing.Size(154, 37);
            this.BTNTum.TabIndex = 14;
            this.BTNTum.Text = "Tüm Siparişler";
            this.BTNTum.UseVisualStyleBackColor = false;
            this.BTNTum.Click += new System.EventHandler(this.BTNTum_Click);
            // 
            // BTNNoAkt
            // 
            this.BTNNoAkt.BackColor = System.Drawing.Color.WhiteSmoke;
            this.BTNNoAkt.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.BTNNoAkt.Font = new System.Drawing.Font("Trebuchet MS", 9F);
            this.BTNNoAkt.Location = new System.Drawing.Point(154, 0);
            this.BTNNoAkt.Name = "BTNNoAkt";
            this.BTNNoAkt.Size = new System.Drawing.Size(154, 37);
            this.BTNNoAkt.TabIndex = 14;
            this.BTNNoAkt.Text = "Aktarılmayanlar";
            this.BTNNoAkt.UseVisualStyleBackColor = false;
            this.BTNNoAkt.Click += new System.EventHandler(this.BTNNoAkt_Click);
            // 
            // BTNAkt
            // 
            this.BTNAkt.BackColor = System.Drawing.Color.WhiteSmoke;
            this.BTNAkt.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.BTNAkt.Font = new System.Drawing.Font("Trebuchet MS", 9F);
            this.BTNAkt.Location = new System.Drawing.Point(308, 0);
            this.BTNAkt.Name = "BTNAkt";
            this.BTNAkt.Size = new System.Drawing.Size(154, 37);
            this.BTNAkt.TabIndex = 14;
            this.BTNAkt.Text = "Aktarılanlar";
            this.BTNAkt.UseVisualStyleBackColor = false;
            this.BTNAkt.Click += new System.EventHandler(this.BTNAkt_Click);
            // 
            // BTNNoTI
            // 
            this.BTNNoTI.BackColor = System.Drawing.Color.WhiteSmoke;
            this.BTNNoTI.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.BTNNoTI.Font = new System.Drawing.Font("Trebuchet MS", 9F);
            this.BTNNoTI.Location = new System.Drawing.Point(462, 0);
            this.BTNNoTI.Name = "BTNNoTI";
            this.BTNNoTI.Size = new System.Drawing.Size(154, 37);
            this.BTNNoTI.TabIndex = 14;
            this.BTNNoTI.Text = "TIGER da Olmayanlar";
            this.BTNNoTI.UseVisualStyleBackColor = false;
            this.BTNNoTI.Click += new System.EventHandler(this.BTNNoTI_Click);
            // 
            // FrmSepet
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(851, 485);
            this.Controls.Add(this.BTNNoTI);
            this.Controls.Add(this.BTNAkt);
            this.Controls.Add(this.BTNNoAkt);
            this.Controls.Add(this.BTNTum);
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(this.panelControl1);
            this.Name = "FrmSepet";
            this.Text = "FrmSepet";
            this.Load += new System.EventHandler(this.FrmSepet_Load);
            this.Resize += new System.EventHandler(this.FrmSepet_Resize);
            ((System.ComponentModel.ISupportInitialize)(this.GridSepet.MasterTemplate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.GridSepet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DTPBit.Properties.CalendarTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DTPBit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DTPBas.Properties.CalendarTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DTPBas.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Telerik.WinControls.UI.RadGridView GridSepet;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.TextBox textBox4;
        private System.Windows.Forms.Button BTNCMPGNADD;
        private System.Windows.Forms.Button BTNTum;
        private System.Windows.Forms.Button BTNNoAkt;
        private System.Windows.Forms.Button BTNAkt;
        private System.Windows.Forms.Button BTNNoTI;
        private DevExpress.XtraEditors.DateEdit DTPBit;
        private DevExpress.XtraEditors.DateEdit DTPBas;
    }
}