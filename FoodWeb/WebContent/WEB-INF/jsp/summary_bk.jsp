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
<script src="<%= request.getContextPath() %>/js/jquery.min.js"></script>
 <script src="<%= request.getContextPath() %>/js/jquery-ui.min.js"></script>
  <link type="text/css" href="<%= request.getContextPath() %>/css/flick/jquery-ui-1.8.9.custom.css" rel="stylesheet" />
<script>  
var context_path="<%=request.getContextPath()%>";
function goPage(_page){
	//alert(context_path)
	window.location.href=context_path+"/AdminServlet?page="+_page;
} 
function findDayThai(dayEng){
	var dayEngArray= ["Sun","Mon","Tue","Wed","Thu","Fri","Sat"];
	var index;
	for(var i =0 ; i<dayEngArray.length;i++){
		if(dayEngArray[i]==dayEng){
			index=i;
			break;
		}
	}
	var dayThaiArray= ["อาทิตย์","จันทร์","อังคาร","พุธ","พฤหัสบดี","ศุกร์","เสาร์"];
	return dayThaiArray[index];
}
function getListBills(foodbillDto){
	//alert(foodbillDto.fbId)
	//var date = $.datepicker( "getDate" );
	var date    =  $( "#datepicker" ).datepicker( "getDate" ) ;
	var monthThaiArray= new Array("มกราคม","กุมภาพันธ์","มีนาคม","เมษายน","พฤษภาคม","มิถุนายน","กรกฎาคม","สิงหาคม","กันยายน","ตุลาคม","พฤศจิกายน","ธันวาคม");
	
	//alert(monthThaiArray[date.getMonth()]);
	//
	//alert(findDayThai($.datepicker.formatDate('D', date)));
//getFullYear()
//getMonth()
//date.getDate() 
//DD, d MM, yy
//alert($( "#datepicker" ).formatDate('yy-mm-dd', new Date(2007, 1 - 1, 26)));
//alert($.datepicker.formatDate('DD, d MM, yy', date));


//alert("date="+date.getDate()+"\n"+"month="+(date.getMonth()+1)+"\n"+"year="+date.getFullYear()+"\n")
var foodbillDto={
		fbDate:date.getDate(),
		fbMonth:date.getMonth()+1,
		fbFullYear:date.getFullYear()
		};
//getListBills(foodbillDto);
 
	FoodAjax.listBillSummarry(foodbillDto,{
		callback:function(dataFromServer){
		//	alert(dataFromServer)
	var totalPrice = 0;
	var str ="<table width=\"66%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">"+
		     "<tr>"+
		     "   <td height=\"28\" colspan=\"5\"><div align=\"center\">ร้านอาหาร ข้าวไทย</div>"+     
		     "   </td>"+
		     "   </tr>"+		        
		     " <tr>"+
		   //  "   <td height=\"30\" colspan=\"5\"><div align=\"center\">สรุปยอดขายประจำวันที่ "+date.getDate()+" เดือน "+date.getDate()+" ปี "+date.getDate()+"</div>          </td>"+
		     "   <td height=\"30\" colspan=\"5\"><div align=\"center\">สรุปยอดขายประจำวัน "+findDayThai($.datepicker.formatDate('D', date)) +" "+ 
		     "ที่ "+date.getDate()+" เดือน "+monthThaiArray[date.getMonth()]+" ปี "+date.getFullYear()+"</div>          </td>"+
		   
		     "   </tr>"+
		     " <tr>"+
		     "   <td width=\"9%\"><div align=\"center\"></div></td>"+
		     "   <td width=\"26%\">&nbsp;</td>"+
		     "   <td width=\"14%\">&nbsp;</td>"+
		     "   <td width=\"23%\">&nbsp;</td>"+
		     "   <td width=\"28%\">&nbsp;</td>"+
		     " </tr>"+
		     " <tr bgcolor=\"#999933\">"+
		     "   <td><div align=\"center\">ลำดับ</div></td>"+
		     "   <td><div align=\"center\">เวลา</div></td>"+
		     "   <td><div align=\"center\">จำนวน</div></td>"+
		     "   <td><div align=\"center\">ราคา</div></td>"+
		     "   <td><div align=\"center\">รหัสลูกค้า</div></td>"+
		     " </tr>";
			//if(dataFromServer!=null){		
				 if(dataFromServer!=null && dataFromServer.length>0){
		            	for(var i = 0;i<dataFromServer.length;i++){
				//alert(dataFromServer); 
				str =str+  " <tr>"+
			     "   <td><div align=\"center\">"+(i+1)+"</div></td>"+
			     "   <td><div align=\"center\">"+dataFromServer[i].fbBillDateStr+"</div></td>"+
			     "   <td><div align=\"center\">"+dataFromServer[i].fbTotalQuantity+"</div></td>"+
			     "   <td><div align=\"center\">"+dataFromServer[i].fbTotalPrice+"</div></td>"+
			     "   <td><div align=\"center\">"+dataFromServer[i].foodCustomerDTO.fcId+"</div></td>"+
			     " </tr>";
			     totalPrice = totalPrice+parseFloat(dataFromServer[i].fbTotalPrice);
						}
				 }
			str = str+  " <tr bgcolor=\"#999933\">"+
		     "   <td><div align=\"center\"></div></td>"+
		     "   <td><div align=\"center\"></div></td>"+
		     "   <td><div align=\"center\">รวม</div></td>"+
		     "   <td><div align=\"center\">"+totalPrice+"</div></td>"+
		     "   <td><div align=\"center\">บาท</div></td>"+
		     " </tr>"+
		    "</table>";
			document.getElementById("billsDiv").innerHTML=str;
	        
		}
	});
 }
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Summary</title>
<style type="text/css">
<!--
.style3 {	font-size: large;
	font-weight: bold;
}
.style4 {
	font-size: 36px;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="100%" border="1" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#999966">
      <tr>
        <td colspan="4"><div align="center" class="style4">สรุปยอดขาย</div>
          <div align="center"></div></td>
        </tr>
      <tr>
        <td width="39%" height="53"><div align="right"><strong>วัน /เดือน/ ปี :</strong></div></td>
        <td width="23%"><input id="datepicker" type="text" readonly="readonly"/>
          <span class="style3"><strong>          </strong></span></td>
        <td width="18%">
          
            <div align="center">
              <input type="button" name="button" id="button" value="ค้นหา" onclick="getListBills()"/>
          </div></td>
        <td width="20%">&nbsp;</td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td><div id="billsDiv" align="center">
    <%-- 
    <table width="66%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="28" colspan="5"><div align="center">ร้านอาหาร ข้าวไทย</div>     
        </td>
        </tr>
        
      <tr>
        <td height="30" colspan="5"><div align="center">สรุปยอดขายประจำวันที่ เดือน ปี</div>          </td>
        </tr>
      <tr>
        <td width="9%"><div align="center"></div></td>
        <td width="26%">&nbsp;</td>
        <td width="14%">&nbsp;</td>
        <td width="23%">&nbsp;</td>
        <td width="28%">&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">ลำดับ</div></td>
        <td><div align="center">เวลา</div></td>
        <td><div align="center">จำนวน</div></td>
        <td><div align="center">ราคา</div></td>
        <td><div align="center">รหัสลูกค้า</div></td>
      </tr>
      <tr>
        <td><div align="center"></div></td>
        <td><div align="center"></div></td>
        <td><div align="center"></div></td>
        <td><div align="center"></div></td>
        <td><div align="center"></div></td>
      </tr>
      <tr>
        <td><div align="center"></div></td>
        <td><div align="center"></div></td>
        <td><div align="center">รวม</div></td>
        <td><div align="center"></div></td>
        <td><div align="center">บาท</div></td>
      </tr>
    </table>
     --%>
    </div>
    
    <input type="button" value="ไปหน้า Cashier"  onclick="goPage('cashier_bk')" />
      </td>
  </tr>
</table>
<script>
$(document).ready(function(){
	 $(function() {
			$( "#datepicker" ).datepicker({
				showOn: "button",
				buttonImage: "<%= request.getContextPath() %>/image/calendar.gif",
				buttonImageOnly: true
			}); 
			$( "#datepicker" ).datepicker( "option", "showAnim","slideDown" );
			$( "#datepicker" ).datepicker( "option", "dateFormat","dd/mm/yy" );
		});
});

</script>
</body>
</html>
