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
    public partial class ManagerLogin : System.Web.UI.Page
    {
        // 连接数据库所需要的字符串
        string connectionString = "server=localhost;user id=root;password=zhangjian;database=carrent";

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        // 注册按钮
        protected void Button1_Click(object sender, EventArgs e)
        {
            // 跳转到注册页面
            Response.Redirect("RegisterManager.aspx", true);
        }

        // 登录按钮
        protected void Button2_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string password = TextBox2.Text;
            string query = "select ManagerName, Password from managerinfo where ManagerName = '" + name + "' and Password = '" + password + "';";

            MySqlConnection myConnection = new MySqlConnection(connectionString);
            MySqlCommand myCommand = new MySqlCommand(query, myConnection);
            myConnection.Open();
            MySqlDataReader myReader = myCommand.ExecuteReader();
            // true就是账户信息存在，false就是不存在
            if (myReader.Read())
            {
                // 记得要关闭
                myReader.Close();
                // 跳转到总管理页面
                Response.Redirect("index.aspx", true);
            }
            else
            {
                // 记得要关闭
                myReader.Close();
                this.Response.Write("<script>alert('用户名或密码出现错误！')</script>");
            }
            myConnection.Close();
        }
    }
}