<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlreadyRegistrated.aspx.cs" Inherits="HospitalRegistrateSystem.Page.AlreadyRegistrated" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head runat="server">
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>添加新表</title>
<link rel="stylesheet" href="../CSS/emx_nav_right.css" type="text/css" />
<script type="text/javascript">
<!--
    var time = 3000;
    var numofitems = 7;

    //menu constructor
    function menu(allitems, thisitem, startstate) {
        callname = "gl" + thisitem;
        divname = "subglobal" + thisitem;
        this.numberofmenuitems = allitems;
        this.caller = document.getElementById(callname);
        this.thediv = document.getElementById(divname);
        this.thediv.style.visibility = startstate;
    }

    //menu methods
    function ehandler(event, theobj) {
        for (var i = 1; i <= theobj.numberofmenuitems; i++) {
            var shutdiv = eval("menuitem" + i + ".thediv");
            shutdiv.style.visibility = "hidden";
        }
        theobj.thediv.style.visibility = "visible";
    }

    function closesubnav(event) {
        if ((event.clientY < 48) || (event.clientY > 107)) {
            for (var i = 1; i <= numofitems; i++) {
                var shutdiv = eval('menuitem' + i + '.thediv');
                shutdiv.style.visibility = 'hidden';
            }
        }
    }
    // -->
</script>
<style type="text/css">
<!--
.STYLE1 {font-size: 200%}
.STYLE5 {font-size: small}
.STYLE7 {font-size: small; font-weight: bold; }
.STYLE8 {
	font-size: large;
	font-weight: bold;
}
.STYLE12 {font-size: x-large;
	font-weight: bold;
	color: #334D55;
}
body {
	background-image: url(../images/bg_grad.jpg);
}
    #selfMangement {
        width: 171px;
    }
-->
</style>
</head>
<body onmousemove="closesubnav(event);">
<div class="skipLinks">skip to: <a href="#content">page content</a> | <a href="#pageNav">links on this page</a> | <a href="#globalNav">site navigation</a> | <a href="#siteInfo">footer (site information)</a> </div>
<div id="masthead">
  <h1 class="STYLE1" id="siteName">医院挂号系统</h1>
  <div id="globalNav"> <img alt="" src="../images/gblnav_left.gif" height="32" width="4" id="gnl" /> <img alt="" src="../images/glbnav_right.gif" height="32" width="4" id="gnr" />
    <div id="globalLink"> 请先登录再挂号。本挂号系统挂号单一经生成，概不退还。请各位病友仔细阅读后，再进行挂号。<a href="Us.php" id="gl7" class="glink" onmouseover="ehandler(event,menuitem7);"></a> </div>
    <!--end globalLinks-->
    <form id="search" action="">
      <input name="searchFor" type="text" size="10" />
      <a href="http://www.baidu.com" target="_blank">搜索</a>
    </form>
  </div>
  <!-- end globalNav -->
  <div id="subglobal1" class="subglobalNav"> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> </div>
  <div id="subglobal2" class="subglobalNav"> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> </div>
  <div id="subglobal3" class="subglobalNav"> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> </div>
  <div id="subglobal4" class="subglobalNav"> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> </div>
  <div id="subglobal5" class="subglobalNav"> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> </div>
  <div id="subglobal6" class="subglobalNav"> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> </div>
  <div id="subglobal7" class="subglobalNav"> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> </div>
  <div id="subglobal8" class="subglobalNav"> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> </div>
</div>
<!-- end masthead -->
<div id="pagecell1">
  <!--pagecell1-->
  <img alt="" src="../images/tl_curve_white.gif" height="6" width="6" id="tl" /> <img alt="" src="../images/tr_curve_white.gif" height="6" width="6" id="tr" />
  <div id="pageNav">
    <div class="relatedLinks">
      <h3 align="center">&nbsp;</h3>
      </div>
       <div  id="selfMangement" name="selfMangement" runat="server" >
          <div class="relatedLinks">
        <h3 align="center">登录成功</h3>
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300">欢迎光临!</td>
                  </tr>
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300">
                      <div style="display:block"><label>用户：</label><label id="userName" runat="server"></label></div>  
                  </td>
                </tr>
                  <tr>
                  <td height="50" align="center" bgcolor="#FF3300"><label><br />
                      <a href="Search.aspx">预约</a></label></td>
                  </tr>
                  <tr>
                  <td height="50" align="center" bgcolor="#FF3300"><label><br />
                      <a href="AlreadyRegistrated.aspx">已经预约信息查询</a></label></td>
                  </tr>
                  <tr>
                  <td height="50" align="center" bgcolor="#FF3300"><label><br />
                      <a href="SelfInformationgManagement.aspx">个人信息管理中心</a></label></td>
                  </tr>
                  <tr>
                  <td height="50" align="center" bgcolor="#FF3300"><label><br />
                      <a href="javascript:logoff()">退出登录</a></label></td>
                  </tr>
                </table>
        <a href="#"></a></div>              
      </div>
    <div id="advert"> 
      <p><a href="Us.php"><img src="../images/t1.jpg" alt="aa" width="162" height="161" border="0" /></a></p>
      <h3 align="center" class="relatedLinks">友情链接</h3>
      <table width="96%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><form id="form1" name="form1" method="post" action="">
              <table width="105%" height="80%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><a href="http://www.pumch.cn/" target="_blank"><strong>协和医院</strong></a></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><a href="http://www.cd120.com/" target="_blank"><strong>华西医院</strong></a></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><label for="label"><a href="http://www.scu.edu.cn/" ><strong>四川大学</strong></a></label></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><label for="label2"><a href="http://www.xnyy.cn/" target="_blank">西南医院</a></label></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><a href="http://www.who.org/" target="_blank"><strong>世界卫生组织</strong></a></td>
                </tr>
              </table>
          </form></td>
        </tr>
      </table>
    </div>
  </div>
  <div id="content">
    <div class="feature">
      <p>
      <a href="Interactive.php"><img src="../images/to.jpg" alt="Hello" width="430" height="196" border="0" /></a>
        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="523" height="200" title="医院挂号系统">
          <param name="movie" value="../images/1.swf" />
          <param name="quality" value="high" />
          <embed src="../images/1.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="523" height="200"></embed>
        </object>
        </p>
    </div>
    <div class="story">
      <h3>&nbsp;</h3>
    </div>
    <div  id="info" class="story" runat="server"></div>
  </div>
  <!--end content -->
  <div id="siteInfo"> 
    <div align="center">
      <p><img src="../images/313.png" width="20" height="20" />地址：四川省成都市双流县川大路四川大学江安校区 邮编：610207</p>
      <p>&copy;2015 版权所有</p>
    </div>
  </div>
</div>
<!--end pagecell1-->
<br />
<script type="text/javascript">
    <!--
    var menuitem1 = new menu(7, 1, "hidden");
    var menuitem2 = new menu(7, 2, "hidden");
    var menuitem3 = new menu(7, 3, "hidden");
    var menuitem4 = new menu(7, 4, "hidden");
    var menuitem5 = new menu(7, 5, "hidden");
    var menuitem6 = new menu(7, 6, "hidden");
    var menuitem7 = new menu(7, 7, "hidden");
    // -->
    </script>
</body>
</html>

