namespace B2BAdmin
{
    partial class FRMAraItem
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
            this.GridItems = new System.Windows.Forms.DataGridView();
            this.CODE = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NAME = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SPECODE = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SPECODE2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SPECODE3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SPECODE4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SPECODE5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.GridItems)).BeginInit();
            this.SuspendLayout();
            // 
            // GridItems
            // 
            this.GridItems.AllowUserToAddRows = false;
            this.GridItems.AllowUserToDeleteRows = false;
            this.GridItems.AllowUserToOrderColumns = true;
            this.GridItems.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.GridItems.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.GridItems.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.CODE,
            this.NAME,
            this.SPECODE,
            this.SPECODE2,
            this.SPECODE3,
            this.SPECODE4,
            this.SPECODE5});
            this.GridItems.Dock = System.Windows.Forms.DockStyle.Fill;
            this.GridItems.Location = new System.Drawing.Point(0, 0);
            this.GridItems.Name = "GridItems";
            this.GridItems.ReadOnly = true;
            this.GridItems.Size = new System.Drawing.Size(803, 496);
            this.GridItems.TabIndex = 0;
            this.GridItems.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.GridItems_CellContentClick);
            // 
            // CODE
            // 
            this.CODE.DataPropertyName = "CODE";
            this.CODE.HeaderText = "Kodu";
            this.CODE.Name = "CODE";
            this.CODE.ReadOnly = true;
            this.CODE.Width = 180;
            // 
            // NAME
            // 
            this.NAME.DataPropertyName = "NAME";
            this.NAME.HeaderText = "Açıklama";
            this.NAME.Name = "NAME";
            this.NAME.ReadOnly = true;
            // 
            // SPECODE
            // 
            this.SPECODE.DataPropertyName = "SPECODE";
            this.SPECODE.HeaderText = "Özel Kodu";
            this.SPECODE.Name = "SPECODE";
            this.SPECODE.ReadOnly = true;
            // 
            // SPECODE2
            // 
            this.SPECODE2.DataPropertyName = "SPECODE2";
            this.SPECODE2.HeaderText = "Özel Kod 2";
            this.SPECODE2.Name = "SPECODE2";
            this.SPECODE2.ReadOnly = true;
            // 
            // SPECODE3
            // 
            this.SPECODE3.DataPropertyName = "SPECODE3";
            this.SPECODE3.HeaderText = "Özel Kod 3";
            this.SPECODE3.Name = "SPECODE3";
            this.SPECODE3.ReadOnly = true;
            // 
            // SPECODE4
            // 
            this.SPECODE4.DataPropertyName = "SPECODE4";
            this.SPECODE4.HeaderText = "Özel Kod 4";
            this.SPECODE4.Name = "SPECODE4";
            this.SPECODE4.ReadOnly = true;
            // 
            // SPECODE5
            // 
            this.SPECODE5.DataPropertyName = "SPECODE5";
            this.SPECODE5.HeaderText = "Özel Kod 5";
            this.SPECODE5.Name = "SPECODE5";
            this.SPECODE5.ReadOnly = true;
            // 
            // FRMAraItem
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(803, 496);
            this.Controls.Add(this.GridItems);
            this.Name = "FRMAraItem";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FRMAraItem";
            this.Load += new System.EventHandler(this.FRMAraItem_Load);
            ((System.ComponentModel.ISupportInitialize)(this.GridItems)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView GridItems;
        private System.Windows.Forms.DataGridViewTextBoxColumn CODE;
        private System.Windows.Forms.DataGridViewTextBoxColumn NAME;
        private System.Windows.Forms.DataGridViewTextBoxColumn SPECODE;
        private System.Windows.Forms.DataGridViewTextBoxColumn SPECODE2;
        private System.Windows.Forms.DataGridViewTextBoxColumn SPECODE3;
        private System.Windows.Forms.DataGridViewTextBoxColumn SPECODE4;
        private System.Windows.Forms.DataGridViewTextBoxColumn SPECODE5;
    }
}