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
    public partial class RegisterManager : System.Web.UI.Page
    {
        // 连接数据库所需要的字符串
        string connectionString = "server=localhost;user id=root;password=zhangjian;database=carrent";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string password = TextBox2.Text;
            if (name == "" || password == "")
            {
                this.Response.Write("<script>alert('用户名或密码为空！')</script>");
                return;
            }
            string query = "select ManagerName, Password from managerinfo where ManagerName = '" + name + "';";
            
            MySqlConnection myConnection = new MySqlConnection(connectionString);
            MySqlCommand myCommand = new MySqlCommand(query, myConnection);
            myConnection.Open();
            MySqlDataReader myReader = myCommand.ExecuteReader();
            // true就是账户信息存在，false就是不存在
            if (myReader.Read())
            {
                // 记得要关闭
                myReader.Close();
                this.Response.Write("<script>alert('当前用户名已被使用过！')</script>");
            }
            else
            {
                // 记得要关闭
                myReader.Close();
                query = "insert into managerinfo(ManagerName, Password) values('" + name + "', '" + password + "');";
                myCommand = new MySqlCommand(query, myConnection);
                myCommand.ExecuteNonQuery();
                // 跳转到成功页面
                Response.Redirect("Success.aspx", true);
            }
            myConnection.Close();
        }
    }
}