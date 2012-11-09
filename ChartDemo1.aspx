<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChartDemo1.aspx.cs" Inherits="ChartDemo1" %>
<%@ Register Assembly="am.Charts" Namespace="am.Charts" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <%--< <cc1:PieChart ID="PieChart1" runat="server" BackgroundGradientColors="" CollectingDataMessageLeft="0px"
            CollectingDataMessageTop="" Colors="" DataLabelRadius="30px" DataSourceID="SqlDataSource1"
            ErrorMessagesBackgroundGradientColors="" ErrorMessagesLeft="" ErrorMessagesTop=""
            LegendGradientColors="" LegendLeft="" LegendTop="" LegendWidth="" PieInnerRadius="30px"
            DataTitleField="PT009PaymentMode" DataValueField="PT009LoadingDate" GroupPercent="10"
            GroupPullOut="True" PieAngle="30" PieHeight="8" 
            LegendBorderColor="#FF66FF" LegendColor="#FF5050">
            <Labels>
                <cc1:ChartLabel Text="Chart for Loading" TextColor="Red" TextSize="15" 
                    Width="" />
            </Labels>
            
        </cc1:PieChart>
        cc1:PieChart ID="PieChart2" runat="server" BackgroundGradientColors="" CollectingDataMessageLeft="0px"
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
        </cc1:PieChart>--%>
    </div>

    <div>
        <cc1:PieChart ID="PieChart1" runat="server">
        </cc1:PieChart>
    </div>
    <div>
        <cc1:ColumnChart ID="ColumnChart1" runat="server" Angle="90" AreaFillAlpha="1" 
            BalloonAlpha="50" BalloonBorderColor="Red" BalloonBorderWidth="1" 
            BalloonColor="#66FFFF" BalloonCornerRadius="5" BalloonMaxWidth="110" 
            BalloonTextColor="Black" BalloonTextSize="XX-Large" 
            ColumnDataLabelPosition="Inside" ColumnDataLabelsAlwaysOn="True" 
            ColumnGrowTime="5" ColumnHoverBrightness="5" ColumnHoverColor="Aqua" 
            ColumnSequencedGrow="True" ColumnSpacing="3" ColumnWidth="50" 
            ForeColor="#CCFF33" LabelsInData="True" LineAlpha="50" LineConnect="True" 
            ShowZoomContextMenu="True" ThousandsSeparator=" ,">
        </cc1:ColumnChart>
    </div>
    
    <div>
    </div>
    
    </form>
    
</body>
</html>
