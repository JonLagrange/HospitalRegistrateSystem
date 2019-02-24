<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorChoose.aspx.cs" Inherits="WebApplication1.Page.DoctorChoose" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>医生选择</title>
<link rel="stylesheet" href="../CSS/emx_nav_right.css" type="text/css" />
    
<script type="text/javascript" src="../Scripts/jquery-1.7.1.js"></script>
<script type="text/javascript">
    function getRegistrate(arrangeID, day) {
        $.ajax({
            type: "get",
            url: "DoctorChoose.aspx?act=RecordRegistration&arrangeID=" + arrangeID + "&day=" + day,
            dataType: "json",
            success: function (data) {
                recordRegistrate(data);
            },
            error: function (XMLHttpReqeust) {
                alert(XMLHttpReqeust.responseText);
            }
        });
        
    }
    function recordRegistrate(data) {
        var information = data.information.toString();
        if (information.localeCompare("success") == 0) {
            var docID = data.id.toString();
            var num = data.num.toString();
            var left = data.left.toString();
            alert("预约成功!");
            var data = document.getElementById(docID + "_" + num);
            data.innerText = "还剩余" + left + "位";
        }
        if (information.localeCompare("overflow") == 0)
            alert("预约人数已满!");
        if (information.localeCompare("noUser") == 0)
            alert("请先登录后预约!");
    }

    var weekNum = 0;
    function addWeek(weeki) {
        weekNum += weeki;
        var data = document.getElementById("departmentID");
        if (weekNum < 0) {
            weekNum = 0;
            alert("不能查看过去的时间");
            return;
        }
        else {
            $.ajax({
                type: "get",
                url: "DoctorChoose.aspx?act=getNextWeek&weekNum=" + weekNum + "&departmentID="+data.value,
                success: function (data) {
                    changeDay(data);
                },
                error: function (XMLHttpReqeust) {
                }
            });
        }
    }
    function changeDay(data) {
        var table = document.getElementById("tableForDoctor");
        table.innerHTML = data;
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
.choose{
    border:1px solid black;
}
.weekPoint_right{
	width:11px;
	height:50px;
	line-height:50px;
	float:right;
	background-color:#017ac3;
	color:#ffffff;
	vertical-align:middle;
	cursor:pointer;
}
.weekPoint_left{
	width:11px;
	height:50px;
	line-height:50px;
	float:left;
	background-color:#017ac3;
	color:#ffffff;
	vertical-align:middle;
	cursor:pointer;
}
-->
</style>
</head>
<body onmousemove="closesubnav(event);">
<div class="skipLinks">skip to: <a href="#content">page content</a> | <a href="#pageNav">links on this page</a> | <a href="#globalNav">site navigation</a> | <a href="#siteInfo">footer (site information)</a> </div>
<div id="masthead">
  <h1 class="STYLE1" id="siteName">医院挂号系统</h1>
  <div id="globalNav"> <img alt="" src="gblnav_left.gif" height="32" width="4" id="gnl" /> <img alt="" src="glbnav_right.gif" height="32" width="4" id="gnr" />
    <div id="globalLink"> <a href="MySCU.php" id="gl1" class="glink" onmouseover="ehandler(event,menuitem1);">首页</a><a href="Study.php" target="_self" class="glink" id="gl2" onmouseover="ehandler(event,menuitem2);">学生学习</a><a href="Venture.php" id="gl3" class="glink" onmouseover="ehandler(event,menuitem3);">学生创业</a><a href="Job.php" id="gl4" class="glink" onmouseover="ehandler(event,menuitem4);">学生工作</a><a href="Guide.php" id="gl5" class="glink" onmouseover="ehandler(event,menuitem5);">办事指南</a><a href="Interactive.php" id="gl6" class="glink" onmouseover="ehandler(event,menuitem6);">留言互动</a><a href="Us.php" id="gl7" class="glink" onmouseover="ehandler(event,menuitem7);">关于我们</a> </div>
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
  <img alt="" src="tl_curve_white.gif" height="6" width="6" id="tl" /> <img alt="" src="tr_curve_white.gif" height="6" width="6" id="tr" />
 <div id="pageNav">
      <div id="loginPart"  class="relatedLinks" runat="server" style="display:block" >
          <form id="form1" runat="server">
              <table width="95%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300">欢迎光临!</td>
                  </tr>
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300">账号：
                   <input id="Username" type="text" name="userName"  value=''/><br /></td>
                  </tr>
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300">密码：&nbsp;
                   <input id="Password" type="password" name="userKey"  value=''/><br /></td> 
                  </tr>
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300"><asp:Button ID="LoginButton" runat="server" OnClick="LoginButton_Click" Text="登录" Width="100px" />
                  <asp:Button ID="RegistButton" runat="server" OnClick="RegistButton_Click" Text="注册" Width="100px" /> 
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                  </td>   
                  </tr>
                </table>
            </form>
        <a href="#"></a></div>
       <div  id="selfMangement" name="selfMangement" runat="server" style="display:none">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300"  style="color:white">欢迎光临!</td>
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
        <a href="#"></a>          
      </div>
      <div class="relatedLinks"></div>
      <div id="advert"> 
      <p><a href="Us.php"><img src="../images/t2.jpg" alt="aa" width="160" height="160" border="0" /></a></p>
      <h3 align="center" class="relatedLinks">友情链接</h3>
      <table width="96%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><form id="form1" name="form1" method="post" action="">
              <table width="105%" height="80%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><a href="http://www.scu.edu.cn/" target="_blank"><strong>四川大学</strong></a></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><a href="http://xsc.scu.edu.cn/" target="_blank"><strong>学工部</strong></a></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><label for="label"><a href="http://jwc.scu.edu.cn/jwc/frontPage.action" target="_blank" class="STYLE5">教务处</a></label></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><label for="label2"><a href="http://tuanwei.scu.edu.cn/" target="_blank">校团委</a></label></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><a href="http://cs.scu.edu.cn/" target="_blank"><strong>计算机学院</strong></a></td>
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
        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="523" height="200" title="我的川大">
          <param name="movie" value="../images/1.swf" />
          <param name="quality" value="high" />
          <embed src="../images/1.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="523" height="200"></embed>
        </object>
      </p>
    </div>
      <div id="tableForDoctor" runat="server" style="text-align:center"></div>
  </div>
  <!--end content -->
  <div id="siteInfo"> 
    <div align="center">
      <p><img src="313.png" width="20" height="20" />地址：成都市双流县川大路学生公寓西园7舍二单元302B 邮编：610207 电话：13056676836</p>
      <p>&copy;2015 邓有强版权所有</p>
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


