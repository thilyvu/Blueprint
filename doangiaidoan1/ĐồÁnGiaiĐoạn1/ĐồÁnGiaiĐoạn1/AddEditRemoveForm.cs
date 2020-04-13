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
    public partial class AddEditRemoveForm : Form
    {
        public AddEditRemoveForm()
        {
            InitializeComponent();
        }
        public string con = @"Data Source=LAPTOP-CBHLNUT7\SQLEXPRESS;Initial Catalog=blueprints;Integrated Security=True";
        private void btADD_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connect = new SqlConnection(con);
                connect.Open();
                if (this.btADD.Text == "ADD")
                {
                    if (tbID.Text != "" && tbFN.Text != "" && tbLN.Text != "" && tbP.Text != "" && tbIDN.Text != "" && RBA.Text != "" && tbH.Text != "")
                    {
                        if (connect.State == System.Data.ConnectionState.Open)
                        {
                            string ID = tbID.Text;
                            string FN = tbFN.Text;
                            string LN = tbLN.Text;
                            string P = tbP.Text;
                            DateTime dateTime = dateTimePicker1.Value;
                            string A = RBA.Text;
                            string IDN = tbIDN.Text;
                            string H = tbH.Text;
                            string query = "INSERT dbo.employee(ID,FIRSTNAME,LASTNAME,PHONE,BIRHDAY,EMPLOYEEADDRESS,IDNUMBER,HOURSOFWORK)" +
                                "VALUES(@ID, @FN,@LN,@P,@date,@A,@IDN,@H)";
                            string query2 = "INSERT dbo.ShiftWork(EID,MORNING,AFTERNOON,EVENING,WORDDAY)" +
                                "VALUES(@ID, 1,0,1,@date)";
                            SqlCommand cmd = new SqlCommand(query, connect);
                            cmd.Parameters.Add("@ID", SqlDbType.Int).Value = ID;
                            cmd.Parameters.Add("@FN", SqlDbType.VarChar).Value = FN;
                            cmd.Parameters.Add("@LN", SqlDbType.VarChar).Value = LN;
                            cmd.Parameters.Add("@P", SqlDbType.VarChar).Value = P;
                            cmd.Parameters.Add("@date", SqlDbType.Date).Value = dateTime;
                            cmd.Parameters.Add("@A", SqlDbType.VarChar).Value = A;
                            cmd.Parameters.Add("@IDN", SqlDbType.VarChar).Value = IDN;
                            cmd.Parameters.Add("@H", SqlDbType.Int).Value = H;
                            SqlCommand cmd2 = new SqlCommand(query2, connect);
                            cmd2.Parameters.Add("@ID", SqlDbType.Int).Value = ID;
                            cmd2.Parameters.Add("@date", SqlDbType.Date).Value = dateTime;
                            if (cmd.ExecuteNonQuery() == 1 && cmd2.ExecuteNonQuery() == 1)
                            {
                                MessageBox.Show("Add successfully ", "Notice", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            }
                            else
                            {
                                MessageBox.Show("wrong id ", "warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                            }

                        }
                        connect.Close();
                    }
                    else
                    {
                        MessageBox.Show("blank isn't allowed", "warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                }
                if (this.btADD.Text == "EDIT")
                {

                }
            }
            catch (Exception e1)
            {
                MessageBox.Show(e1.Message);
            }
        }
    }
}
