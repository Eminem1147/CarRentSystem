<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="CarRent.UserManagement" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户管理</title>
    <style type="text/css">
        .style5
        {
            width: 86%;
        }
        .style10
        {
            width: 474px;
        }
        .style13
        {
            width: 328px;
        }
        .style14
        {
            width: 398px;
        }
        .style15
        {
            width: 425px;
        }
        .style17
        {
            width: 328px;
            height: 30px;
        }
        .style18
        {
            width: 398px;
            height: 30px;
        }
        .style19
        {
            width: 425px;
            height: 30px;
        }
        .style20
        {
            width: 474px;
            height: 30px;
        }
        .style21
        {
            width: 972px;
        }
        .style22
        {
            width: 972px;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            Text="用户管理页面"></asp:Label>
        <br />
        <br />
    
    </div>
    <table class="style5">
        <tr>
            <td class="style21">
                <asp:Label ID="Label8" runat="server" Text="身份证号："></asp:Label>
            </td>
            <td class="style13">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td class="style14">
                <asp:Button ID="Button1" runat="server" Height="28px" onclick="Button1_Click" 
                    Text="用户查询" Width="81px" />
            </td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style21">
                <asp:Label ID="Label6" runat="server" Text="此用户信息为："></asp:Label>
            </td>
            <td class="style13">
                <asp:Label ID="Label2" runat="server" Font-Underline="True"></asp:Label>
            </td>
            <td class="style14">
                <asp:Label ID="Label3" runat="server" Font-Underline="True"></asp:Label>
            </td>
            <td class="style15">
                <asp:Label ID="Label4" runat="server" Font-Underline="True"></asp:Label>
            </td>
            <td class="style10">
                <asp:Label ID="Label5" runat="server" Font-Underline="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style21">
                <asp:Label ID="Label7" runat="server" Text="填入你想添加的用户："></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="144px">IDCard</asp:TextBox>
            </td>
            <td class="style14">
                <asp:TextBox ID="TextBox3" runat="server">Name</asp:TextBox>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox4" runat="server">Telephone</asp:TextBox>
            </td>
            <td class="style10">
                <asp:TextBox ID="TextBox5" runat="server">Address</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style17">
                <asp:Button ID="Button2" runat="server" Height="27px" onclick="Button2_Click" 
                    Text="用户添加" Width="79px" />
            </td>
            <td class="style18">
            </td>
            <td class="style19">
            </td>
            <td class="style20">
            </td>
        </tr>
        <tr>
            <td class="style22">
                <asp:Button ID="Button3" runat="server" Height="33px" onclick="Button3_Click" 
                    Text="返回" Width="79px" />
            </td>
            <td class="style17">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
