<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerLogin.aspx.cs" Inherits="CarRent.ManagerLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>登录界面</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 155px;
        }
        .style2
        {
            width: 79px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            Text="汽车租赁系统"></asp:Label>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="用户名："></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="146px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="密码："></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="22px" TextMode="Password" 
                    Width="144px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" Height="30px" onclick="Button1_Click" 
                    Text="注册" Width="70px" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Height="28px" onclick="Button2_Click" 
                    Text="登录" Width="74px" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
