<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CashMember</title>
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
	font-weight: bold;
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
      <p>.</p>
      <ul><li class="style2">
          <div align="left">สมัครใช้บัตรเงินสด</div>
      </li>
      </ul>
      <table width="822" height="125" border="1" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#E1C391" style="background-repeat:no-repeat;">
        <tr>
          <td colspan="5" align="center" valign="middle"><table width="100%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000">
            <tr>
              <td width="24%" bgcolor="#FFFF99"><strong>รหัสสมาชิกบัตรเงินสด ::</strong></td>
              <td width="76%" bgcolor="#FFFFCC">&nbsp;</td>
              </tr>
            <tr>
              <td bgcolor="#FFFF99"><p><strong>ชื่อ </strong><strong>::</strong></p>                </td>
              <td bgcolor="#FFFFFF"><input name="textfield" type="text" id="textfield" value="" /></td>
              </tr>
            <tr>
              <td bgcolor="#FFFF99"><strong>นามสกุล ::</strong></td>
              <td bgcolor="#FFFFFF"><input name="textfield2" type="text" id="textfield2" value="" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFF99"><strong>วัน /เดือน/ ปี เกิด ::</strong></td>
              <td bgcolor="#FFFFFF"><select name="dd" id="dd">
                <option>01</option>
                <option>02</option>
                <option>03</option>
                <option>04</option>
                <option>05</option>
                <option>06</option>
                <option>07</option>
                <option>08</option>
                <option>09</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
                <option>13</option>
                <option>14</option>
                <option>15</option>
                <option>16</option>
                <option>17</option>
                <option>18</option>
                <option>19</option>
                <option>20</option>
                <option>21</option>
                <option>22</option>
                <option>23</option>
                <option>24</option>
                <option>25</option>
                <option>26</option>
                <option>27</option>
                <option>28</option>
                <option>29</option>
                <option>30</option>
                <option>31</option>
              </select> 
                <span class="style3">/<strong>
                <select name="select" id="select">
                  <option>มกราคม</option>
                  <option>กุมภาพันธ์</option>
                  <option>มีนาคม</option>
                  <option>เมษายน</option>
                  <option>พฤษภาคม</option>
                  <option>มิถุนายน</option>
                  <option>กรกฎาคม</option>
                  <option>สิงหาคม</option>
                  <option>กันยายน</option>
                  <option>ตุลาคม</option>
                  <option>พฤศจิกายน</option>
                  <option>ธันวาคม</option>
                </select>
                </strong>/
                <select name="select2" id="select2">
                  <option>2453</option>
                  <option>2454</option>
                  <option>2455</option>
                  <option>2456</option>
                  <option>2457</option>
                  <option>2458</option>
                  <option>2459</option>
                  <option>2460</option>
                  <option>2461</option>
                  <option>2462</option>
                  <option>2463</option>
                  <option>2464</option>
                  <option>2465</option>
                  <option>2466</option>
                  <option>2467</option>
                  <option>2468</option>
                  <option>2469</option>
                  <option>2470</option>
                  <option>2471</option>
                  <option>2472</option>
                  <option>2473</option>
                  <option>2474</option>
                  <option>2475</option>
                  <option>2476</option>
                  <option>2477</option>
                  <option>2478</option>
                  <option>2479</option>
                  <option>2480</option>
                  <option>2481</option>
                  <option>2482</option>
                  <option>2483</option>
                  <option>2484</option>
                  <option>2485</option>
                  <option>2486</option>
                  <option>2487</option>
                  <option>2488</option>
                  <option>2489</option>
                  <option>2490</option>
                  <option>2491</option>
                  <option>2492</option>
                  <option>2493</option>
                  <option>2494</option>
                  <option>2495</option>
                  <option>2496</option>
                  <option>2497</option>
                  <option>2498</option>
                  <option>2499</option>
                  <option>2500</option>
                  <option>2501</option>
                  <option>2502</option>
                  <option>2503</option>
                  <option>2504</option>
                  <option>2505</option>
                  <option>2506</option>
                  <option>2507</option>
                  <option>2508</option>
                  <option>2509</option>
                  <option>2510</option>
                  <option>2511</option>
                  <option>2512</option>
                  <option>2513</option>
                  <option>2514</option>
                  <option>2515</option>
                  <option>2516</option>
                  <option>2517</option>
                  <option>2518</option>
                  <option>2519</option>
                  <option>2520</option>
                  <option>2521</option>
                  <option>2522</option>
                  <option>2523</option>
                  <option>2524</option>
                  <option>2525</option>
                  <option>2526</option>
                  <option>2527</option>
                  <option>2528</option>
                  <option>2529</option>
                  <option>2530</option>
                  <option>2531</option>
                  <option>2532</option>
                  <option>2533</option>
                  <option>2534</option>
                  <option>2535</option>
                  <option>2536</option>
                  <option>2537</option>
                  <option>2538</option>
                  <option>2539</option>
                  <option>2540</option>
                  <option>2541</option>
                  <option>2542</option>
                  <option>2543</option>
                  <option>2544</option>
                  <option>2545</option>
                  <option>2546</option>
                  <option>2547</option>
                  <option>2548</option>
                  <option>2549</option>
                  <option>2550</option>
                  <option>2551</option>
                  <option>2552</option>
                  <option>2553</option>
                  <option>2554</option>
                </select>
                </span></td>
              </tr>
            <tr>
              <td bgcolor="#FFFF99"><strong>จำนวนเงินในบัตร ::</strong></td>
              <td bgcolor="#FFFFFF"><input type="text" name="textfield3" id="textfield3" />
                <strong>บาท </strong></td>
              </tr>
          </table></td>
          </tr>
      </table>
    </div></td>
  </tr>
  <tr align="center" valign="middle">
    <td><blockquote>
      <blockquote>&nbsp;</blockquote>
    </blockquote>      <table width="86%" border="0">
        <tr>
          <td width="26%" height="26" align="right" valign="middle">&nbsp;</td>
          <td width="32%" align="center" valign="middle"><input type="submit" name="ชำระผ่านบัตรเงินสด" id="ชำระผ่านบัตรเงินสด" value=":: การสมัครสมาชิก ::" />          </td>
          <td width="5%" align="center" valign="middle"><input type="submit" name="สมัครใช้บัตรเงินสด" id="สมัครใช้บัตรเงินสด" value=":: ยกเลิก ::" /></td>
          <td width="7%" align="right" valign="middle">&nbsp;</td>
          <td width="30%" align="center" valign="middle">&nbsp;</td>
        </tr>
      </table>
    <br />
    <br /></td>
</tr>
</table>
<p>&nbsp;</p>
</body>
</html>
