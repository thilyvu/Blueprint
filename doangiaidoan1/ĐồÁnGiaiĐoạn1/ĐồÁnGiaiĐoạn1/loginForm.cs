using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ĐồÁnGiaiĐoạn1
{
    public partial class loginForm : Form
    {
        public loginForm()
        {
            InitializeComponent();
        }
        public string con = @"Data Source=LAPTOP-CBHLNUT7\SQLEXPRESS;Initial Catalog=blueprints;Integrated Security=True";
        private void btLOGIN_Click(object sender, EventArgs e)
        {
            if(this.label1.Text=="STAFF LOGIN")
            {
                try
                {
                    SqlConnection connect = new SqlConnection(con);
                    connect.Open();
                    if (connect.State == System.Data.ConnectionState.Open)
                    {
                        string u = tbUSER.Text;
                        string p = tbPASS.Text;
                        string query = "SELECT * FROM dbo.StaffAcount WHERE username ='" + u + "'";
                        string query2 = "SELECT * FROM dbo.StaffAcount WHERE pass ='" + p + "'";
                        string query3 = "SELECT ID FROM dbo.StaffAcount WHERE username ='" + u + "'";
                        SqlCommand cmd = new SqlCommand(query, connect);
                        SqlCommand cmd1 = new SqlCommand(query2, connect);
                        SqlCommand cmd2 = new SqlCommand(query3, connect);
                        object k = cmd.ExecuteScalar();
                        object l = cmd1.ExecuteScalar();
                        object r = cmd2.ExecuteScalar();
                        if (k != null && l != null)
                        {
                            staffForm frm = new staffForm();
                            frm.label4.Name = r.ToString();
                            frm.Show();
                            this.Hide();
                        }
                        else
                        {
                            MessageBox.Show("invalid user or password", "can't login", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                    connect.Close();
                }
                catch(Exception e1)
                {
                    MessageBox.Show(e1.Message);
                }
            }
            else
            {
                try
                {
                    SqlConnection connect = new SqlConnection(con);
                    connect.Open();
                    if (connect.State == System.Data.ConnectionState.Open)
                    {
                        string u = tbUSER.Text;
                        string p = tbPASS.Text;
                        string query = "SELECT * FROM dbo.ManagerAcount WHERE username ='" + u + "'";
                        string query2 = "SELECT * FROM dbo.ManagerAcount WHERE pass='" + p + "'";
                        string query3= "SELECT ID FROM dbo.ManagerAcount WHERE username ='" + u + "'";
                        SqlCommand cmd = new SqlCommand(query, connect);
                        SqlCommand cmd1 = new SqlCommand(query2, connect);
                        SqlCommand cmd2 = new SqlCommand(query3, connect);
                        object k = cmd.ExecuteScalar();
                        object l = cmd1.ExecuteScalar();
                        object r = cmd2.ExecuteScalar();
                        if (k != null && l != null)
                        {
                            ManagerForm frm = new ManagerForm();
                            frm.label4.Name = r.ToString();
                            frm.Show();
                            this.Hide();
                        }
                        else
                        {
                            MessageBox.Show("invalid user or password","can't login",MessageBoxButtons.OK,MessageBoxIcon.Error);
                        }
                    }
                    connect.Close();
                }
                catch(Exception e2)
                {
                    MessageBox.Show(e2.Message);
                }
            }

 
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
