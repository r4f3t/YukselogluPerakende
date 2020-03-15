namespace B2BAdmin
{
    partial class FRMGiris
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
            this.TXTUNAME = new System.Windows.Forms.TextBox();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.TXTUPASS = new System.Windows.Forms.TextBox();
            this.BTNGiris = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // TXTUNAME
            // 
            this.TXTUNAME.BackColor = System.Drawing.SystemColors.Window;
            this.TXTUNAME.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.TXTUNAME.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.TXTUNAME.Location = new System.Drawing.Point(158, 162);
            this.TXTUNAME.Name = "TXTUNAME";
            this.TXTUNAME.Size = new System.Drawing.Size(198, 26);
            this.TXTUNAME.TabIndex = 0;
            // 
            // textBox3
            // 
            this.textBox3.BackColor = System.Drawing.SystemColors.Control;
            this.textBox3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBox3.Font = new System.Drawing.Font("Trebuchet MS", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.textBox3.Location = new System.Drawing.Point(42, 162);
            this.textBox3.Name = "textBox3";
            this.textBox3.ReadOnly = true;
            this.textBox3.Size = new System.Drawing.Size(116, 26);
            this.textBox3.TabIndex = 99;
            this.textBox3.Text = "Kullanıcı Adı";
            // 
            // textBox1
            // 
            this.textBox1.BackColor = System.Drawing.SystemColors.Control;
            this.textBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBox1.Font = new System.Drawing.Font("Trebuchet MS", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.textBox1.Location = new System.Drawing.Point(42, 194);
            this.textBox1.Name = "textBox1";
            this.textBox1.ReadOnly = true;
            this.textBox1.Size = new System.Drawing.Size(116, 26);
            this.textBox1.TabIndex = 99;
            this.textBox1.Text = "Şifre";
            // 
            // TXTUPASS
            // 
            this.TXTUPASS.BackColor = System.Drawing.SystemColors.Window;
            this.TXTUPASS.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.TXTUPASS.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.TXTUPASS.Location = new System.Drawing.Point(158, 194);
            this.TXTUPASS.Name = "TXTUPASS";
            this.TXTUPASS.PasswordChar = '*';
            this.TXTUPASS.Size = new System.Drawing.Size(198, 26);
            this.TXTUPASS.TabIndex = 1;
            this.TXTUPASS.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.TXTUPASS_KeyPress);
            // 
            // BTNGiris
            // 
            this.BTNGiris.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.BTNGiris.Font = new System.Drawing.Font("Trebuchet MS", 9F);
            this.BTNGiris.Location = new System.Drawing.Point(158, 226);
            this.BTNGiris.Name = "BTNGiris";
            this.BTNGiris.Size = new System.Drawing.Size(198, 32);
            this.BTNGiris.TabIndex = 2;
            this.BTNGiris.Text = "Giriş Yap";
            this.BTNGiris.UseVisualStyleBackColor = true;
            this.BTNGiris.Click += new System.EventHandler(this.BTNGiris_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::B2BAdmin.Properties.Resources.infokoza;
            this.pictureBox1.Location = new System.Drawing.Point(29, 7);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(352, 149);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 10;
            this.pictureBox1.TabStop = false;
            // 
            // FRMGiris
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(408, 298);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.BTNGiris);
            this.Controls.Add(this.TXTUPASS);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.TXTUNAME);
            this.Controls.Add(this.textBox3);
            this.Name = "FRMGiris";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FRMGiris";
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox TXTUNAME;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.TextBox TXTUPASS;
        private System.Windows.Forms.Button BTNGiris;
        private System.Windows.Forms.PictureBox pictureBox1;
    }
}