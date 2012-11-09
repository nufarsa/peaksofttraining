<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChartDemo.aspx.cs" Inherits="ChartDemo" %>

<%@ Register Assembly="am.Charts" Namespace="am.Charts" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%--<cc1:PieChart ID="PieChart1" runat="server" BackgroundGradientColors="" CollectingDataMessageLeft="0px"
            CollectingDataMessageTop="" Colors="" DataLabelRadius="30px" DataSourceID="SqlDataSource1"
            ErrorMessagesBackgroundGradientColors="" ErrorMessagesLeft="" ErrorMessagesTop=""
            LegendGradientColors="" LegendLeft="" LegendTop="" LegendWidth="" PieInnerRadius="30px"
            DataTitleField="PT009PaymentMode" DataValueField="PT009LoadingDate" GroupPercent="10"
            GroupPullOut="True" PieAngle="30" PieHeight="8">
            
        </cc1:PieChart>--%>
        <cc1:PieChart ID="PieChart2" runat="server" BackgroundGradientColors="" CollectingDataMessageLeft="0px"
            CollectingDataMessageTop="" Colors="" DataLabelRadius="30px" 
            ErrorMessagesBackgroundGradientColors="" ErrorMessagesLeft="" ErrorMessagesTop=""
            LegendGradientColors="" LegendLeft="" LegendTop="" LegendWidth="" PieInnerRadius=""
            GroupPercent="10"
            GroupPullOut="True" PieAngle="30" PieHeight="8">
            <Items>
                <cc1:PieChartDataItem PullOut="True" Title="Yes" Value="32" />
                <cc1:PieChartDataItem Title="No" Value="68" />
            </Items>
            <Labels>
                <cc1:ChartLabel Align="Right" Text="Do you smoke?" TextColor="#FF8000" TextSize="20" />
            </Labels>
        </cc1:PieChart>
        <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BajwaLogisticsConnectionString3 %>"
            SelectCommand="SELECT [PT009LoadingDate], [PT009PaymentMode] FROM [PT009LoadingMaster]">
        </asp:SqlDataSource>--%>
    </div>
    </form>
</body>
</html>
