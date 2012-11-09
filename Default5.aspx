<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" language="javascript">
        function Calculate(field, rowIdx, col) {
            debugger;
            var grid = document.getElementById("GridView1");
            var rowcount = grid.rows;
            alert(rowIdx);
            var j = 2;
            var cellValue;
            var rowtotal = 0;
            
            while (grid.rows[rowIdx].cells[j].children[0].value != "") {

                //alert("J value " + j + " => " + GridView.rows[rowIdx].cells[j].children[0].value);

                cellValue = grid.rows[rowIdx].cells[j].children[0].value;

                rowtotal = rowtotal + parseInt(cellValue);

            }
            var lbl = document.getElementById("Label1");
            lbl.value = rowtotal;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns ="false" 
            onrowdatabound="GridView1_RowDataBound">
            <Columns>
                <asp:BoundField DataField="PS006LoginID" HeaderText="id" />
                <asp:BoundField DataField="PS001AdminID" HeaderText="Adminid" />
                <asp:TemplateField HeaderText="Amount" >
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text="0.00"  ></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField> 
            </Columns>
        </asp:GridView>
    
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:MaskedEditExtender ID="TextBox2_MaskedEditExtender" runat="server" 
            Mask="99/99/9999" MaskType="Date"  
            TargetControlID="TextBox2" UserDateFormat="DayMonthYear">
        </asp:MaskedEditExtender>
        <asp:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" Animated="true" Format="dd/MM/yyyy"  
            Enabled="True" TargetControlID="TextBox2">
        </asp:CalendarExtender>
    
        <br />
        <br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox3" Display="Dynamic" 
            ErrorMessage="RegularExpressionValidator" 
            ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
    
        <br />
        <br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="RegularExpressionValidator" 
            ValidationExpression="\d+(\.\d{0,2})?"></asp:RegularExpressionValidator>
    
    </div>
    </form>
</body>
</html>
