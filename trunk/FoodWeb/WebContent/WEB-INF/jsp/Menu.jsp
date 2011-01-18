<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #666600;
}
.style2 {
	font-style: italic;
	font-weight: bold;
	font-size: large;
	color: #FFFFFF;
}
.style3 {
	font-size: large;
	font-style: italic;
}
-->
</style></head>

<body>
<table width="1024" border="0" align="center" background="image/bgTEST.jpg" style="background-attachment:fixed;">
  <tr>
    <td width="1043"><div align="center"><img src="image/title.gif" width="1007" height="192" /></div></td>
  </tr>
  <tr align="center">
    <td height="78" valign="middle"><div align="center">
      <p>&nbsp;</p>
      <ul><li class="style2">
          <div align="left">รายการอาหารที่สั่ง</div>
      </li>
      </ul>
      <table width="841" height="57" border="1" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#CCCC99" style="background-repeat:no-repeat;">
        <tr bgcolor="#999933">
          <td width="85" height="30"><div align="center"><strong>ลำดับ</strong></div></td>
            <td width="388"><div align="center"><strong>รายการอาหาร</strong></div></td>
            <td width="140"><div align="center"><strong>จำนวน</strong></div></td>
            <td><div align="center"><strong>ทำรายการเสร็จสิ้น</strong></div>              <div align="center"></div></td>
          </tr>
        <tr valign="top">
          <td height="25" align="center" valign="top">&nbsp;</td>
            <td align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
            <td align="center"><input name="button" type="submit" id="button" value="เสร็จสิ้น" /></td>
          </tr>
      </table>
      <br />
    </div></td>
  </tr>
  <tr align="center" valign="middle">
    <td height="24" align="right"><blockquote>
      <blockquote>
        <form id="form2" name="form2" method="post" action="">
      <label>
            <input type="submit" name="button2" id="button2" value="ทำรายการทั้งหมดเสร็จสิ้น" />
            </label>
        </form>
        </blockquote>
    </blockquote></td>
</tr>
  <tr align="center" valign="middle">
    <td height="70"><table width="86%" border="0">
      <tr>
        <td width="27%" height="26" align="right" valign="middle"><input type="submit" name="เติมเงินในบัตร" id="เติมเงินในบัตร" value=":: เพิ่มรายการอาหาร ::" /></td>
        <td width="28%" align="center" valign="middle"><input type="submit" name="สมัครใช้บัตรเงินสด" id="สมัครใช้บัตรเงินสด" value=":: จัดการเมนูอาหาร ::" /></td>
        <td width="3%" align="center" valign="middle">&nbsp;</td>
        <td width="19%" align="right" valign="middle">&nbsp;</td>
        <td width="23%" align="center" valign="middle">&nbsp;</td>
      </tr>
    </table>
    <br /></td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
