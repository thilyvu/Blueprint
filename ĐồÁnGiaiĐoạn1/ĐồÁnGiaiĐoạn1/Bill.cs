using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.AccessControl;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ĐồÁnGiaiĐoạn1
{
    class Bill
    {
        public string con = @"Data Source=LAPTOP-CBHLNUT7\SQLEXPRESS;Initial Catalog=blueprints;Integrated Security=True";
        private int id;
        private int tableId;
        private string name;
        private int price;
        private int quantity;
        private DateTime dateCheckout;
        private int total;

        public int Id { get => id; set => id = value; }
        public int TableId { get => tableId; set => tableId = value; }
        public string Name { get => name; set => name = value; }
        public int Price { get => price; set => price = value; }
        public int Quantity { get => quantity; set => quantity = value; }
        public DateTime DateCheckout { get => dateCheckout; set => dateCheckout = value; }
        public int Total { get => total; set => total = value; }
        public Bill(int price , string name , int quantity)
        {
            this.Price = price;
            this.Name = name;
            this.Quantity = quantity;
        }
        public Bill()
        {

        }
        public Bill(int id, int tableID,string name, int price, int quantity, DateTime dateCheckout,int total)
        {
            this.Id = id;
            this.TableId = tableID;
            this.Name = name;
            this.Price = price;
            this.Quantity = quantity;
            this.DateCheckout = dateCheckout;
            this.Total = total;
            
        }
        public int getbillid()
        {
            int id;
            id = 0;
            try
            {
                SqlConnection connect = new SqlConnection(con);
                connect.Open();

                if (connect.State == System.Data.ConnectionState.Open)
                {
                    string query1 = "SELECT  COUNT(DISTINCT ID) FROM dbo.FoodBills";
                    SqlCommand cmd1 = new SqlCommand(query1, connect);
                    object a = cmd1.ExecuteScalar();
                    id = Convert.ToInt32(a);
                    if (id != 0 )
                    {
                       //MessageBox.Show("Remove successfully ", "Notice", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return id+1;
                    }
                    else
                    {
                       // MessageBox.Show("wrong id ", "warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }

                }
                connect.Close();
            }
            catch
            {
                MessageBox.Show("error", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            return id+1;
        }
        public void addBill(List<Bill> a)
        {
            int l = 0;
            foreach(Bill item in a )
            {
                 int id=item.id;
                 int tableId=item.tableId;
                 string name=item.name;
                 int price=item.price;
                 int quantity=item.quantity;
                 DateTime dateCheckout=item.dateCheckout;
                 int total=item.total;
                try
                {
                    SqlConnection connect = new SqlConnection(con);
                    connect.Open();

                    if (connect.State == System.Data.ConnectionState.Open)
                    {
                        string query = "INSERT INTO dbo.FoodBills ( ID ,TableID ,Name ,Price ,quantity ,DayCheckOut ,Total)VALUES  (@ID,@TBID,@N,@P,@Q,@D,@T)";
                        SqlCommand cmd = new SqlCommand(query, connect);
                        cmd.Parameters.Add("@ID", SqlDbType.Int).Value = Convert.ToInt32(id);
                        cmd.Parameters.Add("@TBID", SqlDbType.Int).Value = Convert.ToInt32(tableId);
                        cmd.Parameters.Add("@N", SqlDbType.NVarChar).Value = name.ToString();
                        cmd.Parameters.Add("@p", SqlDbType.Int).Value = Convert.ToInt32(price);
                        cmd.Parameters.Add("@Q", SqlDbType.Int).Value = Convert.ToInt32(quantity);
                        cmd.Parameters.Add("@D", SqlDbType.Date).Value = Convert.ToDateTime(dateCheckout);
                        cmd.Parameters.Add("@T", SqlDbType.Int).Value = Convert.ToInt32(total);

                        if (cmd.ExecuteNonQuery() == 1)
                        {
                            //MessageBox.Show("Add successfully ", "Notice", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            l = 1;
                        }
                        else
                        {
                            MessageBox.Show("wrong id ", "warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        }

                    }
                    connect.Close();
                }
                catch (Exception e1)
                {
                    MessageBox.Show(e1.Message, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            if(l==1)
            {
                MessageBox.Show("Booking successfully", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

        }
        public int getTotalIncome()
        {
            int TotalIncome = 0;
            try
            {
                SqlConnection connect = new SqlConnection(con);
                connect.Open();

                if (connect.State == System.Data.ConnectionState.Open)
                {
                    string query = "SELECT SUM(DISTINCT Total) FROM dbo.FoodBills";
                    SqlCommand cmd = new SqlCommand(query, connect);
                    object a = cmd.ExecuteScalar();
                    TotalIncome = Convert.ToInt32(a);
                }
                connect.Close();
            }
            catch (Exception e1)
            {
                MessageBox.Show(e1.Message, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            return TotalIncome;
        }
    }
}
