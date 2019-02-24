<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Regist.aspx.cs" Inherits="WebApplication1.Page.Regist" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head runat="server">
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>注册系统</title>
<link rel="stylesheet" href="../CSS/emx_nav_right.css" type="text/css" />
<script type="text/javascript">
<!--
var time = 3000;
var numofitems = 7;

//menu constructor
function menu(allitems,thisitem,startstate){ 
  callname= "gl"+thisitem;
  divname="subglobal"+thisitem;  
	this.numberofmenuitems = allitems;
	this.caller = document.getElementById(callname);
	this.thediv = document.getElementById(divname);
	this.thediv.style.visibility = startstate;
}
				 
//menu methods
function ehandler(event,theobj){
  for (var i=1; i<= theobj.numberofmenuitems; i++){
	  var shutdiv =eval( "menuitem"+i+".thediv");
    shutdiv.style.visibility="hidden";
	}
	theobj.thediv.style.visibility="visible";
}
				
function closesubnav(event){
  if ((event.clientY <48)||(event.clientY > 107)){
    for (var i=1; i<= numofitems; i++){
      var shutdiv =eval('menuitem'+i+'.thediv');
			shutdiv.style.visibility='hidden';
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
	background-color: #333333;
}
body,td,th {
	color: #666666;
}
-->
</style>
</head>
<body onmousemove="closesubnav(event);">
<div class="skipLinks">skip to: <a href="#content">page content</a> | <a href="#pageNav">links on this page</a> | <a href="#globalNav">site navigation</a> | <a href="#siteInfo">footer (site information)</a> </div>
<div id="masthead">
  <h1 class="STYLE1" id="siteName">医院挂号系统</h1>
  <div id="globalNav"> <img alt="" src="../images/gblnav_left.gif" height="32" width="4" id="gnl" /> <img alt="" src="../images/glbnav_right.gif" height="32" width="4" id="gnr" />
    <div id="globalLink"> <a href="MySCU.php" id="gl1" class="glink" onmouseover="ehandler(event,menuitem1);">请先登录再挂号。本挂号系统挂号单一经生成，概不退还。请各位病友仔细阅读后，再进行挂号。</a><a href="Us.php" id="gl7" class="glink" onmouseover="ehandler(event,menuitem7);"></a> </div>
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
      <table width="96%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><form id="form1" name="form1" method="POST" action="">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="50" align="center" bgcolor="#FF3300">&nbsp;</td>
              </tr>
              <tr>
                <td height="50" align="center" bgcolor="#FF3300"><label for="textfield"></label>
                    <span class="STYLE12">医院挂号系统</span></td>
              </tr>
              <tr>
                <td height="50" align="center" bgcolor="#FF3300"><label for="textfield2"><span class="STYLE12">欢迎您！</span></label></td>
              </tr>
              <tr>
                <td height="50" align="center" bgcolor="#FF3300"><label><br />
                </label></td>
              </tr>
            </table>
          </form></td>
        </tr>
      </table>
      <a href="#"></a></div>
    <div class="relatedLinks"></div>
    <div id="advert"> 
      <p><a href="Us.php"><img src="../images/t3.jpg" alt="aa" width="160" height="160" border="0" /></a></p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <h3 align="center" class="relatedLinks">友情链接</h3>
      <table width="96%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><form id="form1" name="form1" method="post" action="">
              <table width="105%" height="80%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><a href="http://www.pumch.cn/" target="_blank"><strong>协和医院</strong></a></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><a href="http://www.cd120.com/"><strong>华西口腔</strong></a></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><label for="label"><a href="http://www.scu.edu.cn/" target="_blank">四川大学</a></label></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><a href=http://www.xnyy.cn/"><strong>西南医院</strong></a></td>
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
        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="523" height="200" title="??????">
          <param name="movie" value="../images/1.swf" />
          <param name="quality" value="high" />
          <embed src="../images/1.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="523" height="200"></embed>
        </object>
      </p>
    </div>
    <div class="story">
      <h3>&nbsp;</h3>
    </div>
    <div class="story">
      <form id="form1" runat="server">
        <table width="533" border="1" align="center" cellpadding="1" cellspacing="1" bordercolor="#F55B1A">
          <tr>
            <td height="28" bgcolor="#F55B1A"><div align="center"><span class="STYLE8">注册系统</span></div></td>
          </tr>
          <tr>
            <td>
                <span class="STYLE7">真实姓名：
                <label>
              <input id="Username" type="text" name="userName"  value=''/><br />
              </label>
            </span></td>
          </tr>
            <tr>
            <td>
                <span class="STYLE7"> 身份证号：
                <label>
              <input id="IDCard"" type="text" name="IDCard"  value=''/><br />
              </label>
            </span></td>
          </tr>
            <tr>
            <td height="28"><span class="STYLE7">性别：
                <label>                </label></span>
              <p>
                <label>
                  <input type="radio" name="RadioGroup1" value="0" id="RadioGroup1_0" />
                  男</label>
                <input type="radio" name="RadioGroup1" value="1" id="RadioGroup1_1" />
                <label>女</label>
<br />
                <br />
              </p>
              <span class="STYLE7">
              <label>
                <radiobuttonlist></radiobuttonlist>
              </label>
              </span></td>
          </tr>
            <tr>
            <td height="28"><span class="STYLE7">出生日期：
                <label>
                <select name="select" id="year" runat="server">
                  <option value="0">请选择</option>
                  <option value="1990">1990</option>
                  <option value="1991">1991</option>
                  <option value="1992">1992</option>
                  <option value="1993">1993</option>
                  <option value="1994">1994</option>
                  <option value="1995">1995</option>
                  <option value="1996">1996</option>
                  <option value="1997">1997</option>
                  <option value="1998">1998</option>
                  <option value="1999">1999</option>
                  <option value="2000">2000</option>
                </select>
年
<select name="select2" id="month" runat="server">
  <option value="0">请选择</option>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
  <option value="6">6</option>
  <option value="7">7</option>
  <option value="8">8</option>
  <option value="9">9</option>
  <option value="10">10</option>
  <option value="11">11</option>
  <option value="12">12</option>
</select>
月
<select name="select3" id="day" runat="server">
  <option value="0">请选择</option>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
  <option value="6">6</option>
  <option value="7">7</option>
  <option value="8">8</option>
  <option value="9">9</option>
  <option value="10">10</option>
  <option value="11">11</option>
  <option value="12">12</option>
  <option value="13">13</option>
  <option value="14">14</option>
  <option value="15">15</option>
  <option value="16">16</option>
  <option value="17">17</option>
  <option value="18">18</option>
  <option value="19">19</option>
  <option value="20">20</option>
  <option value="21">21</option>
  <option value="22">22</option>
  <option value="23">23</option>
  <option value="24">24</option>
  <option value="25">25</option>
  <option value="26">26</option>
  <option value="27">27</option>
  <option value="28">28</option>
  <option value="29">29</option>
  <option value="30">30</option>
  <option value="31">31</option>
</select>
日</label></span></td>
          </tr>
            <tr>
            <td>
                <span class="STYLE7">手机号码：
                <label>
              <input id="PhoneNum" type="text" name="PhoneNum"  value=''/><br />
              </label>
            </span></td>
          </tr>
            <tr>
            <td>
                <span class="STYLE7">银行卡号:
                <label>
              <input id="BankCardID" type="text" name="BankCardID"  value=''/><br />
              </label>
            </span></td>
          </tr>
            <tr>
            <td height="28"><span class="STYLE7"> 电子邮箱：
                <label>
              <input name="email" type="text" id="email" />
              </label>
            </span></td>
          </tr>
            <tr>
            <td height="28"><span class="STYLE7" >联系地址：
                <label>
                <input name="address" type="text" id="address" />
                </label>
            </span></td>
          </tr>
          
          <tr>
            <td height="28"><span class="STYLE7">输入密码：
                &nbsp;
                <input id="Password" type="password" name="userKey"  value=''/><br />
            </span></td>
          </tr>
          <tr>
            <td height="28"><span class="STYLE7">确认密码：
                <label>
                <input id="PasswordConfirm" type="password" name="userKey0"  value=''/><br /> 
                </label>
            </span></td>
          </tr>
          <tr>
            <td height="28"><asp:Button ID="RegistButton" runat="server" OnClick="RegistButton_Click" Text="注册" Width="100px" />    
        <asp:Button ID="BackButton" runat="server" OnClick="BackButton_Click" Text="取消" Width="100px" /> </td>
          </tr>
        </table>
      </form>
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
      var menuitem1 = new menu(7,1,"hidden");
			var menuitem2 = new menu(7,2,"hidden");
			var menuitem3 = new menu(7,3,"hidden");
			var menuitem4 = new menu(7,4,"hidden");
			var menuitem5 = new menu(7,5,"hidden");
			var menuitem6 = new menu(7,6,"hidden");
			var menuitem7 = new menu(7,7,"hidden");
    // -->
    </script>
</body>
</html>

