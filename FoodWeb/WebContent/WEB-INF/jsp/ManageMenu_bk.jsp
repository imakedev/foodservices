<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Manage Menu</title>
<style type="text/css">
<!--
body {
	background-color: #666600;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.style4 {
	font-weight: bold;
	font-style: italic;
	font-size: x-large;
	color: #FFFFFF;
}
.style7 {
	font-size: large;
	font-style: italic;
	font-weight: bold;
	color: #000000;
}
.style8 {
	color: #FFFFFF;
	font-weight: bold;
}
.style9 {color: #FFFFFF}
-->
</style></head>

<body>
<table width="200" border="0" align="center" cellpadding="0" cellspacing="0" background="image/bg.jpg">
  <tr>
    <td colspan="4"><img src="image/title1.jpg" width="1024" height="195" /></td>
  </tr>
  <tr>
    <td colspan="4"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="3"><blockquote class="style4">จัดการเมนูอาหาร</blockquote></td>
        </tr>
      
      <tr>
        <td colspan="3"><blockquote>
          <blockquote>
            <ul>
              <li><span class="style7">รายการอาหาร</span></li>
            </ul>
          </blockquote>
        </blockquote></td>
      </tr>
      <tr>
        <td width="161">&nbsp;</td>
        <td width="782"><table width="100%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000">
          <tr>
            <td width="76" bgcolor="#000033"><div align="center" class="style8">ลำดับ</div></td>
            <td width="394" align="center" valign="middle" bgcolor="#000033"><div align="center" class="style8">รายการอาหาร</div></td>
            <td colspan="3" bgcolor="#000033"><span class="style9"></span></td>
            </tr>
          <tr>
            <td height="26" align="center" valign="top" bgcolor="#CCCCFF">&nbsp;</td>
            <td align="center" valign="top" bgcolor="#CCCCFF">&nbsp;</td>
            <td width="100" align="center" valign="top" bgcolor="#CCCCFF">
              <div align="center">
                <input type="submit" name="เลือกเมนูอาหาร" id="เลือกเมนูอาหาร" value="เลือกเมนู" />
                </div></td>
            <td width="100" align="center" valign="top" bgcolor="#CCCCFF">
              <div align="center">
                <input type="submit" name="แก้ไขเมนูอาหาร" id="แก้ไขเมนูอาหาร" value="แก้ไขเมนู" />
                </div></td>
            <td width="100" align="center" valign="top" bgcolor="#CCCCFF">
              <div align="center">
                <input type="submit" name="ยกเลิกเมนูอาหาร" id="ยกเลิกเมนูอาหาร" value="ยกเลิกเมนู" />
                </div></td>
          </tr>
        </table>
          <p>&nbsp;</p></td>
        <td width="81">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="3"><div align="left">
          <blockquote>
            <blockquote>
              <ul>
                <li class="style7">เมนูอาหาร</li>
              </ul>
            </blockquote>
          </blockquote>
        </div></td>
        </tr>
      <tr>
        <td>&nbsp;</td>
        <td><table width="100%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000">
          <tr>
            <td width="76" align="center" bgcolor="#000033"><div align="center" class="style9"><strong>ลำดับ</strong></div></td>
            <td width="394" align="center" valign="middle" bgcolor="#000033"><div align="center" class="style9"><strong>รายการอาหาร</strong></div></td>
            <td width="304" bgcolor="#000033"><span class="style9"></span></td>
            </tr>
          <tr>
            <td height="26" align="center" valign="top" bgcolor="#CCCCFF">&nbsp;</td>
            <td align="center" valign="top" bgcolor="#CCCCFF">&nbsp;</td>
            <td align="center" valign="top" bgcolor="#CCCCFF"><input type="button" name="ยกเลิก" id="ยกเลิก" value="ยกเลิกเมนู" /></td>
            </tr>
        </table>
          <p>&nbsp;</p></td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="331"><div align="center">
      <form id="form1" name="form1" method="post" action="">
        <label><br />
        </label>
      </form>
      </div></td>
    <td width="181"><div align="center">
      <input type="submit" name="button" id="button" value="ทำการจัดการเมนูอาหาร" />
    </div></td>
    <td width="187"><div align="center">
      <form id="form2" name="form2" method="post" action="">
        <label>
          <input type="submit" name="button2" id="button2" value="เพิ่มรายการอาหาร" />
          </label>
      </form>
      </div></td>
    <td width="325">&nbsp;</td>
  </tr>
</table>
</body>
</html>