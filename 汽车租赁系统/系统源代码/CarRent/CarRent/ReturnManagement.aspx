<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReturnManagement.aspx.cs" Inherits="CarRent.ReturnManagement" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>还车管理界面</title>
    <style type="text/css">
        .style1
        {
            width: 88%;
            height: 188px;
        }
        .style2
        {
            height: 63px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            Text="还车管理界面"></asp:Label>
    
        <br />
    
    </div>
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="请添加还车信息："></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="88px">CarID</asp:TextBox>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox2" runat="server" Font-Strikeout="False" Height="19px" 
                    Width="96px">IDCard</asp:TextBox>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox3" runat="server" Height="18px" TextMode="Date" 
                    Width="131px">ReturnTime</asp:TextBox>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox5" runat="server" Height="21px" Width="108px">Type</asp:TextBox>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox4" runat="server" Height="19px" 
                    Width="116px">MoneyPaid</asp:TextBox>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox6" runat="server" Height="20px" Width="113px">Color</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="28px" onclick="Button1_Click" 
                    Text="添加" Width="62px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" Height="25px" onclick="Button2_Click" 
                    Text="返回" Width="55px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
