<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Add menu</title>
<style type="text/css">
<!--
.style2 {font-size: 36px}
body {
	background-color: #666600;
}
.style4 {
	font-size: large;
	font-style: italic;
	font-weight: bold;
	color: #FFFFFF;
}
-->
</style>
</head>

<body>
<table width="1032" height="598" align="center" background="image/bgTEST.jpg">
  <tr>
    <td width="1055" height="206" class="style2"><div align="center"><img src="image/title.gif" width="1007" height="192" /></div></td>
  </tr>
  <tr>
    <td height="332"><table width="1024" height="294">
      <tr>
        <td colspan="4"><div align="center">
          <div align="left">
            <blockquote>
              <ul>
                <ul>
                  <li class="style4">เพิ่มรายการอาหาร</li>
                </ul>
              </ul>
            </blockquote>
          </div>
        </div></td>
        </tr>
      <tr>
        <td width="186">&nbsp;</td>
        <td width="157" valign="top"><strong>ชื่ออาหาร ::</strong></td>
        <td width="542" valign="top"><form id="form1" name="form1" method="post" action="">
          <label>
            <input name="ใส่ชื่ออาหาร" type="text" id="ใส่ชื่ออาหาร" size="58" />
            </label>
        </form>        </td>
        <td width="119">&nbsp;</td>
      </tr>
      <tr>
        <td height="54">&nbsp;</td>
        <td valign="top"><strong>รายละเอียดอาหาร ::</strong></td>
        <td valign="top"><form id="form2" name="form2" method="post" action="">
          <label>
            <textarea name="ใส่รายละเอียดอาหาร" cols="48" rows="5" id="ใส่รายละเอียดอาหาร">
</textarea>
          </label>
        </form>        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td valign="top"><strong>จำนวนพลังงาน ::</strong></td>
        <td valign="top"><form id="form3" name="form3" method="post" action="">
          <label>
            <input name="ใส่จำนวนพลังงาน" type="text" id="ใส่จำนวนพลังงาน" size="58" />
            </label>
          <strong>กิโลแคลอรี</strong>
          </form>        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="50">&nbsp;</td>
        <td valign="top"><strong>ราคาอาหาร ::</strong></td>
        <td valign="top"><form id="form4" name="form4" method="post" action="">
          <label>
            <input name="ราคาอาหารต่อหน่อย" type="text" id="ราคาอาหารต่อหน่อย" size="58" />
            </label>
          <strong>บาท          </strong>
        </form>        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="39">&nbsp;</td>
        <td valign="top"><strong>รูปภาพอาหาร ::</strong></td>
        <td valign="top"><form id="form5" name="form5" enctype="multipart/form-data" method="post" action="">
          <label>
            <input name="fileField" type="file" id="fileField" size="58" />
            </label>
        </form>        </td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="46"><table width="1026" height="37">
      <tr>
        <td width="369">&nbsp;</td>
        <td width="169" align="center" valign="middle"><input type="submit" name="button" id="button" value=":: เพิ่มรายการ ::" /></td>
        <td width="172" align="center" valign="middle"><input type="submit" name="button2" id="button2" value=":: ยกเลิก ::" /></td>
        <td width="296" align="right" valign="middle">&nbsp;</td>
        </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
