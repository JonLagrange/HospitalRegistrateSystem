<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head runat="server">
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<title>ҽԺ�Һ�ϵͳ</title>
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
  <!--pagecell1-->
  <img alt="" src="../images/tl_curve_white.gif" height="6" width="6" id="tl" /> <img alt="" src="../images/tr_curve_white.gif" height="6" width="6" id="tr" />
<div id="pageNav">
       <div  id="selfMangement" name="selfMangement" runat="server" style="display:none" >
          <div class="relatedLinks">
              <table width="95%" border="0" cellspacing="0" cellpadding="0" >
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300" style="color:white">��ӭ����!</td>
                  </tr>
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300">
                      <div style="display:block"><label style="color:white">�û���</label><label id="userName" runat="server" style="color:white"></label></div>  
                  </td>
                </tr>
                  <tr>
                  <td height="50" align="center" bgcolor="#FF3300"><label><br />
                      <a href="Search.aspx" style="color:white">ԤԼ</a></label></td>
                  </tr>
                  <tr>
                  <td height="50" align="center" bgcolor="#FF3300"><label><br />
                      <a href="AlreadyRegistrated.aspx" style="color:white">�Ѿ�ԤԼ��Ϣ��ѯ</a></label></td>
                  </tr>
                  <tr>
                  <td height="50" align="center" bgcolor="#FF3300"><label><br />
                      <a href="SelfInformationgManagement.aspx" style="color:white">������Ϣ��������</a></label></td>
                  </tr>
                  <tr>
                  <td height="50" align="center" bgcolor="#FF3300"><label><br />
                      <a href="javascript:logoff()" style="color:white">�˳���¼</a></label></td>
                  </tr>
                </table>
        <a href="#"></a></div>              
      </div>
    <div id="loginPart" style="display:block" runat="server">
    <form id="form" runat="server" >
        
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center" height="50"      bgcolor="#FF3300">��ӭ����!</td>
                  </tr>
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300">�˺ţ�
                   <input id="Username" type="text" name="Username"  value=''/><br /></td>
                  </tr>
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300">���룺
                   <input id="Password" type="password" name="userKey"  value=''/><br /></td> 
                  </tr>
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300">
                  <asp:Button ID="Button1" runat="server" OnClick="LoginButton_Click" Text="��¼" Width="100px" />
                  <asp:Button ID="Button2" runat="server" OnClick="RegistButton_Click" Text="ע��" Width="100px" /> 
                  <asp:Button ID="Button4" runat="server" OnClick="Registrate_Click" Text="ԤԼ" Width="100px" />
                  </td>   
                  </tr>
                </table>
        <p><img src="../images/te7.jpg" width="160" height="161" alt="pic" /></p>
        <p><a href="#"></a></p>

        </form>
    </div>
    <div id="advert"> 
      <p><a href="Us.php"><img src="../images/te6.jpg" alt="aa" width="160" height="161" border="0" /></a></p>
      <h3 align="center" class="relatedLinks">��������</h3>
      <table width="96%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><form id="form1" name="form1" method="post" action="">
              <table width="96%" height="80%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><a href="http://www.pumch.cn/" target="_blank"><strong>Э��ҽԺ</strong></a></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><a href="http://www.cd120.com/" target="_blank"><strong>����ҽԺ</strong></a></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><label for="label"><a href="http://www.scu.edu.cn/" ><strong>�Ĵ���ѧ</strong></a></label></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><label for="label2"><a href="http://www.xnyy.cn/" target="_blank">����ҽԺ</a></label></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><a href="http://www.who.org/" target="_blank"><strong>����������֯</strong></a></td>
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
      <h3><a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9229">2014����й����ҽԺ���а񷢲�����Ժ������������ڶ���</a></h3>
      <p>�ɸ�����ѧҽԺ�����о����ٰ�İټ�����ҽԺѧ�ƽ�����̳��2014����й����ҽԺ���а񷢲�����2015��11��15�����Ϻ�¡�ؾ��У���2014�����ҽԺ���а�ȫ���ۺϣ�������2014�����ҽԺ���а�ȫ��ר�ƻ��ܣ�������2014�����ר�����а񡷡���2014�������ۺ����а������ۺ�ʵ����������2014������ר�����а�����ר�����������������ͬʱ��������Ժ��������������ҽԺ���а�ȫ���ۺϺ�ȫ��ר�ƻ��ܣ��ڶ�����<a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9229" target="_blank">����</a></p>
      <p><img src="../images/bo6.jpg" width="1070" height="167"></p>
      <p><img src="../images/to3.jpg" width="1080" height="400"></p>
    </div>
      <div class="story" style="padding-top:0">
        <table width="100%" cellpadding="0" cellspacing="0" summary="">
          <tr valign="top">
            <td width="49%" class="storyLeft"><p> <a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9268" class="STYLE3">2016�껪��ҽԺ��ʿ����֪ͨ</a></p>
                <p>�������а��������ˡ�����ҽѧ����ҽѧ�ͳ���ҽѧ�ĸ�רҵ������רҵ�����ﵽ34����δ������֢ҽѧ�ơ�����ѧ������ҽ��Ͽơ�����ơ�ҩѧ������Ժ������30��רҵ�У�ȱ��ǻҽѧ�������ơ�С���ڿơ����˺����κϲ����������������������ר�Ƶ�һ������������ڶ�������ơ�����ơ�������ơ�����ơ�����ҽѧ����ҽѧ��6��ר������������<a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9268" target="_blank">����</a></p></td>
            <td width="51%"><p> <a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9174" class="STYLE3">������������ί��������Ժ�������ҽ�Ʒ����ж�</a></p>
                <p>�����׶��Ƴ����������������������������������������������������������ߴ������ҽԺ���а���Ժ�������������ۺ����а���������100���ٻ��һ����������30��ר���У���С����ơ���������2��ר�������ڶ��⣬����28��ר�ƾ�������һ������ǰ���ר�ƴﵽ14��������ǰʮ��ר�ƴﵽ24��������6��ר�ƻ����������Ժר�����������������������������֡�<a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9174" target="_blank">����</a></p></td>
          </tr>
          <tr valign="top">
            <td class="storyLeft"><p> <a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9109" class="STYLE3">�Ĵ���ѧ����ҽԺEPS�ɹ���Ŀ��ѡ����</a></p>
                <p>��Ϊ��Ժ���������ר�ƺ�ְ�ܲ��Ŵ���μ�����̳�ͷ����ᣬ�����ˡ�һ�廯����Ķ�Ժ����չģʽ��������ҽ�Ƽ���ʵ����ר���ݽ����õ��˲λ����ĸ߶����ۡ�÷��ҽ����������Ժ��������Ժ��James Anderson������������Ȼ��ѧ����ίҽѧ��ѧ�����������ڡ�ŦԼ���ϻ�ҽԺ�߼����ܲü���ϯҽ�ƹ�Liebowitz�����ֱ����ˡ�÷��ҽ��ϵͳ���ջ����硷����ѧ������Ӧ����ѧ������ѧ�ƽ���ļ��Ż�ս�ԡ�ר�ⱨ�档<a href="http://tuanwei.scu.edu.cn/index.php/main/web/notice/detail/i/8099">����</a></p></td>
            <td><p> <a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9172" class="STYLE3">��Ժ�ٷ�΢����2015�й�ҽԺ��������ϻ������</a></p>
                <p>12��7�գ��ܹ�����������ίҽ��ҽ�ܾ�ί�У�����Э��ҽѧԺ��������ѧԺ��Զ��Ժ��һ������Ժ����¥���������ٿ��˳ɶ�7��ҽԺ����һ������ҽ�Ʒ����ж��ƻ������ֳ���ͨ�ᣬ�������ж��ƻ�Ч������Ԥ���鹤���������ɳ�������Ժ�����֣�����ҽԺ�����о���ʯӦ�����ڳ�ϯ�����졢ҽ�̲������������ﲿ�ĸ����˲λᣬΪ�˽�����ա���һ������ҽ�Ʒ����ж��ƻ���������չ����ʱ�����ܽ��������Կ�չЧ�������ṩѭ֤���ݺ���Ϣ֧�֡�<a href="http://tuanwei.scu.edu.cn/index.php/main/web/notice/detail/i/8099">����</a></p></td>
          </tr>
          <tr valign="top">
            <td class="storyLeft"><p> <a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9267" class="STYLE3">��֢ҽѧ�Ƴа��Ĵ�ʡ��֢ҽʦ���</a></p>
                <p>������������ίҽ��ҽ�ܾ�ί�б���Э��ҽѧԺ��������ѧԺ���е�����Ч���������Ĵ���ȫ���ĵ�һվ��������Ժ�������ڶ�ҽԺ��������ǻҽԺ����������ҽԺ��ʡ����ҽԺ��ʡ���ױ���Ժ���ɶ���ҽҩ��ѧ����ҽԺ���ڵĳɶ�7��ҽ�ƻ����μ��˱���Ч���������ֳ����к�Ԥ���鹤����Ԥ�������Ҫ�������ҽ�ƻ�����ҽ����Ա��<a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9174">����</a></p></td>
            <td><p> <a href="http://tuanwei.scu.edu.cn/index.php/main/web/notice/detail/i/8099" class="STYLE2"><strong>�ɶ�������ʹ�����������ι�˾�����пղ�������</strong></a></p>
                <p>����Э��ҽѧԺ��������ѧԺ��Զ��Ժ�������˱���Ч��������Ŀ�ı������������˵����Ŀּ�ڽ����������������ƣ����ӿ͹ۡ���ʵ�ط�ӳ���߾�ҽ���飻ͬʱ�������������������ṫ������ͨ��ý�崫����������������Ͻ���������������ʶ��ʹ��Χ�����淢չ�����ϣ���ҽԺ����������ʾ�4�����ֵĺ������ݽ����˳�ֵ����ۡ�<a href="http://tuanwei.scu.edu.cn/index.php/main/web/news-group/detail/i/9268">����</a></p></td>
          </tr>
        </table>
      </div>
    </div>
  <!--end content -->
  <div id="siteInfo"> 
    <div align="center">
      <p><img src="../images/313.png" width="20" height="20" />��ַ���ɶ���˫���ش���·ѧ����Ԣ��԰7�����Ԫ302B �ʱࣺ610207 �绰��13056676836</p>
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

