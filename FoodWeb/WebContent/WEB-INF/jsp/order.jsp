<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
</head>

<body>
<table width="1032" border="1" background="image/พื้นหลัง.jpg">
  <tr>
    <td width="1030"><img src="image/title1.jpg" width="1024" height="195" /></td>
  </tr>
  <tr>
    <td height="315"><table width="1028" height="272" border="1" background="image/พื้นหลัง2.jpg">
      <tr>
        <td width="106">&nbsp;</td>
        <td width="351">&nbsp;</td>
        <td width="124">&nbsp;</td>
        <td width="419">&nbsp;</td>
      </tr>
      <tr>
        <td height="32">&nbsp;</td>
        <td rowspan="6" valign="top" background="image/พื้นหลัง.gif"><table width="200" border="1">
            <tr>
              <td valign="top">&nbsp;</td>
            </tr>
          </table>
          <table width="362" border="1">
            <tr>
              <td width="352">&nbsp;</td>
              <td width="352">&nbsp;</td>
            </tr>
          </table>
          <table width="360" border="1">
            <tr>
              <td width="106">ราคา</td>
              <td width="114"><div align="center"></div></td>
              <td width="112">บาท</td>
            </tr>
          </table>
          <table width="354" border="1">
            <tr>
              <td width="104">จำนวนแคลอรี</td>
              <td width="116"><div align="center"></div></td>
              <td width="112">กรัม</td>
            </tr>
          </table></td>
        <td rowspan="5"><img src="image/รายการหาร.gif" width="175" height="191" /></td>
        <td rowspan="5" valign="top"><table width="420" border="1">
          <tr>
            <td><div align="center"><img src="image/รายการอาหารที่หนึ่ง.gif" width="250" height="44" /></div></td>
          </tr>
          <tr>
            <td><div align="center"><img src="image/รายการอาหารที่สอง.gif" width="250" height="44" /></div></td>
          </tr>
          <tr>
            <td><div align="center"><img src="image/รายการอาหารที่3.gif" width="250" height="44" /></div></td>
          </tr>
          <tr>
            <td><div align="center"><img src="image/รายการอาหารที่4.gif" width="250" height="44" /></div></td>
          </tr>
          <tr>
            <td><div align="center"><img src="image/รายการอาหารที่5.gif" width="250" height="44" /></div></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="27">&nbsp;</td>
        </tr>
      <tr>
        <td height="23">&nbsp;</td>
        </tr>
      <tr>
        <td height="23">&nbsp;</td>
        </tr>
      <tr>
        <td height="23">&nbsp;</td>
        </tr>
      <tr>
        <td height="23">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="23">&nbsp;</td>
        <td colspan="3"><div align="center"><img src="image/เลือกรายการอาหาร.gif" width="250" height="44" /></div></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td height="119"><table width="1028" height="115" border="1">
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
            <label><img src="image/ยกเลิก.gif" width="31" height="31" /></label>
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
    <td height="38"><table width="1026" border="1">
      <tr>
        <td width="250" height="28">&nbsp;</td>
        <td width="250"><div align="center">
          <form id="form1" name="form1" method="post" action="">
            <label></label>
            <img src="image/สั่งอาหาร.gif" width="250" height="44" />
          </form>
          </div></td>
        <td width="250"><div align="center">
          <form id="form2" name="form2" method="post" action="">
            <label><img src="image/ยกเลิกการสั่ง.gif" width="250" height="44" />              </label>
          </form>
          </div></td>
        <td width="248">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
