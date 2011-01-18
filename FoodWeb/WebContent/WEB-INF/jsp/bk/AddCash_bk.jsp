<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Add Cash</title>
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
	font-size: medium;
	font-style: italic;
	font-weight: bold;
}
-->
</style></head>

<body>
<table width="1024" border="0" align="center" background="image/bgTEST.jpg" style="background-attachment:fixed;">
  <tr>
    <td width="1043" colspan="2"><div align="center"><img src="image/title.gif" width="1007" height="192" /></div></td>
  </tr>
  <tr align="center">
    <td height="78" colspan="2" valign="middle"><div align="center">
      <p>&nbsp;</p>
      <ul><li class="style2">
          <div align="left">หน้าชำระ้้เงินผ่านบัตรเงินสด</div>
      </li>
      </ul>
      <table width="799" height="146" border="1" cellpadding="0" cellspacing="0" bordercolor="#CF9D62" bgcolor="#FFFFCC" style="background-repeat:no-repeat;">
        <tr>
          <td height="144" align="center" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td colspan="4" valign="top" bordercolor="#000000"><br />
                <ul><li class="style3">เติมเงินในบัตรเงินสด </li>
              </ul></td>
              </tr>
            <tr>
              <td colspan="4" valign="top" bordercolor="#000000" bgcolor="#FFFFFF"><table width="72%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#EBD2AA">
                <tr>
                  <td width="37%" align="left" valign="middle" bgcolor="#A3521D"><p><strong>ชื่อ - นามสกุล ::</strong></p></td>
                  <td width="35%" colspan="2" align="left" valign="middle" bgcolor="#A3521D">&nbsp;</td>
                  </tr>
                <tr>
                  <td align="left" valign="middle" bgcolor="#A3521D"><strong>จำนวนเงินคงเหลือ ::</strong></td>
                  <td width="35%" align="left" valign="middle" bgcolor="#A3521D">&nbsp;</td>
                  <td width="18%" align="left" valign="middle" bgcolor="#A3521D"><strong>บาท</strong></td>
                </tr>
                <tr>
                  <td align="left" valign="middle" bgcolor="#A3521D"><strong>ยอดชำระ ::</strong></td>
                  <td width="35%" align="left" valign="middle" bgcolor="#A3521D">&nbsp;</td>
                  <td width="18%" align="left" valign="middle" bgcolor="#A3521D"><strong>บาท</strong></td>
                </tr>
                <tr>
                  <td align="left" valign="middle" bgcolor="#CF985F"><p><strong>เติมเงิน  ::</strong></p></td>
                  <td align="left" valign="middle" bgcolor="#CF985F"><p>
                      <input type="text" name="textfield2" id="textfield2" />
                  </p></td>
                  <td align="left" valign="middle" bgcolor="#CF985F"><strong>บาท</strong></td>
                </tr>

              </table></td>
            </tr>
            <tr>
              <td height="28" colspan="4" align="center" valign="top" bordercolor="#000000"><br /></td>
              </tr>
            
          </table>            </td>
          </tr>
      </table>
    </div></td>
  </tr>
  <tr align="center" valign="middle">
    <td height="21" valign="top"><blockquote>
      <blockquote>&nbsp;</blockquote>
    </blockquote></td>
    <td>&nbsp;</td>
  </tr>
  <tr align="center" valign="middle">
    <td height="70" colspan="2" valign="top"><table width="100%" border="0">
      <tr>
        <td width="26%" height="26" align="center" valign="top">&nbsp;</td>
        <td width="13%" align="center" valign="top"><input type="submit" name="button4" id="button4" value=":: เติมเงิน ::" /></td>
        <td width="18%" align="center" valign="top"><input type="submit" name="button2" id="button2" value=":: ชำระเงิน ::" /></td>
        <td width="19%" align="center" valign="top"><input type="submit" name="button" id="button" value=":: ยกเลิกการเติมเงิน ::" /></td>
        <td width="24%" align="center" valign="top">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
