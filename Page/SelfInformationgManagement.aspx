<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelfInformationgManagement.aspx.cs" Inherits="WebApplication1.Page.SelfInformationgManagement" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head runat="server">
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����±�</title>
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
-->
</style>
</head>
<body onmousemove="closesubnav(event);">
<div class="skipLinks">skip to: <a href="#content">page content</a> | <a href="#pageNav">links on this page</a> | <a href="#globalNav">site navigation</a> | <a href="#siteInfo">footer (site information)</a> </div>
<div id="masthead">
  <h1 class="STYLE1" id="siteName">ҽԺ�Һ�ϵͳ</h1>
  <div id="globalNav"> <img alt="" src="../images/gblnav_left.gif" height="32" width="4" id="gnl" /> <img alt="" src="../images/glbnav_right.gif" height="32" width="4" id="gnr" />
    <div id="globalLink">���ȵ�¼�ٹҺš����Һ�ϵͳ�Һŵ�һ�����ɣ��Ų��˻������λ������ϸ�Ķ����ٽ��йҺš�</div>
    <!--end globalLinks-->
    <form id="search" action="">
      <input name="searchFor" type="text" size="10" />
      <a href="http://www.baidu.com" target="_blank">����</a>
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
  <p>
    <!--pagecell1-->
    <img alt="" src="../images/tl_curve_white.gif" height="6" width="6" id="tl" /> <img alt="" src="../images/tr_curve_white.gif" height="6" width="6" id="tr" />
  </p>
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
                    <span class="STYLE12">ҽԺ�Һ�ϵͳ</span></td>
              </tr>
              <tr>
                <td height="50" align="center" bgcolor="#FF3300"><label for="textfield2"><span class="STYLE12">��ӭ����</span></label></td>
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
      <p><a href="MySCU.php"><img src="../images/star.png" alt="" width="158" height="160" border="0" /></a></p>
      <p><a href="Us.php"><img src="../images/t5.jpg" alt="aa" width="160" height="160" border="0" /></a></p>
      <h3 align="center" class="relatedLinks">��������</h3>
      <table width="96%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><form id="form1" name="form1" method="post" action="">
              <table width="105%" height="80%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><a href="http://www.pumch.cn/" target="_blank"><strong>Э��ҽԺ</strong></a></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><a href="http://www.cd120.com/" target="_blank"><strong>����ҽԺ</strong></a></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><label for="label"><a href="http://www.scu.edu.cn/" target="_blank">�Ĵ���ѧ</a></label></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><label for="label2"><a href="http://www.xnyy.cn/" target="_blank"><strong>����ҽԺ</strong></a></label></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><a href="http://www.who.org/"><strong>����������֯</strong></a></td>
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
        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="523" height="200" title="ҽԺ�Һ�ϵͳ">
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
      <form id="form2" runat="server">
        <table width="90%"  border="1" align="center" cellpadding="1" cellspacing="1" bordercolor="#F55B1A">
          <tr>
            <td height="28" colspan="2" bgcolor="#F55B1A"><div align="center"><span class="STYLE8">������Ϣ����</span></div></td>
          </tr>
          <tr>
            <td width="130" height="28" bgcolor="#FFFFFF"><span class="STYLE8">�ʺ�</span><span class="STYLE8"></span></td>
            <td width="607" colspan="-5" bgcolor="#FFFFFF"><asp:Label ID="userID" runat="server" Text=""></asp:Label>&nbsp;</td>
          </tr>
          <tr>
            <td height="28" bgcolor="#FFFFFF"><label><span class="STYLE8">����</span></label></td>
            <td colspan="-5" bgcolor="#FFFFFF"><asp:Label ID="userNAME" runat="server" Text=""></asp:Label>&nbsp;</td>
          </tr>
          <tr>
            <td height="28" bgcolor="#FFFFFF"><label><span class="STYLE8">���֤��</span></label></td>
            <td colspan="-5" bgcolor="#FFFFFF"><asp:Label ID="IDCard" runat="server" Text=""></asp:Label>&nbsp;</td>
          </tr>
          <tr>
            <td height="28" bgcolor="#FFFFFF"><label><span class="STYLE8">���п���</span></label></td>
            <td colspan="-5" bgcolor="#FFFFFF"><asp:Label ID="BankCardID" runat="server" Text=""></asp:Label>&nbsp;</td>
          </tr>
          <tr>
            <td height="28" bgcolor="#FFFFFF"><label><span class="STYLE8">�绰����</span></label></td>
            <td colspan="-5" bgcolor="#FFFFFF"><asp:Label ID="PhoneNum" runat="server" Text=""></asp:Label>&nbsp;</td>
          </tr>
          <tr>
            <td height="28" colspan="2" bgcolor="#F55B1A"><div align="center">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="����" Width="100px" />        
            </div></td>
          </tr>
            
        </table>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p><img src="../images/bo4.jpg" width="1000" height="172" /></p>
        <p>
          <input type="hidden" name="MM_insert" value="form2">
        </p>
      </form>
    </div>
  </div>
  <!--end content -->
  <div id="siteInfo"> 
    <div align="center">
      <p><img src="../images/313.png" width="20" height="20" />��ַ���Ĵ�ʡ�ɶ���˫���ش���·�Ĵ���ѧ����У�� �ʱࣺ610207</p>
      <p>&copy;2015 ��Ȩ����</p>
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

