<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
<!-- 
.style2 {font-size: 36px}
-->
</style>
</head>

<body>
<table width="1032" height="612" background="พื้นหลัง.jpg">
  <tr>
    <td width="1055" height="206" class="style2"><img src="title1.jpg" width="1024" height="195" /></td>
  </tr>
  <tr>
    <td height="342"><table width="1024" height="330">
      <tr>
        <td width="224"><div align="center">เพิ่มรายการหาอาร</div></td>
        <td width="226" valign="top">&nbsp;</td>
        <td width="377" valign="top">&nbsp;</td>
        <td width="173">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td valign="top">ชื่ออาหาร</td>
        <td valign="top"><form id="form1" name="form1" method="post" action="">
          <label>
            <input name="textfield" type="text" id="textfield" size="50" />
            </label>
        </form>        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="54">&nbsp;</td>
        <td valign="top">รายละเอียดอาหาร</td>
        <td valign="top"><form id="form2" name="form2" method="post" action="">
          <label>
            <textarea name="textfield2" cols="50" rows="5" id="textfield2"></textarea>
          </label>
        </form>        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td valign="top">จำนวนแคลอรีอาหาร</td>
        <td valign="top"><form id="form3" name="form3" method="post" action="">
          <label>
            <input name="textfield3" type="text" id="textfield3" size="50" />
            </label>
        </form>        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="50">&nbsp;</td>
        <td valign="top">ราคาอาหาร</td>
        <td valign="top"><form id="form4" name="form4" method="post" action="">
          <label>
            <input name="textfield4" type="text" id="textfield4" size="50" />
            </label>
        </form>        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="75">&nbsp;</td>
        <td valign="top">รูปภาพอาหาร</td>
        <td valign="top"><form id="form5" name="form5" enctype="multipart/form-data" method="post" action="">
          <label>
            <input name="fileField" type="file" id="fileField" size="50" />
            </label>
        </form>        </td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="46"><table width="1026" height="37">
      <tr>
        <td width="224">&nbsp;</td>
        <td width="304"><div align="center">
          <form id="form6" name="form6" method="post" action="">
            <label>
              <input type="submit" name="button" id="button" value="เพิ่มรายการ" />
              </label>
          </form>
          </div></td>
        <td width="302"><div align="center">
          <form id="form7" name="form7" method="post" action="">
            <label>
              <input type="submit" name="button2" id="button2" value="ยกเลิก" />
              </label>
          </form>
          </div></td>
        <td width="176">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
