<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="CarRent.Success" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            Text="恭喜您注册成功！"></asp:Label>
    
    </div>
    <p>
        <asp:Button ID="Button1" runat="server" Height="36px" onclick="Button1_Click" 
            Text="点此返回登录界面" Width="114px" />
    </p>
    </form>
</body>
</html>
