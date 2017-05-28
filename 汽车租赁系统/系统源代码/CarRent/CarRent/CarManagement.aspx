<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarManagement.aspx.cs" Inherits="CarRent.CarManagement" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>汽车管理</title>
    <style type="text/css">
        .style1
        {
            width: 87%;
            height: 209px;
        }
        .style2
        {
            width: 106px;
        }
        .style4
        {
            width: 106px;
            height: 35px;
        }
        .style6
        {
            height: 35px;
        }
        .style9
        {
            height: 35px;
            width: 194px;
        }
        .style10
        {
            width: 194px;
        }
        .style11
        {
            width: 165px;
            height: 35px;
        }
        .style12
        {
            width: 165px;
        }
        .style13
        {
            width: 106px;
            height: 25px;
        }
        .style15
        {
            width: 194px;
            height: 25px;
        }
        .style16
        {
            width: 165px;
            height: 25px;
        }
        .style17
        {
            height: 25px;
        }
        .style18
        {
            height: 35px;
            width: 179px;
        }
        .style19
        {
            width: 179px;
        }
        .style20
        {
            width: 179px;
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            Text="汽车管理页面"></asp:Label>
        <br />
        <br />
    
    </div>
    <table class="style1">
        <tr>
            <td class="style4">
                <asp:Label ID="Label2" runat="server" Text="车牌号："></asp:Label>
            </td>
            <td class="style18">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" Width="121px">
                </asp:DropDownList>
            </td>
            <td class="style9">
                <asp:Button ID="Button1" runat="server" Height="31px" onclick="Button1_Click1" 
                    Text="查询" Width="59px" />
            </td>
            <td class="style11">
            </td>
            <td class="style6">
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" Text="此车信息为："></asp:Label>
            </td>
            <td class="style19">
                <asp:Label ID="Label3" runat="server" Font-Underline="True"></asp:Label>
            </td>
            <td class="style10">
                <asp:Label ID="Label4" runat="server" Font-Underline="True"></asp:Label>
            </td>
            <td class="style12">
                <asp:Label ID="Label5" runat="server" Font-Underline="True"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" Font-Underline="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label8" runat="server" Text="填入你想添加的汽车："></asp:Label>
            </td>
            <td class="style19">
                <asp:TextBox ID="TextBox1" runat="server">CarID</asp:TextBox>
            </td>
            <td class="style10">
                <asp:TextBox ID="TextBox2" runat="server">Type</asp:TextBox>
            </td>
            <td class="style12">
                <asp:TextBox ID="TextBox3" runat="server">RentMoney</asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server">Color</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style19">
                <asp:Button ID="Button2" runat="server" Height="30px" onclick="Button2_Click" 
                    Text="添加" Width="62px" />
            </td>
            <td class="style10">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label9" runat="server" Text="车牌号："></asp:Label>
            </td>
            <td class="style19">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="19px" Width="121px">
                </asp:DropDownList>
            </td>
            <td class="style10">
                <asp:Button ID="Button3" runat="server" Height="33px" onclick="Button3_Click" 
                    Text="删除" Width="63px" />
            </td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                <asp:Button ID="Button4" runat="server" Height="30px" onclick="Button4_Click" 
                    Text="返回" Width="76px" />
            </td>
            <td class="style20">
            </td>
            <td class="style15">
            </td>
            <td class="style16">
            </td>
            <td class="style17">
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
