<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CarRent.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>综合管理</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 176px;
            height: 39px;
        }
        .style4
        {
            height: 39px;
        }
        .style5
        {
            width: 176px;
            height: 36px;
        }
        .style6
        {
            height: 36px;
        }
        .style7
        {
            width: 176px;
            height: 33px;
        }
        .style8
        {
            height: 33px;
        }
        .style9
        {
            width: 176px;
            height: 35px;
        }
        .style10
        {
            height: 35px;
        }
        .style11
        {
            width: 176px;
            height: 41px;
        }
        .style12
        {
            height: 41px;
        }
        .style13
        {
            width: 176px;
            height: 38px;
        }
        .style14
        {
            height: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            Text="综合管理"></asp:Label>
        <br />
        <br />
    
    </div>
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" Height="29px" onclick="Button1_Click" 
                    Text="客户管理" Width="81px" />
            </td>
            <td class="style4">
                <asp:Button ID="Button2" runat="server" Height="28px" onclick="Button2_Click" 
                    Text="汽车管理" Width="77px" />
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Button ID="Button3" runat="server" Height="28px" onclick="Button3_Click" 
                    Text="借车管理" Width="82px" />
            </td>
            <td class="style6">
                <asp:Button ID="Button4" runat="server" Height="30px" onclick="Button4_Click" 
                    Text="还车管理" Width="79px" />
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Button ID="Button5" runat="server" Height="29px" onclick="Button5_Click" 
                    Text="维修管理" Width="81px" />
            </td>
            <td class="style8">
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Button ID="Button6" runat="server" Height="28px" onclick="Button6_Click" 
                    Text="注销" Width="63px" />
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style11">
            </td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td class="style13">
            </td>
            <td class="style14">
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
