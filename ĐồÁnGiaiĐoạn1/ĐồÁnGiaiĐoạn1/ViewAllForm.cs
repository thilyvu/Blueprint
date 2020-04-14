using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ĐồÁnGiaiĐoạn1
{
    public partial class ViewAllForm : Form
    {
        public ViewAllForm()
        {
            InitializeComponent();
        }

        private void AddEditRemoveForm_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'blueprintsDataSet1.employee' table. You can move, or remove it, as needed.
            this.employeeTableAdapter.Fill(this.blueprintsDataSet1.employee);

        }
    }
}
