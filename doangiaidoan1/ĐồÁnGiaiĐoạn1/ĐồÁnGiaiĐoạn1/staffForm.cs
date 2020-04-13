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
    public partial class staffForm : Form
    {
        public staffForm()
        {
            InitializeComponent();
        }

        private void changePasswordToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ChangePassForm frm = new ChangePassForm();
            frm.label1.Name = "staff";
            frm.Show();
        }

        private void informationToolStripMenuItem_Click(object sender, EventArgs e)
        {
            InformationForm frm = new InformationForm();
            frm.label2.Name = label4.Name;
            frm.label3.Name = "staff";
            frm.Show();
        }
    }
}
