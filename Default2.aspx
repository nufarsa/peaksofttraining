<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<script type="text/javascript">
    var scrollDiv = function(dir, px) {
        var scroller = document.getElementById('scroller');
        if (dir == 'l') {
            scroller.scrollLeft -= px;
        }
        else if (dir == 'r') {
            scroller.scrollLeft += px;
        }
    }
</script>

<style type="text/css">
    #scroller {
        width: 400px;
        height: 400px;
        border: 1px solid blue;
        overflow: scroll;
        margin: 0 auto;
    }
    #inner-scroller {
        width: 800px;
        height: 800px;
    }
</style>

</head>
<body style="text-align: center;">

<a href="javascript: void(0);" onclick="scrollDiv('l', 20); return false;">LEFT</a>
|
<a href="javascript: void(0);" onclick="scrollDiv('r', 20); return false;">RIGHT</a>

<div id="scroller">
    <div id="inner-scroller">
        800x800
    </div>
</div>

</body>
</html>