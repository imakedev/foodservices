<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Cash</title>
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
          <div align="left">สรุปรายการที่ลูกค้าต้องชำระ</div>
      </li>
      </ul>
      <table width="841" height="333" border="2" bordercolor="#000000" background="image/bg2.gif" style="background-repeat:no-repeat;">
        <tr>
          <td width="85"><div align="center"><strong>ลำดับ</strong></div></td>
            <td width="388"><div align="center"><strong>รายการอาหาร</strong></div></td>
            <td width="140"><div align="center"><strong>จำนวน</strong></div></td>
            <td width="162"><div align="center"><strong>ราคา (บาท)</strong></div></td>
            <td width="57"><div align="center"></div></td>
          </tr>
        <tr valign="top">
          <td height="272" align="center" valign="top">&nbsp;</td>
            <td height="272" align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        <tr>
          <td height="26" colspan="2"><div align="center"></div></td>
            <td><div align="center"><strong>ยอดชำระ</strong></div></td>
            <td><div align="center"></div></td>
            <td><div align="center"><strong>บาท</strong></div></td>
          </tr>
      </table>
    </div></td>
  </tr>
  <tr align="center" valign="middle">
    <td height="24"><blockquote>
      <blockquote>
        <p align="right"><span class="style3"><strong>จำนวนเงินที่ชำระทั้งหมด</strong> :: 
            <input name="textfield" type="text" id="textfield" size="30" />
            <strong>บาท</strong></span></p>
      </blockquote>
    </blockquote></td>
</tr>
  <tr align="center" valign="middle">
    <td height="70"><table width="86%" border="0">
      <tr>
        <td width="35%" height="26" align="right" valign="middle"><input type="submit" name="สมัครใช้บัตรเงินสด" id="สมัครใช้บัตรเงินสด" value=":: สมัครบัตรเงินสด ::" /></td>
        <td width="16%" align="center" valign="middle">&nbsp;</td>
        <td width="23%" align="center" valign="middle"><input type="submit" name="ชำระผ่านบัตรเงินสด" id="ชำระผ่านบัตรเงินสด" value="ชำระและเติมเงินผ่านบัตรเงินสด" /></td>
        <td width="17%" align="right" valign="middle"><input type="submit" name="ชำระเงินด้วยสด" id="ชำระเงินด้วยสด" value="ชำระเงินด้วยสด" /></td>
        <td width="9%" align="center" valign="middle">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
