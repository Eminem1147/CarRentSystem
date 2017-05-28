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
    public partial class RepairManagement : System.Web.UI.Page
    {
        // 连接数据库所需要的字符串
        string connectionString = "server=localhost;user id=root;password=zhangjian;database=carrent";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // 1.
                // 相当于绑定数据源
                string query = "select FactoryID from Factory";
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
            DropDownList1.AutoPostBack = true;
            DropDownList2.AutoPostBack = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string idcard = DropDownList1.SelectedValue;
            string name = DropDownList2.SelectedValue;
            string telephone = TextBox1.Text;
            string address = TextBox2.Text;
            if (idcard == "" || name == "" || telephone == "" || address == "")
            {
                this.Response.Write("<script>alert('每个信息都不能为空！')</script>");
                return;
            }

            string query = "insert into repair(FactoryID, CarID, Type, RepairMoney) values('" + idcard + "','" + name + "','" + telephone + "','" + address + "');";

            MySqlConnection myConnection = new MySqlConnection(connectionString);
            MySqlCommand myCommand = new MySqlCommand(query, myConnection);
            myConnection.Open();
            myCommand.ExecuteNonQuery();
            this.Response.Write("<script>alert('添加成功！')</script>");

            //添加成功了之后要把汽车表内的这个汽车删除了!!!!!!!!!!!!!!!!!!!!
            query = "delete from car where CarID = '" + name + "';";
            myConnection = new MySqlConnection(connectionString);
            myCommand = new MySqlCommand(query, myConnection);
            myConnection.Open();
            myCommand.ExecuteNonQuery();

            myConnection.Close();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string m = DropDownList2.SelectedValue;

            string query = "select Type from car where CarID = '" + m + "'";
            MySqlConnection myConnection = new MySqlConnection(connectionString);
            MySqlCommand myCommand = new MySqlCommand(query, myConnection);
            myConnection.Open();
            MySqlDataReader myDataReader = myCommand.ExecuteReader();
            if (myDataReader.Read())
            {
                TextBox1.Text = myDataReader[0].ToString();
            }
            myDataReader.Close();
            myConnection.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // 返回到用户管理界面
            Response.Redirect("index.aspx", true);
        }
    }
}