<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<table width="200" border="1" background="พื้นหลัง.jpg">
  <tr>
    <td><img src="title1.jpg" width="1024" height="195" /></td>
  </tr>
  <tr>
    <td><table width="1024" border="1">
      <tr>
        <td width="80">&nbsp;</td>
        <td width="550"><div align="center">รายการอาหาร</div></td>
        <td width="118"><div align="center">จำนวน</div></td>
        <td width="173"><div align="center">ราคา</div></td>
        <td width="69">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><div align="center"></div></td>
        <td><div align="center"></div></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="26">&nbsp;</td>
        <td>จำนวนเงินที่ชำระ
          <input name="textfield" type="text" id="textfield" size="50" />
           บาท</td>
        <td><div align="right">ยอดชำระ</div></td>
        <td><div align="center"></div></td>
        <td>บาท</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="1025" border="1">
      <tr>
        <td>&nbsp;</td>
        <td><div align="center">
          <form id="form4" name="form4" method="post" action="">
            <label>
              <input type="submit" name="button4" id="button4" value="ชำระเงินสด" />
              </label>
          </form>
          </div></td>
        <td><div align="center">
          <form id="form3" name="form3" method="post" action="">
            <label>
              <input type="submit" name="button3" id="button3" value="ชำระผ่านบัตร" />
              </label>
          </form>
          </div></td>
        <td><div align="center">
          <form id="form1" name="form1" method="post" action="">
            <label>
              <input type="submit" name="button" id="button" value="เติมเงินบัตร" />
              </label>
          </form>
          </div></td>
        <td><div align="center">
          <form id="form2" name="form2" method="post" action="">
            <label>
              <input type="submit" name="button2" id="button2" value="ทำบัตรเงินสด" />
              </label>
          </form>
          </div></td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
<tr></tr>
</table>
</body>
</html>
