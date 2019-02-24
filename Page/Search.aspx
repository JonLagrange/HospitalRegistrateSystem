<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="WebApplication1.Page.Search" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head runat="server">
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<title>预约挂号</title>
<link rel="stylesheet" href="../CSS/emx_nav_right.css" type="text/css" />
    <script src="../Scripts/jquery-1.7.1.js"></script>
<script type="text/javascript">
<!--
    var time = 3000;
    var numofitems = 7;
    function getNext() {
        var hospitalID = document.getElementById("hospital").value;
        $.ajax({
            type: "get",
            url: "Search.aspx?act=getNext",
            dataType: "json",
            data: { "hosID": hospitalID },
            success: function (data) {
                showDepartment(data);
            },
            error: function () {
                alert("error!!");
            }
        });

    }
    function showDepartment(data) {
        var department = document.getElementById("department");
        department.length = 0;
        for (var i = 0; i < data.length; i++) {
            var item = new Option(data[i].departmentName, data[i].departmentID);
            department.options.add(item);
        }
    }
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
    function SelectButton_Click() {
        var data = document.getElementById("department").value;
        window.location = "DoctorChoose.aspx?act=redirect&departmentID=" + data;
    }
    function logoff() {
        $("#loginPart").attr("style", "display:block");
        $("#selfMangement").attr("style", "display:none");
        $.ajax({
            type: "get",
            url: "Login.aspx?act=logoff",
            success: function (data) {
            },
            error: function () {
            }
        });
    }
    // -->
</script>
<style type="text/css">
<!--
.STYLE1 {font-size: 200%}
.STYLE2 {font-size: 120%}
.STYLE3 {font-size: 120%; font-weight: bold; }
.STYLE5 {font-size: small}
body {
	background-image: url(../images/bg_grad.jpg);
}
.STYLE8 {
	font-size: large;
	font-weight: bold;
}
-->
</style>
</head>
<body onmousemove="closesubnav(event);">
<div class="skipLinks">skip to: <a href="#content">page content</a> | <a href="#pageNav">links on this page</a> | <a href="#globalNav">site navigation</a> | <a href="#siteInfo">footer (site information)</a> </div>
<div id="masthead">
  <h1 class="STYLE1" id="siteName">医院挂号系统</h1>
  <div id="globalNav"> <img alt="" src="../images/gblnav_left.gif" height="32" width="4" id="gnl" /> <img alt="" src="../images/glbnav_right.gif" height="32" width="4" id="gnr" />
    <div id="globalLink">请先登录再挂号。本挂号系统挂号单一经生成，概不退还。请各位病友仔细阅读后，再进行挂号。</div>
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
       <div  id="selfMangement" name="selfMangement" runat="server" style="display:none" >
          <div class="relatedLinks">
              <table width="95%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300" style="color:white">欢迎光临!</td>
                  </tr>
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300">
                      <div style="display:block"><label style="color:white">用户：</label><label id="userName" runat="server" style="color:white"></label></div>  
                  </td>
                </tr>
                  <tr>
                  <td height="50" align="center" bgcolor="#FF3300"><label><br />
                      <a href="Search.aspx" style="color:white">预约</a></label></td>
                  </tr>
                  <tr>
                  <td height="50" align="center" bgcolor="#FF3300"><label><br />
                      <a href="AlreadyRegistrated.aspx" style="color:white">已经预约信息查询</a></label></td>
                  </tr>
                  <tr>
                  <td height="50" align="center" bgcolor="#FF3300"><label><br />
                      <a href="SelfInformationgManagement.aspx" style="color:white">个人信息管理中心</a></label></td>
                  </tr>
                  <tr>
                  <td height="50" align="center" bgcolor="#FF3300"><label><br />
                      <a href="javascript:logoff()" style="color:white">退出登录</a></label></td>
                  </tr>
                </table>
        <a href="#"></a></div>              
      </div>
    <form id="form" runat="server" >
      <div id="loginPart"  class="relatedLinks" runat="server" style="display:block">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center" height="50"      bgcolor="#FF3300">欢迎光临!</td>
                  </tr>
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300">账号：
                   <input id="Username" type="text" name="Username"  value=''/><br /></td>
                  </tr>
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300">密码：
                   <input id="Password" type="password" name="userKey"  value=''/><br /></td> 
                  </tr>
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300">
                  <asp:Button ID="Button1" runat="server" OnClick="LoginButton_Click" Text="登录" Width="100px" />
                  <asp:Button ID="Button2" runat="server" OnClick="RegistButton_Click" Text="注册" Width="100px" /> 
                  </td>   
                  </tr>
                </table>
        <p><img src="../images/te7.jpg" width="160" height="161" alt="pic" /></p>
        <p><a href="#"></a></p>
      </div>
        </form>
    <div id="advert"> 
      <p><a href="Us.php"><img src="../images/te6.jpg" alt="aa" width="160" height="161" border="0" /></a></p>
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
        <a href="Interactive.php"><img src="../images/to.jpg" alt="Hello" width="35%" height="196" border="0" /></a>
        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="55%" height="200" title="医院挂号系统">
          <param name="movie" value="../images/1.swf" />
          <param name="quality" value="high" />
          <embed src="../images/1.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="523" height="200"></embed>
        </object>
      </p>
    </div>
    <div class="story">
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <table width="533" border="1" align="center" cellpadding="1" cellspacing="1" bordercolor="#F55B1A">
          <tr>
            <td height="28" colspan="2" bgcolor="#F55B1A"><div align="center"><span class="STYLE8">预约查询</span></div></td>
          </tr>
          <tr>
            <td height="28" bgcolor="#FFFFFF"><span class="STYLE8">选择医院</span></td>
            <td width="266" bgcolor="#FFFFFF"><span class="STYLE8">选择科室</span></td>
          </tr>
          <tr>
            <td height="28" bgcolor="#FFFFFF"><label>
              <select id="hospital" name="hospital" runat="server" onchange="getNext()">
              </select>
            </label></td>
            <td bgcolor="#FFFFFF">
              <select id="department" name="department" runat="server" >
              </select></td>
          </tr>
          <tr>
            <td height="28" colspan="2" bgcolor="#F55B1A"><div align="center">
        <input type="button" id="SelectButton1" runat="server" onclick="SelectButton_Click()" value="查询医生" style="width:100px" />    
        <input type="button" id="SelectButton2" runat="server"  value="取消查询" style="width:100px" />
            </div></td>
          </tr>
          <tr>
            <td height="28" colspan="2" bgcolor="#F55B1A">&nbsp;</td>
          </tr>
        </table>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p><img src="../images/bo5.jpg" width="90%" height="140" alt="pic" /></p>
    </div>
    <div class="story">
      <div class="story">
        
    </div>
  </div>
  <!--end content -->
  <div id="siteInfo"> 
    <div align="center">
      <p><img src="../images/313.png" width="20" height="20" />地址：成都市双流县川大路学生公寓西园7舍二单元302B 邮编：610207 电话：13056676836</p>
      <p>&copy;2015 版权所有</p>
    </div>
  </div>
</div>
    
  <div id="siteInfo"> 
    <div align="center">
      <p><img src="../images/313.png" width="20" height="20" />地址：成都市双流县川大路学生公寓西园7舍二单元302B 邮编：610207 电话：13056676836</p>
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

