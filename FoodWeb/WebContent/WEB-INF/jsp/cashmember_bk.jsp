<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript"
        src='<%= request.getContextPath()%>/dwr/interface/FoodAjax.js'> 
</script>
<script type="text/javascript"
        src='<%= request.getContextPath() %>/dwr/engine.js'> 
</script>
<script type="text/javascript"
        src='<%= request.getContextPath() %>/dwr/util.js'>
</script>
<script>
function clearform(){
	document.getElementById("fcId").value='';
	document.getElementById("fcMoney").value='';
	document.getElementById("fcName").value='';
	document.getElementById("fcSurName").value='';
}
function register(_mode){
	var fcId = document.getElementById("fcId");
	var fcMoney	= document.getElementById("fcMoney");
	var fcName	= document.getElementById("fcName");
	var fcSurName = document.getElementById("fcSurName");
	//dd,select,select2
	var dd = document.getElementById("dd");
	var select = document.getElementById("select");
	var select2 = document.getElementById("select2");
	
	//var fcBirthDay	= dd.value+","+select.value+","+select2.value;
	
	if(_mode=='add'){
		// add customer
		//alert(dd.value+","+select.value+","+select2.value)
		var fcBirthDay=new Date();
		fcBirthDay.setFullYear(select2.value,select.value,dd.value);
		var customer={
				fcId:fcId.value,
				fcMoney:fcMoney.value,
				fcName:fcName.value,
				fcSurName:fcSurName.value,
				fcBirthDay:fcBirthDay
		}
		FoodAjax.addCustomer(customer,{
	 		 callback:function(dataFromServer) {
	 			 alert(" เพิ่มลูกค้าเข้าระบบแล้วค่ะ ")
	 			 clearform();
	 		 },
	 		errorHandler:function(errorString, exception) {
	 			alert(" การเพิ่มลูกค้าไม่สมบูรณ์ กรุณาลองใหม่ค่ะ ")
	 			clearform();
	 		}
		});
	}else{
		// reset form
		clearform();
	}
}
</script>
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
              <td width="76%" bgcolor="#FFFFCC"><input name="fcId" type="text" id="fcId" value="" /></td>
              </tr>
            <tr>
              <td bgcolor="#FFFF99"><p><strong>ชื่อ </strong><strong>::</strong></p>                </td>
              <td bgcolor="#FFFFFF"><input name="fcName" type="text" id="fcName" value="" /></td>
              </tr>
            <tr>
              <td bgcolor="#FFFF99"><strong>นามสกุล ::</strong></td>
              <td bgcolor="#FFFFFF"><input name="fcSurName" type="text" id="fcSurName" value="" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFF99"><strong>วัน /เดือน/ ปี เกิด ::</strong></td>
              <td bgcolor="#FFFFFF"><select name="dd" id="dd">
                <option value="01">01</option>
                <option value="02">02</option>
                <option value="03">03</option>
                <option value="04">04</option>
                <option value="05">05</option>
                <option value="06">06</option>
                <option value="07">07</option>
                <option value="08">08</option>
                <option value="09">09</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
              </select> 
                <span class="style3">/<strong>
                <select name="select" id="select">
                  <option value="01">มกราคม</option>
                  <option value="02">กุมภาพันธ์</option>
                  <option value="03">มีนาคม</option>
                  <option value="04">เมษายน</option>
                  <option value="05">พฤษภาคม</option>
                  <option value="06">มิถุนายน</option>
                  <option value="07">กรกฎาคม</option>
                  <option value="08">สิงหาคม</option>
                  <option value="09">กันยายน</option>
                  <option value="10">ตุลาคม</option>
                  <option value="11">พฤศจิกายน</option>
                  <option value="12">ธันวาคม</option>
                </select>
                </strong>/
                <select name="select2" id="select2">
                  <option value="2453">2453</option>
                  <option value="2454">2454</option>
                  <option value="2455">2455</option>
                  <option value="2456">2456</option>
                  <option value="2457">2457</option>
                  <option value="2458">2458</option>
                  <option value="2459">2459</option>
                  <option value="2460">2460</option>
                  <option value="2461">2461</option>
                  <option value="2462">2462</option>
                  <option value="2463">2463</option>
                  <option value="2464">2464</option>
                  <option value="2465">2465</option>
                  <option value="2466">2466</option>
                  <option value="2467">2467</option>
                  <option value="2468">2468</option>
                  <option value="2469">2469</option>
                  <option value="2470">2470</option>
                  <option value="2471">2471</option>
                  <option value="2472">2472</option>
                  <option value="2473">2473</option>
                  <option value="2474">2474</option>
                  <option value="2475">2475</option>
                  <option value="2476">2476</option>
                  <option value="2477">2477</option>
                  <option value="2478">2478</option>
                  <option value="2479">2479</option>
                  <option value="2480">2480</option>
                  <option value="2481">2481</option>
                  <option value="2482">2482</option>
                  <option value="2483">2483</option>
                  <option value="2484">2484</option>
                  <option value="2485">2485</option>
                  <option value="2486">2486</option>
                  <option value="2487">2487</option>
                  <option value="2488">2488</option>
                  <option value="2489">2489</option>
                  <option value="2490">2490</option>
                  <option value="2491">2491</option>
                  <option value="2492">2492</option>
                  <option value="2493">2493</option>
                  <option value="2494">2494</option>
                  <option value="2495">2495</option>
                  <option value="2496">2496</option>
                  <option value="2497">2497</option>
                  <option value="2498">2498</option>
                  <option value="2499">2499</option>
                  <option value="2500">2500</option>
                  <option value="2501">2501</option>
                  <option value="2502">2502</option>
                  <option value="2503">2503</option>
                  <option value="2504">2504</option>
                  <option value="2505">2505</option>
                  <option value="2506">2506</option>
                  <option value="2507">2507</option>
                  <option value="2508">2508</option>
                  <option value="2509">2509</option>
                  <option value="2510">2510</option>
                  <option value="2511">2511</option>
                  <option value="2512">2512</option>
                  <option value="2513">2513</option>
                  <option value="2514">2514</option>
                  <option value="2515">2515</option>
                  <option value="2516">2516</option>
                  <option value="2517">2517</option>
                  <option value="2518">2518</option>
                  <option value="2519">2519</option>
                  <option value="2520">2520</option>
                  <option value="2521">2521</option>
                  <option value="2522">2522</option>
                  <option value="2523">2523</option>
                  <option value="2524">2524</option>
                  <option value="2525">2525</option>
                  <option value="2526">2526</option>
                  <option value="2527">2527</option>
                  <option value="2528">2528</option>
                  <option value="2529">2529</option>
                  <option value="2530">2530</option>
                  <option value="2531">2531</option>
                  <option value="2532">2532</option>
                  <option value="2533">2533</option>
                  <option value="2534">2534</option>
                  <option value="2535">2535</option>
                  <option value="2536">2536</option>
                  <option value="2537">2537</option>
                  <option value="2538">2538</option>
                  <option value="2539">2539</option>
                  <option value="2540">2540</option>
                  <option value="2541">2541</option>
                  <option value="2542">2542</option>
                  <option value="2543">2543</option>
                  <option value="2544">2544</option>
                  <option value="2545">2545</option>
                  <option value="2546">2546</option>
                  <option value="2547">2547</option>
                  <option value="2548">2548</option>
                  <option value="2549">2549</option>
                  <option value="2550">2550</option>
                  <option value="2551">2551</option>
                  <option value="2552">2552</option>
                  <option value="2553">2553</option>
                  <option value="2554">2554</option>
                </select>
                </span></td>
              </tr>
            <tr>
              <td bgcolor="#FFFF99"><strong>จำนวนเงินในบัตร ::</strong></td>
              <td bgcolor="#FFFFFF"><input type="text" name="fcMoney" id="fcMoney" />
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
          <td width="32%" align="center" valign="middle"><input type="button" name="ชำระผ่านบัตรเงินสด" id="ชำระผ่านบัตรเงินสด" value=":: การสมัครสมาชิก ::"  onclick="register('add')"/>          </td>
          <td width="5%" align="center" valign="middle"><input type="button" name="สมัครใช้บัตรเงินสด" id="สมัครใช้บัตรเงินสด" value=":: ยกเลิก ::" onclick="register('del')"/></td>
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
