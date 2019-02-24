21111<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Arange.aspx.cs" Inherits="WebApplication1.Page.Arange" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head runat="server">
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<title>排班情况</title>
<link rel="stylesheet" href="../CSS/emx_nav_right.css" type="text/css" />
    <script src="../Scripts/jquery-1.7.1.js"></script>
<script type="text/javascript">
<!--
    var time = 3000;
    var numofitems = 7;
    function getNext(i, num) {
        var hosID = document.getElementById("hospital_" + i + "_" + num).value;
        $.ajax({
            type: "get",
            url: "Arange.aspx?act=getNext&hosID=" + hosID,
            dataType: "json",
            success: function (data) {
                showDepartment(data, i, num);
            },
            error: function () {
                alert("error!!");
            }
        });
    }

    function showDepartment(data, i, num) {
        var department = document.getElementById("department_" + i + "_" + num);
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

    var lastStyle = 0;
    function changeIdea(idea) {
        $("#idea_" + lastStyle).removeClass().addClass("unchoosed");
        $("#table_" + lastStyle).attr("style", "display:none");
        $("#idea_" + idea).removeClass().addClass("choosed");
        $("#table_" + idea).attr("style", "display:block");
        lastStyle = idea;
    }
    $(function () {
        $.ajax({
            type: "get",
            url: "Arange.aspx?act=init",
            dataType: "json",
            success: function (data) {
                showHospital(data);
            },
            error: function (XMLHttpReqeust) {
                alert("出现错误！");
            }
        });
    })
    function showHospital(data) {
        var num = 0;
        for (; num < 3; num++) {
            for (var i=0; i < 5; i++) {
                var hos = document.getElementById("hospital_" + i + "_" + num);
                hos.length = 0;
                for (var j = 0; j < data.length; j++) {
                    var item = new Option(data[j].hospitalName, data[j].hospitalID);
                    hos.options.add(item);
                }
            }
        }
    }
    function getDocID(i, num) {
        var departmentID = document.getElementById("department_" + i + "_" + num).value;
        $.ajax({
            type: "get",
            url: "Arange.aspx?act=getDocID&departmentID=" + departmentID,
            dataType: "json",
            success: function (data) {
                showDocID(data, i, num);
            },
            error: function () {
                alert("error!!");
            }
        });

    }
    function showDocID(data, i, num) {
        var doc = document.getElementById("docName_" + i + "_" + num);
        doc.length = 0;
        for (var i = 0; i < data.length; i++) {
            var item = new Option(data[i].docName, data[i].docID);
            doc.options.add(item);
        }
    }
    function getDocInfo(i, num) {
        var docID = document.getElementById("docName_" + i + "_" + num).value;
        $.ajax({
            type: "get",
            url: "Arange.aspx?act=getDocInfo&docID=" + docID,
            dataType: "json",
            success: function (data) {
                showDocInfo(data, i, num);
            },
            error: function (XMLHttpReqeust) {
                alert(XMLHttpReqeust.responseText);
            }
        });
    }
    function showDocInfo(data, i, num) {
        document.getElementById("docID_" + i + "_" + num).value = data.docID.toString();
        document.getElementById("room_" + i + "_" + num).value = data.room.toString();
        document.getElementById("docTitle_" + i + "_" + num).value = data.title.toString();
        document.getElementById("mon_" + i + "_" + num).value = data.day_1.toString(); document.getElementById("tue_" + i + "_" + num).value = data.day_2.toString(); document.getElementById("thir_" + i + "_" + num).value = data.day_3.toString();
        document.getElementById("forth_" + i + "_" + num).value = data.day_4.toString(); document.getElementById("fri_" + i + "_" + num).value = data.day_5.toString(); document.getElementById("sat_" + i + "_" + num).value = data.day_6.toString();
        document.getElementById("sun_" + i + "_" + num).value = data.day_0.toString();
    }
    function submit_Click(i) {
        document.getElementById("form"+i).submit();
    }

    // -->
</script>
<style type="text/css">
<!--

.choosed{
    color:white;
    background-color:#F55B1A;
    font-size:20px;
    font-weight: bold;
}
.unchoosed{
    background-color:white;
    font-size:20px;
    font-weight: bold;

}
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
    .auto-style1 {
        width: 221px;
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
        <a href="Interactive.php"><img src="../images/to.jpg" alt="Hello" width="435" height="198" border="0" /></a>
        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="523" height="200" title="医院挂号系统">
          <param name="movie" value="../images/1.swf" />
          <param name="quality" value="high" />
          <embed src="../images/1.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="523" height="200"></embed>
        </object>
      </p>
    </div>
       <div class="story" style="padding:0 0 0 0 ; margin-bottom:0px">
      <h3>&nbsp;</h3>
      <a id="idea_0" class="choosed"   href="javascript:changeIdea(0)">添加医生信息</a>
      <a id="idea_1" class="unchoosed" href="javascript:changeIdea(1)">更新医生信息</a>
      <a id="idea_2" class="unchoosed" href="javascript:changeIdea(2)">删除医生信息</a>
    </div>
    <div class="story" id="intent" style="margin-top:0px;padding:0 0 0 0 ">
      <form id="form0" action="Arange.aspx?act=submit_Click&num=0" method="post">
        <table id="table_0" width="69%" border="1"  cellpadding="1" cellspacing="1" bordercolor="#F55B1A" style=" margin-right: 79px;display:block" runat="server">
          <tr>
            <td height="28" colspan="13" bgcolor="#F55B1A"><div align="center"><span class="STYLE8">添加新表</span></div></td>
          </tr>
          <tr>
            <td width="60" height="28" bgcolor="#FFFFFF"><span class="STYLE8">医院</span></td>
            <td width="60" bgcolor="#FFFFFF"><span class="STYLE8">科室</span></td>
            <td width="90" bgcolor="#FFFFFF"><span class="STYLE8">诊室</span></td>
            <td width="90" bgcolor="#FFFFFF"><span class="STYLE8">医生ID</span></td>
            <td width="90" bgcolor="#FFFFFF"><span class="STYLE8">医生姓名</span></td>
            <td width="90" bgcolor="#FFFFFF"><span class="STYLE8">职称</span></td>
            <td width="35" bgcolor="#FFFFFF"><span class="STYLE8">周一病人数</span></td>
            <td width="35" bgcolor="#FFFFFF"><span class="STYLE8">周二病人数</span></td>
            <td width="35" bgcolor="#FFFFFF"><span class="STYLE8">周三病人数</span></td>
            <td width="35" bgcolor="#FFFFFF"><span class="STYLE8">周四病人数</span></td>
            <td width="35" bgcolor="#FFFFFF"><span class="STYLE8">周五病人数</span></td>
            <td width="35" bgcolor="#FFFFFF"><span class="STYLE8">周六病人数</span></td>
            <td width="35" bgcolor="#FFFFFF"><span class="STYLE8">周日病人数</span></td>
          </tr>
          <tr>
            <td height="28" bgcolor="#FFFFFF"><label>
             <select id="hospital_0_0" name="hospital_0_0" runat="server" onchange="getNext(0,0)">
              </select>
            </label></td>
            <td bgcolor="#FFFFFF"><select id="department_0_0" name="department_0_0"></select></td>
            <td bgcolor="#FFFFFF"><input type="text" name="room_0_0" value='' size="8" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="docID_0_0" value='' size="12" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="docName_0_0" value='' size="12" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="docTitle_0_0" value='' size="10" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="mon_0_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="tue_0_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="thir_0_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="forth_0_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="fri_0_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="sat_0_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF" class="auto-style1"><input type="text" name="sun_0_0" value='' size="5" /></td>
          </tr>
          <tr>
            <td height="28" bgcolor="#FFFFFF"><label>
            <select id="hospital_1_0" name="hospital" runat="server" onchange="getNext(1,0)">
              </select>
            </label></td>
            <td bgcolor="#FFFFFF"><select id="department_1_0" name="department_1_0"></select></td>
            <td bgcolor="#FFFFFF"><input type="text" name="room_1_0" value='' size="8" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="docID_1_0" value='' size="12" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="docName_1_0" value='' size="12" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="docTitle_1_0" value='' size="10" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="monday_1_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="tue_1_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="thir_1_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="forth_1_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="fri_1_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="sat_1_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF" class="auto-style1"><input type="text" name="sun_1_0" value='' size="5" /></td>
          </tr>
            <tr>
            <td height="28" bgcolor="#FFFFFF"><label>
            <select id="hospital_2_0" name="hospital" runat="server" onchange="getNext(2,0)">
              </select>
            </label></td>
            <td bgcolor="#FFFFFF"><select id="department_2_0" name="department_2_0"></select></td>
            <td bgcolor="#FFFFFF"><input type="text" name="room_2_0" value='' size="8" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="docID_2_0" value='' size="12" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="docName_2_0" value='' size="12" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="docTitle_2_0" value='' size="10" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="monday_2_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="tue_2_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="thir_2_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="forth_2_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="fri_2_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="sat_2_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF" class="auto-style1"><input type="text" name="sun_2_0" value='' size="5" /></td>
          </tr>
            <tr>
            <td height="28" bgcolor="#FFFFFF"><label>
            <select id="hospital_3_0" name="hospital" runat="server" onchange="getNext(3,0)">
              </select>
            </label></td>
            <td bgcolor="#FFFFFF"><select id="department_3_0" name="department_3_0"></select></td>
            <td bgcolor="#FFFFFF"><input type="text" name="room_3_0" value='' size="8" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="docID_3_0" value='' size="12" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="docName_3_0" value='' size="12" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="docTitle_3_0" value='' size="10" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="monday_3_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="tue_3_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="thir_3_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="forth_3_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="fri_3_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="sat_3_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF" class="auto-style1"><input type="text" name="sun_3_0" value='' size="5" /></td>
          </tr>
            <tr>
            <td height="28" bgcolor="#FFFFFF"><label>
            <select id="hospital_4_0" name="hospital" runat="server" onchange="getNext(4,0)">
              </select>
            </label></td>
            <td bgcolor="#FFFFFF"><select id="department_4_0" name="department_4_0"></select></td>
            <td bgcolor="#FFFFFF"><input type="text" name="room_4_0" value='' size="8" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="docID_4_0" value='' size="12" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="docName_4_0" value='' size="12" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="docTitle_4_0" value='' size="10" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="monday_4_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="tue_4_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="thir_4_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="forth_4_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="fri_4_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input type="text" name="sat_4_0" value='' size="5" /></td>
            <td bgcolor="#FFFFFF" class="auto-style1"><input type="text" name="sun_4_0" value='' size="5" /></td>
          </tr>
       
          <tr>
            <td height="28" colspan="13" bgcolor="#F55B1A"><div align="center">
                <button onclick="submit_Click(0)">提交</button>
            </div></td>
          </tr>
        </table>
      </form>
      <form id="form1" action="Arange.aspx?act=submit_Click&num=1" method="post">
          <table id="table_1" width="69%" border="1" cellpadding="1" cellspacing="1" bordercolor="#F55B1A" style="margin-right: 79px;display:none" runat="server">
            <tr>
            <td height="28" colspan="13" bgcolor="#F55B1A"><div align="center"><span class="STYLE8">更新医生信息</span></div></td>
            </tr>
              <tr>
            <td width="60" height="28" bgcolor="#FFFFFF"><span class="STYLE8">医院</span></td>
            <td width="60" bgcolor="#FFFFFF"><span class="STYLE8">科室</span></td>
            <td width="90" bgcolor="#FFFFFF"><span class="STYLE8">医生姓名</span></td>
            <td width="90" bgcolor="#FFFFFF"><span class="STYLE8">医生ID</span></td>
            <td width="90" bgcolor="#FFFFFF"><span class="STYLE8">诊室</span></td>
            <td width="90" bgcolor="#FFFFFF"><span class="STYLE8">职称</span></td>
            <td width="35" bgcolor="#FFFFFF"><span class="STYLE8">周一病人数</span></td>
            <td width="35" bgcolor="#FFFFFF"><span class="STYLE8">周二病人数</span></td>
            <td width="35" bgcolor="#FFFFFF"><span class="STYLE8">周三病人数</span></td>
            <td width="35" bgcolor="#FFFFFF"><span class="STYLE8">周四病人数</span></td>
            <td width="35" bgcolor="#FFFFFF"><span class="STYLE8">周五病人数</span></td>
            <td width="35" bgcolor="#FFFFFF"><span class="STYLE8">周六病人数</span></td>
            <td width="35" bgcolor="#FFFFFF"><span class="STYLE8">周日病人数</span></td>
          </tr>
              <tr>
            <td height="28" bgcolor="#FFFFFF"><label>
             <select id="hospital_0_1" name="hospital_0_1" runat="server" onchange="getNext(0,1)">
              </select>
            </label></td>
            <td bgcolor="#FFFFFF"><select id="department_0_1" name="department_0_1" onfocus="getDocID(0,1)" onchange="getDocID(0,1)"></select></td>
            <td bgcolor="#FFFFFF"><select id="docName_0_1" name="docName_0_1" onfocus="getDocInfo(0,1)" onchange="getDocInfo(0,1)"></select></td>
            <td bgcolor="#FFFFFF"><input id="docID_0_1" type="text" name="docID_0_1" value='' size="12" readonly="readonly" /></td>
            <td bgcolor="#FFFFFF"><input id="room_0_1" type="text" name="room_0_1" value='' size="12" /></td>
            <td bgcolor="#FFFFFF"><input id="docTitle_0_1" type="text" name="docTitle_0_1" value='' size="10" /></td>
            <td bgcolor="#FFFFFF"><input id="mon_0_1" type="text" name="mon_0_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="tue_0_1" type="text" name="tue_0_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="thir_0_1" type="text" name="thir_0_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="forth_0_1" type="text" name="forth_0_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="fri_0_1" type="text" name="fri_0_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="sat_0_1" type="text" name="sat_0_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF" class="auto-style1"><input id="sun_0_1" type="text" name="sun_0_1" value='' size="5" /></td>
          </tr> <tr>
            <td height="28" bgcolor="#FFFFFF"><label>
             <select id="hospital_1_1" name="hospital_1_1" runat="server" onchange="getNext(1,1)">
              </select>
            </label></td>
            <td bgcolor="#FFFFFF"><select id="department_1_1" name="department_1_1" onfocus="getDocID(1,1)" onchange="getDocID(1,1)"></select></td>
            <td bgcolor="#FFFFFF"><select id="docName_1_1" name="docName_1_1" onfocus="getDocInfo(1,1)" onchange="getDocInfo(1,1)"></select></td>
            <td bgcolor="#FFFFFF"><input id="docID_1_1" type="text" name="docID_1_1" value='' size="12" readonly="readonly" /></td>
            <td bgcolor="#FFFFFF"><input id="room_1_1" type="text" name="room_1_1" value='' size="12" /></td>
            <td bgcolor="#FFFFFF"><input id="docTitle_1_1" type="text" name="docTitle_1_1" value='' size="10" /></td>
            <td bgcolor="#FFFFFF"><input id="mon_1_1" type="text" name="mon_1_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="tue_1_1" type="text" name="tue_1_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="thir_1_1" type="text" name="thir_1_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="forth_1_1" type="text" name="forth_1_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="fri_1_1" type="text" name="fri_1_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="sat_1_1" type="text" name="sat_1_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF" class="auto-style1"><input id="sun_1_1" type="text" name="sun_1_1" value='' size="5" /></td>
          </tr>
             <tr>
            <td height="28" bgcolor="#FFFFFF"><label>
             <select id="hospital_2_1" name="hospital_2_1" runat="server" onchange="getNext(2,1)">
              </select>
            </label></td>
            <td bgcolor="#FFFFFF"><select id="department_2_1" name="department_2_1" onfocus="getDocID(2,1)" onchange="getDocID(2,1)"></select></td>
            <td bgcolor="#FFFFFF"><select id="docName_2_1" name="docName_2_1" onfocus="getDocInfo(2,1)" onchange="getDocInfo(2,1)"></select></td>
            <td bgcolor="#FFFFFF"><input id="docID_2_1" type="text" name="docID_2_1" value='' size="12" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="room_2_1" type="text" name="room_2_1" value='' size="12" /></td>
            <td bgcolor="#FFFFFF"><input id="docTitle_2_1" type="text" name="docTitle_2_1" value='' size="10" /></td>
            <td bgcolor="#FFFFFF"><input id="mon_2_1" type="text" name="mon_2_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="tue_2_1" type="text" name="tue_2_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="thir_2_1" type="text" name="thir_2_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="forth_2_1" type="text" name="forth_2_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="fri_2_1" type="text" name="fri_2_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="sat_2_1" type="text" name="sat_2_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF" class="auto-style1"><input id="sun_2_1" type="text" name="sun_2_1" value='' size="5" /></td>
          </tr>
              
             <tr>
            <td height="28" bgcolor="#FFFFFF"><label>
             <select id="hospital_3_1" name="hospital_3_1" runat="server" onchange="getNext(3,1)">
              </select>
            </label></td>
            <td bgcolor="#FFFFFF"><select id="department_3_1" name="department_3_1" onfocus="getDocID(3,1)" onchange="getDocID(3,1)"></select></td>
            <td bgcolor="#FFFFFF"><select id="docName_3_1" name="docName_3_1" onfocus="getDocInfo(3,1)" onchange="getDocInfo(3,1)"></select></td>
            <td bgcolor="#FFFFFF"><input id="docID_3_1" type="text" name="docID_3_1" value='' size="12" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="room_3_1" type="text" name="room_3_1" value='' size="12" /></td>
            <td bgcolor="#FFFFFF"><input id="docTitle_3_1" type="text" name="docTitle_3_1" value='' size="10" /></td>
            <td bgcolor="#FFFFFF"><input id="mon_3_1" type="text" name="mon_3_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="tue_3_1" type="text" name="tue_3_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="thir_3_1" type="text" name="thir_3_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="forth_3_1" type="text" name="forth_3_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="fri_3_1" type="text" name="fri_3_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="sat_3_1" type="text" name="sat_3_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF" class="auto-style1"><input id="sun_3_1" type="text" name="sun_3_1" value='' size="5" /></td>
          </tr>
                
             <tr>
            <td height="28" bgcolor="#FFFFFF"><label>
             <select id="hospital_4_1" name="hospital_4_1" runat="server" onchange="getNext(4,1)">
              </select>
            </label></td>
            <td bgcolor="#FFFFFF"><select id="department_4_1" name="department_4_1" onfocus="getDocID(4,1)" onchange="getDocID(4,1)"></select></td>
            <td bgcolor="#FFFFFF"><select id="docName_4_1" name="docName_4_1" onfocus="getDocInfo(4,1)" onchange="getDocInfo(4,1)"></select></td>
            <td bgcolor="#FFFFFF"><input id="docID_4_1" type="text" name="docID_4_1" value='' size="12" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="room_4_1" type="text" name="room_4_1" value='' size="12" /></td>
            <td bgcolor="#FFFFFF"><input id="docTitle_4_1" type="text" name="docTitle_4_1" value='' size="10" /></td>
            <td bgcolor="#FFFFFF"><input id="mon_4_1" type="text" name="mon_4_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="tue_4_1" type="text" name="tue_4_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="thir_4_1" type="text" name="thir_4_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="forth_4_1" type="text" name="forth_4_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="fri_4_1" type="text" name="fri_4_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF"><input id="sat_4_1" type="text" name="sat_4_1" value='' size="5" /></td>
            <td bgcolor="#FFFFFF" class="auto-style1"><input id="sun_4_1" type="text" name="sun_4_1" value='' size="5" /></td>
          </tr>
              <tr>
            <td height="28" colspan="13" bgcolor="#F55B1A"><div align="center">
                <button onclick="submit_Click(1)">修改</button>
            </div></td>
          </tr>
          </table>
          </form>
      <form id="form2" action="Arange.aspx?act=submit_Click&num=2" method="post">
          <table id="table_2" width="69%" border="1" cellpadding="1" cellspacing="1" bordercolor="#F55B1A" style="margin-right:79px;display:none" runat="server">
            <tr>
            <td height="28" colspan="13" bgcolor="#F55B1A"><div align="center"><span class="STYLE8">删除医生信息</span></div></td>
            </tr>
              <tr>
            <td width="60" height="28" bgcolor="#FFFFFF"><span class="STYLE8">医院</span></td>
            <td width="60" bgcolor="#FFFFFF"><span class="STYLE8">科室</span></td>
            <td width="90" bgcolor="#FFFFFF"><span class="STYLE8">医生姓名</span></td>
            <td width="90" bgcolor="#FFFFFF"><span class="STYLE8">医生ID</span></td>
            <td width="90" bgcolor="#FFFFFF"><span class="STYLE8">诊室</span></td>
            <td width="90" bgcolor="#FFFFFF"><span class="STYLE8">职称</span></td>
            <td width="35" bgcolor="#FFFFFF"><span class="STYLE8">周一病人数</span></td>
            <td width="35" bgcolor="#FFFFFF"><span class="STYLE8">周二病人数</span></td>
            <td width="35" bgcolor="#FFFFFF"><span class="STYLE8">周三病人数</span></td>
            <td width="35" bgcolor="#FFFFFF"><span class="STYLE8">周四病人数</span></td>
            <td width="35" bgcolor="#FFFFFF"><span class="STYLE8">周五病人数</span></td>
            <td width="35" bgcolor="#FFFFFF"><span class="STYLE8">周六病人数</span></td>
            <td width="35" bgcolor="#FFFFFF"><span class="STYLE8">周日病人数</span></td>
          </tr>
              <tr>
            <td height="28" bgcolor="#FFFFFF"><label>
             <select id="hospital_0_2" name="hospital_0_2" runat="server" onchange="getNext(0,2)">
              </select>
            </label></td>
            <td bgcolor="#FFFFFF"><select id="department_0_2" name="department_0_2" onfocus="getDocID(0,2)" onchange="getDocID(0,2)"></select></td>
            <td bgcolor="#FFFFFF"><select id="docName_0_2" name="docName_0_2" onfocus="getDocInfo(0,2)" onchange="getDocInfo(0,2)"></select></td>
            <td bgcolor="#FFFFFF"><input id="docID_0_2" type="text" name="docID_0_2" value='' size="12" readonly="readonly" /></td>
            <td bgcolor="#FFFFFF"><input id="room_0_2" type="text" name="room_0_2" value='' size="12" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="docTitle_0_2" type="text" name="docTitle_0_2" value='' size="10" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="mon_0_2" type="text" name="mon_0_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="tue_0_2" type="text" name="tue_0_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="thir_0_2" type="text" name="thir_0_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="forth_0_2" type="text" name="forth_0_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="fri_0_2" type="text" name="fri_0_" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="sat_0_2" type="text" name="sat_0_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF" class="auto-style1"><input id="sun_0_2" type="text" name="sun_0_2" value='' size="5" readonly="readonly" /></td>
          </tr> <tr>
            <td height="28" bgcolor="#FFFFFF"><label>
             <select id="hospital_1_2" name="hospital_1_2" runat="server" onchange="getNext(1,2)">
              </select>
            </label></td>
            <td bgcolor="#FFFFFF"><select id="department_1_2" name="department_1_2" onfocus="getDocID(1,2)" onchange="getDocID(1,2)"></select></td>
            <td bgcolor="#FFFFFF"><select id="docName_1_2" name="docName_1_2" onfocus="getDocInfo(1,2)" onchange="getDocInfo(1,2)"></select></td>
            <td bgcolor="#FFFFFF"><input id="docID_1_2" type="text" name="docID_1_2" value='' size="12" readonly="readonly" /></td>
            <td bgcolor="#FFFFFF"><input id="room_1_2" type="text" name="room_1_2" value='' size="12" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="docTitle_1_2" type="text" name="docTitle_1_2" value='' readonly="readonly"size="10" /></td>
            <td bgcolor="#FFFFFF"><input id="mon_1_2" type="text" name="mon_1_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="tue_1_2" type="text" name="tue_1_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="thir_1_2" type="text" name="thir_1_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="forth_1_2" type="text" name="forth_1_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="fri_1_2" type="text" name="fri_1_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="sat_1_2" type="text" name="sat_1_2" value='' size="5" readonly="readonly" /></td>
            <td bgcolor="#FFFFFF" class="auto-style1"><input id="sun_1_2" type="text" name="sun_1_2" readonly="readonly" value='' size="5" /></td>
          </tr>
             <tr>
            <td height="28" bgcolor="#FFFFFF"><label>
             <select id="hospital_2_2" name="hospital_2_2" runat="server" onchange="getNext(2,2)">
              </select>
            </label></td>
            <td bgcolor="#FFFFFF"><select id="department_2_2" name="department_2_2" onfocus="getDocID(2,2)" onchange="getDocID(2,2)"></select></td>
            <td bgcolor="#FFFFFF"><select id="docName_2_2" name="docName_2_2" onfocus="getDocInfo(2,2)" onchange="getDocInfo(2,2)"></select></td>
            <td bgcolor="#FFFFFF"><input id="docID_2_2" type="text" name="docID_2_2" value='' size="12" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="room_2_2" type="text" name="room_2_2" value='' size="12" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="docTitle_2_2" type="text" name="docTitle_2_2" value='' size="10" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="mon_2_2" type="text" name="mon_2_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="tue_2_2" type="text" name="tue_2_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="thir_2_2" type="text" name="thir_2_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="forth_2_2" type="text" name="forth_2_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="fri_2_2" type="text" name="fri_2_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="sat_2_2" type="text" name="sat_2_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF" class="auto-style1"><input id="sun_2_2" type="text" name="sun_2_2" value='' size="5" readonly="readonly"/></td>
          </tr>
              
             <tr>
            <td height="28" bgcolor="#FFFFFF"><label>
             <select id="hospital_3_2" name="hospital_3_2" runat="server" onchange="getNext(3,2)">
              </select>
            </label></td>
            <td bgcolor="#FFFFFF"><select id="department_3_2" name="department_3_2" onfocus="getDocID(3,2)" onchange="getDocID(3,2)"></select></td>
            <td bgcolor="#FFFFFF"><select id="docName_3_2" name="docName_3_2" onfocus="getDocInfo(3,2)" onchange="getDocInfo(3,2)"></select></td>
            <td bgcolor="#FFFFFF"><input id="docID_3_2" type="text" name="docID_3_2" value='' size="12" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="room_3_2" type="text" name="room_3_2" value='' size="12" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="docTitle_3_2" type="text" name="docTitle_3_2" value='' size="10" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="mon_3_2" type="text" name="mon_3_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="tue_3_2" type="text" name="tue_3_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="thir_3_2" type="text" name="thir_3_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="forth_3_2" type="text" name="forth_3_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="fri_3_2" type="text" name="fri_3_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="sat_3_2" type="text" name="sat_3_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF" class="auto-style1"><input id="sun_3_2" type="text" name="sun_3_2" value='' size="5" readonly="readonly"/></td>
          </tr>
              <tr>
            <td height="28" bgcolor="#FFFFFF"><label>
             <select id="hospital_4_2" name="hospital_4_2" runat="server" onchange="getNext(3,2)">
              </select>
            </label></td>
            <td bgcolor="#FFFFFF"><select id="department_4_2" name="department_4_2" onfocus="getDocID(4,2)" onchange="getDocID(4,2)"></select></td>
            <td bgcolor="#FFFFFF"><select id="docName_4_2" name="docName_4_2" onfocus="getDocInfo(4,2)" onchange="getDocInfo(4,2)"></select></td>
            <td bgcolor="#FFFFFF"><input id="docID_4_2" type="text" name="docID_4_2" value='' size="12" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="room_4_2" type="text" name="room_4_2" value='' size="12" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="docTitle_4_2" type="text" name="docTitle_4_2" value='' size="10" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="mon_4_2" type="text" name="mon_4_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="tue_4_2" type="text" name="tue_4_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="thir_4_2" type="text" name="thir_4_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="forth_4_2" type="text" name="forth_4_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="fri_4_2" type="text" name="fri_4_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF"><input id="sat_4_2" type="text" name="sat_4_2" value='' size="5" readonly="readonly"/></td>
            <td bgcolor="#FFFFFF" class="auto-style1"><input id="sun_4_2" type="text" name="sun_4_2" value='' size="5" readonly="readonly"/></td>
          </tr>
              <tr>
            <td height="28" colspan="13" bgcolor="#F55B1A"><div align="center">
                <button onclick="submit_Click(2)">删除</button>
            </div></td>
          </tr>
          </table>
          </form>

    </div>
  </div>
  <!--end content -->
  <div align="center" id="siteInfo"> 
    <div align="center">
      <p><img src="../images/313.png" width="17" height="17" />地址：成都市双流县川大路学生公寓西园7舍二单元302B 邮编：610207 电话：13056676836</p>
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

