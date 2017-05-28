<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterManager.aspx.cs" Inherits="CarRent.RegisterManager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>管理员注册</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 109px;
        }
        .style2
        {
            width: 179px;
        }
        .style3
        {
            width: 179px;
            height: 33px;
        }
        .style4
        {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            Text="管理员注册"></asp:Label>
    
        <br />
    
    </div>
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="您所要注册的用户名："></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="144px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label3" runat="server" Text="相应的密码："></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="142px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="26px" onclick="Button1_Click" 
                    Text="注册" Width="68px" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
