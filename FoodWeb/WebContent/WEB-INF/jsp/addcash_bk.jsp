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
var fbId= '<%=request.getParameter("fbid")%>';
function goPage(_page){
	//alert(context_path)
	window.location.href=context_path+"/AdminServlet?page="+_page+"&fbid="+fbId;
} 
function pay(){
	var amount_payment= parseFloat(document.getElementById('amount_payment').value); 
	var amount_balance   = parseFloat(document.getElementById('amount_balance').innerHTML);
	var customer_code =document.getElementById('customer_code').value;
	if(amount_balance>0){
		//var paymentAll = parseFloat(document.getElementById('paymentAll').value);
		if(amount_balance>=amount_payment){ 
			var foodCustomerDTO={fcId:customer_code};
			var foodBillDto ={
					fbId:fbId,
					fbStatus:"1",
					fbComplete:"1",
					foodCustomerDTO:foodCustomerDTO
			   };
			FoodAjax.setBillStatus(foodBillDto,{
				 callback:function(dataStatus) {
					// alert(dataStatus)
					 
					 var foodCustDto={
							 fcId:customer_code,
							 fcMoney:(amount_balance-amount_payment)
							 }
					// alert(foodCustDto)
					 FoodAjax.charge(foodCustDto,{
						 callback:function(dataCharge) { 
							 var msg = " ขอบคุณค่ะ \n ยอดเงินคงเหลือ "+(amount_balance-amount_payment)+" บาท \n ต้องการพิมพ์ใบเสร็จ ?";
							 if(confirm(msg)){
									goPage("billprint_bk"); 
								}else{
									//goPage("managemenu_bk"); 
							 }
							 document.getElementById('amount_balance').innerHTML=(amount_balance-amount_payment)
						 }
					 }); 	 
		        }
			});
			 
		}else{
			alert(" ยอดเงินไม่พอค่ะ ")
		}
	}else{
		alert(" กรุณาเติมเงินค่ะ ")
		//document.getElementById('paymentAll').value='';
	}
	
}
function topUp(){
	var customer_code =document.getElementById('customer_code').value;
	var top_up = parseFloat(document.getElementById('top_up').value);
	var amount_balance   = parseFloat(document.getElementById('amount_balance').innerHTML);
	if(customer_code!=null && customer_code !='' && customer_code.length>0){
	var customerDto={fcId:customer_code,fcMoney:amount_balance+top_up};
	FoodAjax.topUp(customerDto,{
		callback:function(dataFromServerCust){
			getCustomer(); 
			document.getElementById('top_up').value=''
		}
	});
	}else{
		alert(" รหัสลูกค้าไม่ถูกต้อง ");
	}
}
function getCustomer(){
	var customer_code =document.getElementById('customer_code').value;
	if(customer_code!=null && customer_code !='' && customer_code.length>0){
	var customerDto={fcId:customer_code};
	FoodAjax.getCustomer(customerDto,{
		callback:function(dataFromServerCust){
			if(dataFromServerCust!=null && dataFromServerCust.length>0){
				//alert(dataFromServerCust.length)
				document.getElementById("givenname").innerHTML = dataFromServerCust[0].fcName+"  "+dataFromServerCust[0].fcSurName;
				document.getElementById("amount_balance").innerHTML = dataFromServerCust[0].fcMoney
				//dataFromServerCust[0].fcId 
			}else{
				alert(" รหัสลูกค้าไม่ถูกต้อง ");
			}
		}
	});
  }else{
	  alert(' กรุณากรอกรหัส ')
  }
}
function getFoodBill(foodbillDto){
	//alert(userId);getFoodBill
	FoodAjax.getFoodBill(foodbillDto,{
		callback:function(dataFormServer){
			//alert(dataFormServer.foodOrders)
			if(true){
				document.getElementById('amount_payment').value=dataFormServer.fbTotalPrice;	           
	      		document.getElementById('payment').innerHTML=dataFormServer.fbTotalPrice;
			}
	  }
	});
	//alert(userId);
}
</script>
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
          <div align="left">หน้าชำระเงินผ่านบัตรเงินสด</div>
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
                  <td width="37%" align="left" valign="middle" bgcolor="#A3521D" colspan="3">
                  รหัส : <input type="text" id="customer_code"/> <input type="button" id="getCustBn" value=".: Get Customer :." onclick="getCustomer()"/>
                  </td>
                  
                  </tr>
                <tr>
                <tr>
                  <td width="37%" align="left" valign="middle" bgcolor="#A3521D"><p><strong>ชื่อ - นามสกุล ::</strong></p></td>
                  <td width="35%" colspan="2" align="left" valign="middle" bgcolor="#A3521D"><div id="givenname"/></td>
                  </tr>
                <tr>
                  <td align="left" valign="middle" bgcolor="#A3521D"><strong>จำนวนเงินคงเหลือ ::</strong></td>
                  <td width="35%" align="left" valign="middle" bgcolor="#A3521D">&nbsp;<div id="amount_balance"/></td>
                  <td width="18%" align="left" valign="middle" bgcolor="#A3521D"><strong>บาท</strong></td>
                </tr>
                <tr>
                  <td align="left" valign="middle" bgcolor="#A3521D"><strong>ยอดชำระ ::</strong></td>
                  <td width="35%" align="left" valign="middle" bgcolor="#A3521D">&nbsp;<input type="hidden" id="amount_payment"/><div id="payment"/></td>
                  <td width="18%" align="left" valign="middle" bgcolor="#A3521D"><strong>บาท</strong></td>
                </tr>
                <tr>
                  <td align="left" valign="middle" bgcolor="#CF985F"><p><strong>เติมเงิน  ::</strong></p></td>
                  <td align="left" valign="middle" bgcolor="#CF985F"><p>
                      <input type="text" name="top_up" id="top_up" />
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
        <td width="13%" align="center" valign="top"><input type="button" name="button4" id="button4" value=":: เติมเงิน ::"  onclick="topUp()"/></td>
        <td width="18%" align="center" valign="top"><input type="button" name="button2" id="button2" value=":: ชำระเงิน ::"  onclick="pay()"/></td>
        <td width="19%" align="center" valign="top"><input type="button" name="button" id="button" value=":: ยกเลิกการเติมเงิน ::" /></td>
        <td width="24%" align="center" valign="top">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
<script>

var foodbillDto ={
		fbId:fbId
};
getFoodBill(foodbillDto);
</script>
<p>&nbsp;</p>
</body>
</html>
