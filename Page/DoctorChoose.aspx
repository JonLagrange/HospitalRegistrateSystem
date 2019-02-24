<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorChoose.aspx.cs" Inherits="WebApplication1.Page.DoctorChoose" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ҽ��ѡ��</title>
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
            alert("ԤԼ�ɹ�!");
            var data = document.getElementById(docID + "_" + num);
            data.innerText = "��ʣ��" + left + "λ";
        }
        if (information.localeCompare("overflow") == 0)
            alert("ԤԼ��������!");
        if (information.localeCompare("noUser") == 0)
            alert("���ȵ�¼��ԤԼ!");
    }

    var weekNum = 0;
    function addWeek(weeki) {
        weekNum += weeki;
        var data = document.getElementById("departmentID");
        if (weekNum < 0) {
            weekNum = 0;
            alert("���ܲ鿴��ȥ��ʱ��");
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
  <h1 class="STYLE1" id="siteName">ҽԺ�Һ�ϵͳ</h1>
  <div id="globalNav"> <img alt="" src="gblnav_left.gif" height="32" width="4" id="gnl" /> <img alt="" src="glbnav_right.gif" height="32" width="4" id="gnr" />
    <div id="globalLink"> <a href="MySCU.php" id="gl1" class="glink" onmouseover="ehandler(event,menuitem1);">��ҳ</a><a href="Study.php" target="_self" class="glink" id="gl2" onmouseover="ehandler(event,menuitem2);">ѧ��ѧϰ</a><a href="Venture.php" id="gl3" class="glink" onmouseover="ehandler(event,menuitem3);">ѧ����ҵ</a><a href="Job.php" id="gl4" class="glink" onmouseover="ehandler(event,menuitem4);">ѧ������</a><a href="Guide.php" id="gl5" class="glink" onmouseover="ehandler(event,menuitem5);">����ָ��</a><a href="Interactive.php" id="gl6" class="glink" onmouseover="ehandler(event,menuitem6);">���Ի���</a><a href="Us.php" id="gl7" class="glink" onmouseover="ehandler(event,menuitem7);">��������</a> </div>
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
  <img alt="" src="tl_curve_white.gif" height="6" width="6" id="tl" /> <img alt="" src="tr_curve_white.gif" height="6" width="6" id="tr" />
 <div id="pageNav">
      <div id="loginPart"  class="relatedLinks" runat="server" style="display:block" >
          <form id="form1" runat="server">
              <table width="95%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300">��ӭ����!</td>
                  </tr>
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300">�˺ţ�
                   <input id="Username" type="text" name="userName"  value=''/><br /></td>
                  </tr>
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300">���룺&nbsp;
                   <input id="Password" type="password" name="userKey"  value=''/><br /></td> 
                  </tr>
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300"><asp:Button ID="LoginButton" runat="server" OnClick="LoginButton_Click" Text="��¼" Width="100px" />
                  <asp:Button ID="RegistButton" runat="server" OnClick="RegistButton_Click" Text="ע��" Width="100px" /> 
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                  </td>   
                  </tr>
                </table>
            </form>
        <a href="#"></a></div>
       <div  id="selfMangement" name="selfMangement" runat="server" style="display:none">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="50" align="center" bgcolor="#FF3300"  style="color:white">��ӭ����!</td>
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
        <a href="#"></a>          
      </div>
      <div class="relatedLinks"></div>
      <div id="advert"> 
      <p><a href="Us.php"><img src="../images/t2.jpg" alt="aa" width="160" height="160" border="0" /></a></p>
      <h3 align="center" class="relatedLinks">��������</h3>
      <table width="96%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><form id="form1" name="form1" method="post" action="">
              <table width="105%" height="80%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><a href="http://www.scu.edu.cn/" target="_blank"><strong>�Ĵ���ѧ</strong></a></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><a href="http://xsc.scu.edu.cn/" target="_blank"><strong>ѧ����</strong></a></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><label for="label"><a href="http://jwc.scu.edu.cn/jwc/frontPage.action" target="_blank" class="STYLE5">����</a></label></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><label for="label2"><a href="http://tuanwei.scu.edu.cn/" target="_blank">У��ί</a></label></td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#333333"><a href="http://cs.scu.edu.cn/" target="_blank"><strong>�����ѧԺ</strong></a></td>
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
        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="523" height="200" title="�ҵĴ���">
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
      <p><img src="313.png" width="20" height="20" />��ַ���ɶ���˫���ش���·ѧ����Ԣ��԰7�����Ԫ302B �ʱࣺ610207 �绰��13056676836</p>
      <p>&copy;2015 ����ǿ��Ȩ����</p>
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


