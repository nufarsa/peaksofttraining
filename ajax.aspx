<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ajax.aspx.cs" Inherits="ajax" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .PanelCSS
        {
            visibility: hidden;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:Image ID="Image1" runat="server" Height="59px" ImageUrl="Images/1.jpg" />
        <asp:HoverMenuExtender ID="Image1_HoverMenuExtender" runat="server" PopupControlID="Panel1"
            PopupPosition="Bottom" Enabled="True" TargetControlID="Image1" OffsetX="0" OffsetY="0"
            PopDelay="50">
        </asp:HoverMenuExtender>
        <br />
        <asp:Panel ID="Panel1" runat="server">
            <asp:Image ID="Image2" runat="server" Height="53px" Width="54px" ImageUrl="Images/2.jpg" />
            <asp:AnimationExtender ID="Image2_AnimationExtender" runat="server" Enabled="True"
                TargetControlID="Image2">
                <Animations>
            <OnHoverOver>
      <FadeOut Duration=".5" Fps="20" />
    </OnHoverOver>
    <OnHoverOut>
    <FadeIn Duration=".5" Fps="20"></FadeIn>
    </OnHoverOut>
                </Animations>
            </asp:AnimationExtender>
            <br />
            <br />
        </asp:Panel>
        <asp:Accordion ID="Accordion1" runat="server" Height="316px" Width="77px">
            <Panes>
                <asp:AccordionPane ID="AccordionPane1" runat="server">
                    <Header>
                        pane1
                    </Header>
                    <Content>
                        <asp:Image ID="Image3" runat="server" Height="53px" Width="54px" ImageUrl="Images/2.jpg" />
                    </Content>
                </asp:AccordionPane>
            </Panes>
            <Panes>
                <asp:AccordionPane ID="AccordionPane2" runat="server">
                    <Header>
                        pane2
                    </Header>
                    <Content>
                        <asp:Image ID="Image4" runat="server" Height="53px" Width="54px" ImageUrl="Images/3.jpg" />
                    </Content>
                </asp:AccordionPane>
            </Panes>
            <Panes>
                <asp:AccordionPane ID="AccordionPane3" runat="server">
                    <Header>
                        pane3
                    </Header>
                    <Content>
                        <asp:Image ID="Image5" runat="server" Height="53px" Width="54px" ImageUrl="Images/4.jpg" />
                    </Content>
                </asp:AccordionPane>
            </Panes>
            <Panes>
                <asp:AccordionPane ID="AccordionPane4" runat="server">
                    <Header>
                        pane4
                    </Header>
                    <Content>
                        <asp:Image ID="Image6" runat="server" Height="53px" Width="54px" ImageUrl="Images/1.jpg" />
                    </Content>
                </asp:AccordionPane>
            </Panes>
        </asp:Accordion>
    </div>
    </form>
</body>
</html>
