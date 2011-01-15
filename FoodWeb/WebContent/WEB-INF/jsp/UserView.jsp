<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<table width="1032" border="1" background="พื้นหลัง.jpg">
  <tr>
    <td width="1030"><img src="title1.jpg" width="1024" height="195" /></td>
  </tr>
  <tr>
    <td height="315"><table width="1028" height="311" border="1">
      <tr>
        <td width="106">&nbsp;</td>
        <td width="351">&nbsp;</td>
        <td width="124">&nbsp;</td>
        <td width="419">&nbsp;</td>
      </tr>
      <tr>
        <td height="32">&nbsp;</td>
        <td rowspan="3">รูปอาหาร</td>
        <td rowspan="5">รายการอาหาร</td>
        <td>รายการที่1</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>รายการที่2</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>รายการที่3</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>รายละเอียดอาหาร</td>
        <td>รายการที่4</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>จำนวนแคลอรี</td>
        <td>รายการที่5</td>
      </tr>
      <tr>
        <td height="36">&nbsp;</td>
        <td>ราคา 40 บาท</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="135"><table width="1028" height="115" border="1">
      <tr>
        <td width="51">&nbsp;</td>
        <td width="352"><div align="center">รายการที่สั่ง</div></td>
        <td width="203"><div align="center">จำนวน</div></td>
        <td width="264"><div align="center">ราคา</div></td>
        <td width="124">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><div align="center">
          <form id="form3" name="form3" method="post" action="">
            <label>
              <input type="submit" name="button3" id="button3" value="X" />
              </label>
          </form>
          </div></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><div align="right">รวมเงิน</div></td>
        <td>&nbsp;</td>
        <td><div align="center">บาท</div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="1026" border="1">
      <tr>
        <td width="250">&nbsp;</td>
        <td width="250"><div align="center">
          <form id="form1" name="form1" method="post" action="">
            <label>
              <input type="submit" name="button" id="button" value="สั่งอาหาร" />
              </label>
          </form>
          </div></td>
        <td width="250"><div align="center">
          <form id="form2" name="form2" method="post" action="">
            <label>
              <input type="submit" name="button2" id="button2" value="ยกเลิกสั่งอาหาร" />
              </label>
          </form>
          </div></td>
        <td width="248">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
