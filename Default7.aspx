<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default7.aspx.cs" Inherits="Default7" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery-1.8.2.js" type="text/javascript"></script>

    <style>
        .first
        {
            background-color:Black;
            }
         .second
         {
             background-color:Red;
             }
    </style>
    <script type="text/javascript" language="javascript">
    
    select: function( event, ui ) {
    ui.item.option.selected = true;
    self._trigger( "selected", event, {
        item: ui.item.option
    });
    select.trigger("change"); 
    
        $(document).ready(function() {
            $(".first").click(function() {
                $("div").addClass("second");
            });
            $("#ddl").change(function() {

            var ddltxt = $("#ComboBox1 option:selected").text();
                if (parseInt(ddltxt) == 30) {
                    $("div").removeClass("first");
                    $("div").addClass("second");
                }
                else {
                    $("div").removeClass("second");
                    $("div").addClass("first");
                }
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="first">
        zzcvzxcvzxcvzxcv
        
    </div>
    <div>
        <select id="ddl">
            <option>10</option>
            <option>20</option>
            <option>30</option>
            <option>40</option>
            
        </select>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <br />
        <br />
        <asp:ComboBox ID="ComboBox1" runat="server">
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>20</asp:ListItem>
        <asp:ListItem>30</asp:ListItem>
        <asp:ListItem>40</asp:ListItem>
        
        </asp:ComboBox>
    </div>
    </form>
</body>
</html>
