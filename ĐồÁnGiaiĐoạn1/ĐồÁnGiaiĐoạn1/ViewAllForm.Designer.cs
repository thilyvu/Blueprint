namespace ĐồÁnGiaiĐoạn1
{
    partial class ViewAllForm
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
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.blueprintsDataSet1 = new ĐồÁnGiaiĐoạn1.blueprintsDataSet1();
            this.employeeBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.employeeTableAdapter = new ĐồÁnGiaiĐoạn1.blueprintsDataSet1TableAdapters.employeeTableAdapter();
            this.iDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.fIRSTNAMEDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.lASTNAMEDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pHONEDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.bIRHDAYDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.eMPLOYEEADDRESSDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.iDNUMBERDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.hOURSOFWORKDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.blueprintsDataSet1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.employeeBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.iDDataGridViewTextBoxColumn,
            this.fIRSTNAMEDataGridViewTextBoxColumn,
            this.lASTNAMEDataGridViewTextBoxColumn,
            this.pHONEDataGridViewTextBoxColumn,
            this.bIRHDAYDataGridViewTextBoxColumn,
            this.eMPLOYEEADDRESSDataGridViewTextBoxColumn,
            this.iDNUMBERDataGridViewTextBoxColumn,
            this.hOURSOFWORKDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.employeeBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(12, 82);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(1511, 511);
            this.dataGridView1.TabIndex = 0;
            // 
            // blueprintsDataSet1
            // 
            this.blueprintsDataSet1.DataSetName = "blueprintsDataSet1";
            this.blueprintsDataSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // employeeBindingSource
            // 
            this.employeeBindingSource.DataMember = "employee";
            this.employeeBindingSource.DataSource = this.blueprintsDataSet1;
            // 
            // employeeTableAdapter
            // 
            this.employeeTableAdapter.ClearBeforeFill = true;
            // 
            // iDDataGridViewTextBoxColumn
            // 
            this.iDDataGridViewTextBoxColumn.DataPropertyName = "ID";
            this.iDDataGridViewTextBoxColumn.HeaderText = "ID";
            this.iDDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.iDDataGridViewTextBoxColumn.Name = "iDDataGridViewTextBoxColumn";
            this.iDDataGridViewTextBoxColumn.Width = 125;
            // 
            // fIRSTNAMEDataGridViewTextBoxColumn
            // 
            this.fIRSTNAMEDataGridViewTextBoxColumn.DataPropertyName = "FIRSTNAME";
            this.fIRSTNAMEDataGridViewTextBoxColumn.HeaderText = "FIRSTNAME";
            this.fIRSTNAMEDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.fIRSTNAMEDataGridViewTextBoxColumn.Name = "fIRSTNAMEDataGridViewTextBoxColumn";
            this.fIRSTNAMEDataGridViewTextBoxColumn.Width = 125;
            // 
            // lASTNAMEDataGridViewTextBoxColumn
            // 
            this.lASTNAMEDataGridViewTextBoxColumn.DataPropertyName = "LASTNAME";
            this.lASTNAMEDataGridViewTextBoxColumn.HeaderText = "LASTNAME";
            this.lASTNAMEDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.lASTNAMEDataGridViewTextBoxColumn.Name = "lASTNAMEDataGridViewTextBoxColumn";
            this.lASTNAMEDataGridViewTextBoxColumn.Width = 125;
            // 
            // pHONEDataGridViewTextBoxColumn
            // 
            this.pHONEDataGridViewTextBoxColumn.DataPropertyName = "PHONE";
            this.pHONEDataGridViewTextBoxColumn.HeaderText = "PHONE";
            this.pHONEDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.pHONEDataGridViewTextBoxColumn.Name = "pHONEDataGridViewTextBoxColumn";
            this.pHONEDataGridViewTextBoxColumn.Width = 125;
            // 
            // bIRHDAYDataGridViewTextBoxColumn
            // 
            this.bIRHDAYDataGridViewTextBoxColumn.DataPropertyName = "BIRHDAY";
            this.bIRHDAYDataGridViewTextBoxColumn.HeaderText = "BIRHDAY";
            this.bIRHDAYDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.bIRHDAYDataGridViewTextBoxColumn.Name = "bIRHDAYDataGridViewTextBoxColumn";
            this.bIRHDAYDataGridViewTextBoxColumn.Width = 125;
            // 
            // eMPLOYEEADDRESSDataGridViewTextBoxColumn
            // 
            this.eMPLOYEEADDRESSDataGridViewTextBoxColumn.DataPropertyName = "EMPLOYEEADDRESS";
            this.eMPLOYEEADDRESSDataGridViewTextBoxColumn.HeaderText = "EMPLOYEEADDRESS";
            this.eMPLOYEEADDRESSDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.eMPLOYEEADDRESSDataGridViewTextBoxColumn.Name = "eMPLOYEEADDRESSDataGridViewTextBoxColumn";
            this.eMPLOYEEADDRESSDataGridViewTextBoxColumn.Width = 125;
            // 
            // iDNUMBERDataGridViewTextBoxColumn
            // 
            this.iDNUMBERDataGridViewTextBoxColumn.DataPropertyName = "IDNUMBER";
            this.iDNUMBERDataGridViewTextBoxColumn.HeaderText = "IDNUMBER";
            this.iDNUMBERDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.iDNUMBERDataGridViewTextBoxColumn.Name = "iDNUMBERDataGridViewTextBoxColumn";
            this.iDNUMBERDataGridViewTextBoxColumn.Width = 125;
            // 
            // hOURSOFWORKDataGridViewTextBoxColumn
            // 
            this.hOURSOFWORKDataGridViewTextBoxColumn.DataPropertyName = "HOURSOFWORK";
            this.hOURSOFWORKDataGridViewTextBoxColumn.HeaderText = "HOURSOFWORK";
            this.hOURSOFWORKDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.hOURSOFWORKDataGridViewTextBoxColumn.Name = "hOURSOFWORKDataGridViewTextBoxColumn";
            this.hOURSOFWORKDataGridViewTextBoxColumn.Width = 125;
            // 
            // AddEditRemoveForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1636, 666);
            this.Controls.Add(this.dataGridView1);
            this.Name = "AddEditRemoveForm";
            this.Text = "AddEditRemoveForm";
            this.Load += new System.EventHandler(this.AddEditRemoveForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.blueprintsDataSet1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.employeeBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private blueprintsDataSet1 blueprintsDataSet1;
        private System.Windows.Forms.BindingSource employeeBindingSource;
        private blueprintsDataSet1TableAdapters.employeeTableAdapter employeeTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn iDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn fIRSTNAMEDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn lASTNAMEDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn pHONEDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn bIRHDAYDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn eMPLOYEEADDRESSDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn iDNUMBERDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn hOURSOFWORKDataGridViewTextBoxColumn;
    }
}