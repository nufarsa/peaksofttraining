<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 200px;
        }
    </style>
    <script type="text/javascript" language="javascript">
        var i=1;
        function scrollprev() {
            var previous = document.getElementById("imgscroll");
            
            if (i > 1)
                i--;
            else
                i = 4;
            previous.src = "Images/" + i + ".jpg";
            document.getElementById("marqueeimg").setAttribute('direction', 'right');
        }
        function scrollnext(){
            var previous = document.getElementById("imgscroll");
            
            if (i < 4)
                i++;
            else
                i = 1;
            previous.src = "Images/" + i + ".jpg";
            document.getElementById('marqueeimg').setAttribute('direction', 'left')

        }
        function scrollnext1() {
            var previous = document.getElementById("img2");
            if (i < 4)
                i++;
            else
                i = 1;
            previous.src = "Images/" + i + ".jpg";
        }
        function scrollingimage() {
            setInterval(function() { scrollnext1() }, 3000);
            
        }
       
        
    </script>
</head>
<body onload="scrollingimage()">
    <form id="form1" runat="server">
    <div >
   <%-- <marquee onmouseover="this.setAttribute('scrollAmount',3,0)" onmouseout="this.setAttribute('scrollamount',8,0)" scrollAmount="0" width="1000" behavior="alternate" >
        <img src="Images/Blue%20hills.jpg" width="200" height="200" />
        <img src="Images/Sunset.jpg" width="200" height="200"/>
        <img src="Images/Water%20lilies.jpg" width="200" height="200"/>
        <img src="Images/Winter.jpg" width="200" height="200"/>
    </marquee>
    <marquee behavior="scroll" direction="left" scrollamount="12" onmouseover="this.setAttribute('scrollamount', 3, 0);" onmouseout="this.setAttribute('scrollamount', 12, 0);">Go on... hover over me!</marquee>--%>
    <table class="style1">
            <tr>
                <td align="right">
                    <img alt="Image not found" height="100" src="Images/Button-Previous-icon.png" 
                         width="100" height="100" onmousedown="scrollprev()" /></td>
                <td class="style2">
                    <img  id="imgscroll" alt="" height="200" src="Images/1.jpg"width="200" /></td>
                <td align="left">
                    <img alt="Image not found" src="Images/Button-Next-icon.png" 
                     width="100" height="100" onmousedown="scrollnext()"   /></td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td align="center">
                    <img id="img2" alt="no image found" height="200" src="Images/1.jpg"width="200" />
                </td>
            </tr>
        </table>
        
<marquee id="marqueeimg" onmousedown="this.setAttribute('scrollAmount',0,0)" onmouseup="this.setAttribute('scrollAmount',8,0)"  scrollamount="8" width="1000" behavior="scroll"  >
        <img src="Images/1.jpg" width="200" height="200" />
        <img src="Images/2.jpg" width="200" height="200"/>
        <img src="Images/3.jpg" width="200" height="200"/>
        <img src="Images/4.jpg" width="200" height="200"/>
    </marquee>
    
    </div>
    </form>
</body>
</html>
<%--<marquee behavior="scroll" direction="left" scrollamount="12" onmouseover="this.setAttribute('scrollamount', 3, 0);" onmouseout="this.setAttribute('scrollamount', 12, 0);">Go on... hover over me!</marquee>--%>