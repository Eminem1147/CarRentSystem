<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepairManagement.aspx.cs" Inherits="CarRent.RepairManagement" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>修车管理界面</title>
    <style type="text/css">
        .style1
        {
            width: 82%;
            height: 177px;
        }
        .style2
        {
            width: 160px;
        }
        .style3
        {
            width: 107px;
        }
        .style4
        {
            width: 166px;
        }
        .style5
        {
            width: 204px;
        }
        .style6
        {
            width: 110px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            Text="修车管理界面"></asp:Label>
        <br />
    
    </div>
    <table class="style1">
        <tr>
            <td class="style6">
                <asp:Label ID="Label2" runat="server" Text="请添加修车信息："></asp:Label>
            </td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td class="style2">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True">Type</asp:TextBox>
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBox2" runat="server">RepairMoney</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" Height="28px" onclick="Button1_Click" 
                    Text="添加" Width="68px" />
            </td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Button ID="Button2" runat="server" Height="27px" onclick="Button2_Click" 
                    Text="返回" Width="69px" />
            </td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
