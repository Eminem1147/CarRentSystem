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
    public partial class ReturnManagement : System.Web.UI.Page
    {
        // 连接数据库所需要的字符串
        string connectionString = "server=localhost;user id=root;password=zhangjian;database=carrent";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string idcard = TextBox1.Text;
            string name = TextBox2.Text;
            string telephone = TextBox3.Text;
            string address = TextBox5.Text;
            string add = TextBox4.Text;
            string add1 = TextBox6.Text;
            if (idcard == "" || name == "" || telephone == "" || address == "" || add == "" || add1 == "")
            {
                this.Response.Write("<script>alert('每个信息都不能为空！')</script>");
                return;
            }

            // 注意这里的`Return`，不能用return，涉及到mysql关键字
            string query = "insert into `Return`(CarID, IDCard, ReturnTime, Type, MoneyPaid, Color) values('" + idcard + "','" + name + "','" + telephone + "','" + address + "','" + add + "','" + add1 + "');";

            MySqlConnection myConnection = new MySqlConnection(connectionString);
            MySqlCommand myCommand = new MySqlCommand(query, myConnection);
            myConnection.Open();
            myCommand.ExecuteNonQuery();
            this.Response.Write("<script>alert('添加成功！')</script>");

            //添加成功了之后要向汽车表内添加这个汽车!!!!!!!!!!!!!!!!!!!!
            query = "insert into car(CarID, Type, RentMoney, Color) values ('" + idcard + "','" + address + "','" + add + "','" + add1 + "');";
            myConnection = new MySqlConnection(connectionString);
            myCommand = new MySqlCommand(query, myConnection);
            myConnection.Open();
            myCommand.ExecuteNonQuery();

            myConnection.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // 返回到用户管理界面
            Response.Redirect("index.aspx", true);
        }
    }
}