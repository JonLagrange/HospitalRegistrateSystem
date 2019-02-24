<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head runat="server">
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<title>医院挂号系统</title>
    <link href="../CSS/emx_nav_right.css" rel="stylesheet" />
    <script src="../Scripts/jquery-1.7.1.js"></script>
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
    function LoginButton_Click() {
        window.location = "SelfInformationgManagement.aspx";
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
              <table width="95%" border="0" cellspacing="0" cellpadding="0" >
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
    <div id="loginPart" style="display:block" runat="server">
    <form id="form" runat="server" >
        
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
                  <asp:Button ID="Button4" runat="server" OnClick="Registrate_Click" Text="预约" Width="100px" />
                  </td>   
                  </tr>
                </table>
        <p><img src="../images/te7.jpg" width="160" height="161" alt="pic" /></p>
        <p><a href="#"></a></p>

        </form>
    </div>
    <div id="advert"> 
      <p><a href="Us.php"><img src="../images/te6.jpg" alt="aa" width="160" height="161" border="0" /></a></p>
      <h3 align="center" class="relatedLinks">友情链接</h3>
      <table width="96%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><form id="form1" name="form1" method="post" action="">
              <table width="96%" height="80%" border="0" cellpadding="0" cellspacing="0">
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
      <h3><a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9229">2014年度中国最佳医院排行榜发布，我院连续六年蝉联第二名</a></h3>
      <p>由复旦大学医院管理研究所举办的百家争鸣医院学科建设论坛暨2014年度中国最佳医院排行榜发布会于2015年11月15日在上海隆重举行，《2014年最佳医院排行榜（全国综合）》、《2014年最佳医院排行榜（全国专科汇总）》、《2014年最佳专科排行榜》、《2014年区域综合排行榜（区域综合实力）》、《2014年区域专科排行榜（区域专科排名）》等五个榜单同时发布，我院连续六年蝉联最佳医院排行榜（全国综合和全国专科汇总）第二名。<a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9229" target="_blank">详情</a></p>
      <p><img src="../images/bo6.jpg" width="1070" height="167"></p>
      <p><img src="../images/to3.jpg" width="1080" height="400"></p>
    </div>
      <div class="story" style="padding-top:0">
        <table width="100%" cellpadding="0" cellspacing="0" summary="">
          <tr valign="top">
            <td width="49%" class="storyLeft"><p> <a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9268" class="STYLE3">2016年华西医院博士后报名通知</a></p>
                <p>今年排行榜新增烧伤、检验医学、核医学和超声医学四个专业，参评专业总数达到34个（未涵盖重症医学科、护理学、中西医结合科、急诊科、药学）。我院参评的30个专业中（缺口腔医学、妇产科、小儿内科、烧伤和整形合并），麻醉科连续六年排名专科第一，放射科排名第二，病理科、神经外科、泌尿外科、普外科、检验医学、核医学等6个专科排名第三。<a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9268" target="_blank">详情</a></p></td>
            <td width="51%"><p> <a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9174" class="STYLE3">国家卫生计生委督查组来院督查改善医疗服务行动</a></p>
                <p>今年首度推出东北区、华北区、华东区、华南区、华中区、西南区和西北区等七大区域的医院排行榜。我院在西南区区域综合排行榜中以满分100分荣获第一名，参评的30个专科中，除小儿外科、烧伤整形2个专科排名第二外，其余28个专科均排名第一，排名前五的专科达到14个，排名前十的专科达到24个，另有6个专科获得提名，我院专科声誉排名呈现稳中有升的总体格局。<a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9174" target="_blank">详情</a></p></td>
          </tr>
          <tr valign="top">
            <td class="storyLeft"><p> <a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9109" class="STYLE3">四川大学华西医院EPS采购项目比选公告</a></p>
                <p>李为民院长率领相关专科和职能部门代表参加了论坛和发布会，并做了《一体化管理的多院区发展模式——华西医疗集团实践》专题演讲，得到了参会代表的高度评价。梅奥医疗中心行政院长、名誉院长James Anderson先生、国家自然科学基金委医学科学部董尔丹教授、纽约长老会医院高级副总裁兼首席医疗官Liebowitz先生分别做了《梅奥医疗系统和照护网络》、《学术评价应更科学》、《学科建设的集团化战略》专题报告。<a href="http://tuanwei.scu.edu.cn/index.php/main/web/notice/detail/i/8099">详情</a></p></td>
            <td><p> <a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9172" class="STYLE3">我院官方微信在2015中国医院宣传年会上获三项大奖</a></p>
                <p>12月7日，受国家卫生计生委医政医管局委托，北京协和医学院公共卫生学院刘远立院长一行在我院行政楼三会议室召开了成都7家医院《进一步改善医疗服务行动计划》的现场沟通会，启动了行动计划效果评估预调查工作。会议由程南生副院长主持，特邀医院管理研究所石应康教授出席，党办、医教部、护理部、门诊部的负责人参会，为了解和掌握《进一步改善医疗服务行动计划》工作进展，及时进行总结评估，对开展效果评估提供循证依据和信息支持。<a href="http://tuanwei.scu.edu.cn/index.php/main/web/notice/detail/i/8099">详情</a></p></td>
          </tr>
          <tr valign="top">
            <td class="storyLeft"><p> <a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9267" class="STYLE3">重症医学科承办四川省重症医师大会</a></p>
                <p>国家卫生计生委医政医管局委托北京协和医学院公共卫生学院进行第三方效果评估，四川是全国的第一站，包括我院、华西第二医院、华西口腔医院、华西第四医院、省人民医院、省妇幼保健院、成都中医药大学附属医院在内的成都7家医疗机构参加了本次效果评估的现场调研和预调查工作，预调查的主要对象包括医疗机构、医务人员。<a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9174">详情</a></p></td>
            <td><p> <a href="http://tuanwei.scu.edu.cn/index.php/main/web/notice/detail/i/8099" class="STYLE2"><strong>成都华西天使宾馆有限责任公司更换中空玻璃改造</strong></a></p>
                <p>北京协和医学院公共卫生学院刘远立院长介绍了本次效果评估项目的背景和意见。他说，项目旨在建立第三方评估机制，更加客观、真实地反映患者就医体验；同时将第三方评估结果向社会公布，并通过媒体传播正能量，在社会上进行正面宣传和认识，使氛围向正面发展，会上，各医院与会代表针对问卷4个部分的核心内容进行了充分的讨论。<a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9268">详情</a></p></td>
          </tr>
        </table>
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

