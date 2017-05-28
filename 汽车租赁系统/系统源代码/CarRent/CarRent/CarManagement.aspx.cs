using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// 这一句不可少
using MySql.Data.MySqlClient;

namespace CarRent
{
    public partial class CarManagement : System.Web.UI.Page
    {
        // 连接数据库所需要的字符串
        string connectionString = "server=localhost;user id=root;password=zhangjian;database=carrent";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // 1.
                // 相当于绑定数据源
                string query = "select CarID from car";
                MySqlConnection myConnection = new MySqlConnection(connectionString);
                MySqlCommand myCommand = new MySqlCommand(query, myConnection);
                myConnection.Open();
                // 只显示数据，不修改
                MySqlDataReader myDataReader = myCommand.ExecuteReader();

                // 返回一行行数据，依次遍历
                while (myDataReader.Read())
                {
                    DropDownList1.Items.Add(new ListItem(myDataReader[0].ToString()));
                }
                myDataReader.Close();
                myConnection.Close();

                // 2.
                // 相当于绑定数据源
                query = "select CarID from car";
                myConnection = new MySqlConnection(connectionString);
                myCommand = new MySqlCommand(query, myConnection);
                myConnection.Open();
                // 只显示数据，不修改
                myDataReader = myCommand.ExecuteReader();

                // 返回一行行数据，依次遍历
                while (myDataReader.Read())
                {
                    DropDownList2.Items.Add(new ListItem(myDataReader[0].ToString()));
                }
                myDataReader.Close();
                myConnection.Close();
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string idcard = DropDownList1.SelectedValue;
            string query = "select CarID, Type, RentMoney, Color from car where CarID = '" + idcard + "';";

            MySqlConnection myConnection = new MySqlConnection(connectionString);
            MySqlCommand myCommand = new MySqlCommand(query, myConnection);
            myConnection.Open();
            MySqlDataReader myReader = myCommand.ExecuteReader();

            if (myReader.Read())
            {
                Label3.Text = myReader[0].ToString();
                Label4.Text = myReader[1].ToString();
                Label5.Text = myReader[2].ToString();
                Label6.Text = myReader[3].ToString();
                myReader.Close();
            }
            else
            {
                myReader.Close();
                this.Response.Write("<script>alert('此车牌号不存在！')</script>");
            }
            myConnection.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string idcard = TextBox1.Text;
            string name = TextBox2.Text;
            string telephone = TextBox3.Text;
            string address = TextBox4.Text;
            if (idcard == "" || name == "" || telephone == "" || address == "")
            {
                this.Response.Write("<script>alert('每个信息都不能为空！')</script>");
                return;
            }

            string query = "insert into car(CarID, Type, RentMoney, Color) values('" + idcard + "','" + name + "','" + telephone + "','" + address + "');";

            MySqlConnection myConnection = new MySqlConnection(connectionString);
            MySqlCommand myCommand = new MySqlCommand(query, myConnection);
            myConnection.Open();
            myCommand.ExecuteNonQuery();
            this.Response.Write("<script>alert('添加成功！')</script>");
            myConnection.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string CarID = DropDownList1.SelectedValue;
            string query = "delete from car where CarId = '" + CarID + "';";

            MySqlConnection myConnection = new MySqlConnection(connectionString);
            MySqlCommand myCommand = new MySqlCommand(query, myConnection);
            myConnection.Open();
            myCommand.ExecuteNonQuery();
            this.Response.Write("<script>alert('删除成功！')</script>");
            myConnection.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            // 返回到用户管理界面
            Response.Redirect("index.aspx", true);
        }
        
    }
}