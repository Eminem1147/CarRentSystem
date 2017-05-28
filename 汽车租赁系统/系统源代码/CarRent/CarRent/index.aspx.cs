using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRent
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // 跳转到用户管理界面
            Response.Redirect("UserManagement.aspx", true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // 跳转到汽车管理界面
            Response.Redirect("CarManagement.aspx", true);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // 跳转到借车管理界面
            Response.Redirect("BorrowManagement.aspx", true);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            // 跳转到借车管理界面
            Response.Redirect("ReturnManagement.aspx", true);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            // 跳转到修车管理界面
            Response.Redirect("RepairManagement.aspx", true);
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            // 跳转到登录页面
            Response.Redirect("ManagerLogin.aspx", true);
        }
    }
}