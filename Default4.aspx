<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>


<%@ Register assembly="ServerControl1" namespace="ServerControl1" tagprefix="cc1" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        
        <cc1:xptextbox ID="xptextbox1" runat="server" toogletext="Enter" />
    
        
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="height: 26px" Text="Button" />
    
        <br />
    <asp:Label ID="Label1" runat="server"></asp:Label>
    
        <br />
    
    </div>
    &nbsp;</form>
</body>
</html>
