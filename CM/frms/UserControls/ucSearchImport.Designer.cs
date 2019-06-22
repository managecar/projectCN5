namespace frms
{
    partial class ucSearchImport
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ucSearchImport));
            this.label5 = new System.Windows.Forms.Label();
            this.btnUndo = new System.Windows.Forms.Button();
            this.dgvImport = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.txtImportID = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgvImport)).BeginInit();
            this.SuspendLayout();
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Century Gothic", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.Color.Purple;
            this.label5.Location = new System.Drawing.Point(26, 21);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(220, 36);
            this.label5.TabIndex = 11;
            this.label5.Text = "Search Import:";
            // 
            // btnUndo
            // 
            this.btnUndo.FlatAppearance.BorderSize = 0;
            this.btnUndo.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnUndo.Image = ((System.Drawing.Image)(resources.GetObject("btnUndo.Image")));
            this.btnUndo.Location = new System.Drawing.Point(565, 0);
            this.btnUndo.Name = "btnUndo";
            this.btnUndo.Size = new System.Drawing.Size(33, 33);
            this.btnUndo.TabIndex = 12;
            this.btnUndo.UseVisualStyleBackColor = true;
            // 
            // dgvImport
            // 
            this.dgvImport.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvImport.Location = new System.Drawing.Point(42, 60);
            this.dgvImport.Name = "dgvImport";
            this.dgvImport.Size = new System.Drawing.Size(515, 222);
            this.dgvImport.TabIndex = 13;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Century Gothic", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(38, 298);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(146, 22);
            this.label1.TabIndex = 14;
            this.label1.Text = "Enter ImportID:";
            // 
            // txtImportID
            // 
            this.txtImportID.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txtImportID.Font = new System.Drawing.Font("Century Gothic", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtImportID.Location = new System.Drawing.Point(191, 293);
            this.txtImportID.Multiline = true;
            this.txtImportID.Name = "txtImportID";
            this.txtImportID.Size = new System.Drawing.Size(294, 30);
            this.txtImportID.TabIndex = 15;
            // 
            // ucSearchImport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.txtImportID);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dgvImport);
            this.Controls.Add(this.btnUndo);
            this.Controls.Add(this.label5);
            this.Name = "ucSearchImport";
            this.Size = new System.Drawing.Size(598, 341);
            ((System.ComponentModel.ISupportInitialize)(this.dgvImport)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnUndo;
        private System.Windows.Forms.DataGridView dgvImport;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtImportID;
    }
}
