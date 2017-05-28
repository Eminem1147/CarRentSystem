<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BorrowManagement.aspx.cs" Inherits="CarRent.BorrowManagement" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>借车管理界面</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 132px;
        }
        .style3
        {
            width: 181px;
        }
        .style4
        {
            width: 186px;
        }
        .style5
        {
            width: 189px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            Text="借车管理界面"></asp:Label>
    
        <br />
    
    </div>
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="请添加订单信息："></asp:Label>
            </td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="143px">
                </asp:DropDownList>
            </td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="19px" Width="146px">
                </asp:DropDownList>
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Date">BorrowTime</asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Date">ReturnTime</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" Height="27px" onclick="Button1_Click" 
                    Text="添加" Width="64px" />
            </td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Button2" runat="server" Height="28px" onclick="Button2_Click" 
                    Text="返回" Width="54px" />
            </td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
