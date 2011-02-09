<%@ page contentType="text/html; charset=utf-8" %>
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
var context_path="<%=request.getContextPath()%>";
function goPage(_page){
	//alert(context_path)
	//window.open(URL,name,specs,replace);
	// window.location.assign(context_path+"/AdminServlet?page="+_page);
//	 window.open("'"+context_path+"/AdminServlet?page="+_page+"'",'target=_blank','','');
//,width=500,height=500
	var testwindow= window.open ("AdminServlet?page="+_page, 'mywindow',
	'location=1,status=1,scrollbars=1,toolbar =1,menubar =1,resizable =1,titlebar =1');
	testwindow.moveTo(0,0);
} 
var menuSelectedId;
function getFoodMenus(foodDto){
	//alert(userId);
	FoodAjax.getMenuList(foodDto,handleGetFoodMenus);
	//alert(userId);
}
function orderMenus(){	
	 
	var totalPrice = document.getElementById('totalPrice');
	var totalCalories = document.getElementById('totalCalories');
	var totalQuantity =document.getElementById("totalQuantity");
	//var customerCode = document.getElementById("customerCode");
	var menusIdSelectedArray = document.getElementsByName("menusIdSelected");
	var menusNameSelectedArray = document.getElementsByName("menusNameSelected");
	var menusQuantitySelectedArray = document.getElementsByName("menusQuantitySelected");
	var menusPriceSelectedArray = document.getElementsByName("menusPriceSelected");
	var menusCaloriesSelectedArray = document.getElementsByName("menusCaloriesSelected");	
	if(menusIdSelectedArray!=null && menusIdSelectedArray.length>0){
		/*
		var customerDto = {fcId:customerCode.value}
		FoodAjax.getCustomer(customerDto,{
			callback:function(dataFromServerCust){
				if(dataFromServerCust!=null && dataFromServerCust.length>0){
					*/
					var totalPriceValue = parseFloat(totalPrice.value)
					//alert("totalPriceValue="+totalPriceValue+",dataFromServerCust[0].fcMoney="+dataFromServerCust[0].fcMoney)
					//if(dataFromServerCust[0].fcMoney>totalPriceValue){
						var foodOrders =new Array();
						for(var i=0 ;i<menusIdSelectedArray.length;i++){
							var foodMenuDTO={
									fmId:menusIdSelectedArray[i].value 
							};
							//var foodCustomerDTO={fcId:customerCode.value};
							var foodOrderDTO ={
									foQuantity:menusQuantitySelectedArray[i].value,
					 				foTotalCalories:menusCaloriesSelectedArray[i].value,
					 				foTotalPrice:menusPriceSelectedArray[i].value,
					 				foStatus:"0",
					 				foodMenuDTO:foodMenuDTO
					 			//	foodCustomerDTO:foodCustomerDTO
							};
							foodOrders[i] = foodOrderDTO;
						}
					//	alert(foodOrders[0].foTotalPrice) 
						var foodBillDTO ={ 
							foodOrders:foodOrders,
								fbTotalCalories:totalCalories.value,
								fbTotalPrice:totalPrice.value,
								fbStatus:"0",
								fbTotalQuantity:totalQuantity.value
						};
					 
						FoodAjax.orderMenus(foodBillDTO,{
							 callback:function(dataFromServer) {
								 if(dataFromServer!=null){
									 alert(" สั่งอาหารเรียบร้อยค่ะ ")
									 selectMenu('delAll','0')
								//	goPage('cash_bk&fbid='+dataFromServer.fbId);
							 	}
							 }
						});
						/*
					}else{
						alert(" จำนวนเงินไม่พอจ่ายค่ะ กรุณาเติมเงิน ")
					}
					*/
			//	}
				/*
				else{
					alert(" รหัสลูกค้าไม่ถูกต้อง ")
				}
				*/
				
		//	}
		//});
	}else{
		alert(" เลือกเมนูที่ต้องการค่ะ " )
	}
	
	
	
}
function showDetailMenu(fmPrice,fmCalories,fmId,fmName,fmDetail,fmPicturePath){
	var str="<table width=\"390\" height=\"378\" border=\"0\" align=\"right\" cellpadding=\"0\" cellspacing=\"0\">"+
    "<tr>"+
      "<td width=\"390\" height=\"229\" align=\"center\" valign=\"middle\"><table width=\"100%\" border=\"1\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bordercolor=\"#FFFFFF\" bgcolor=\"#000000\">"+
       "<tr>"+
          "<td align=\"center\" valign=\"middle\"><img src=\"image/"+fmPicturePath+"\"  width=\"220\" height=\"200\" border=\"0\"  /></td>"+
        "</tr>"+
      "</table>                    </td>"+
    "</tr>"+
    "<tr bordercolor=\"#000000\">"+
      "<td height=\"149\" align=\"center\" valign=\"top\"><table width=\"100%\" height=\"23\" border=\"1\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bordercolor=\"#000000\" bgcolor=\"#FFFFCC\">"+
        "<tr bordercolor=\"#000000\">"+
          "<td width=\"144\" align=\"left\" valign=\"top\" bordercolor=\"#000000\"><strong>ชื่ออาหาร ::</strong></td>"+
          "<td width=\"238\" valign=\"top\" bgcolor=\"#FFFFFF\">"+fmName+"</td>"+
        "</tr>"+
      "</table>"+
        "<table width=\"100%\" border=\"1\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bordercolor=\"#000000\" bgcolor=\"#FFFFCC\">"+
          "<tr>"+
            "<td width=\"144\" align=\"left\" valign=\"top\"><strong>รายละเอียดอาหาร ::</strong></td>"+
            "<td width=\"240\" align=\"left\" valign=\"top\" bgcolor=\"#FFFFFF\"><p><em>"+fmDetail+"</em></p></td>"+
          "</tr>"+ 
        "</table>"+
        "<table width=\"100%\" border=\"1\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bordercolor=\"#000000\" bgcolor=\"#FFFFCC\">"+
          "<tr bordercolor=\"#000000\">"+
            "<td width=\"144\" height=\"21\" align=\"left\" valign=\"top\"><strong>ราคา ::</strong></td>"+
            "<td width=\"129\" bgcolor=\"#FFFFFF\"><div align=\"center\" class=\"style1\">"+fmPrice+"</div></td>"+
            "<td width=\"107\"><strong>บาท</strong></td>"+
          "</tr>"+
        "</table>"+
        "<table width=\"100%\" border=\"1\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bordercolor=\"#000000\" bgcolor=\"#FFFFCC\">"+
          "<tr bordercolor=\"#000000\">"+
            "<td width=\"144\" align=\"left\" valign=\"top\"><strong>จำนวนแคลอรี ::</strong></td>"+
            "<td width=\"129\" bgcolor=\"#FFFFFF\"><div align=\"center\"><em><strong>"+fmCalories+"</strong></em></div></td>"+
            "<td width=\"107\"><strong>กิโลแคลอรี</strong></td>"+
          "</tr>"+
        "</table></td>"+
    "</tr>"+
  "</table>";
	 
	 document.getElementById("menuDetailDiv").innerHTML=str;
	 menuSelectedId=fmId;
}
function handleGetFoodMenus(dataList){ 
	var str= "<table width=\"380\" height=\"356\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">";
	for(var i = 0;i<dataList.length;i++){
		str = str+"<tr><td height=\"58\"><div align=\"center\"><img src=\"image/order"+(i+1)+".gif\" width=\"250\" "+
		"onclick=\"showDetailMenu('"+dataList[i].fmPrice+"','"+dataList[i].fmCalories+"','"+dataList[i].fmId+"','"+dataList[i].fmName+"','"+dataList[i].fmDetail+"','"+dataList[i].fmPicturePath+"')\" height=\"44\" /></div></td></tr>";
	}
	str = str+"<tr>"+
    		"<td height=\"58\"><div align=\"center\"><img src=\"image/selectorder.gif\" onclick=\"selectMenu('add','0')\"  width=\"250\" height=\"44\" /></div></td>"+
    		"</tr></table>";
	 document.getElementById("orderDiv").innerHTML=str;
	 if(dataList.length>0)
	 	showDetailMenu(dataList[0].fmPrice,dataList[0].fmCalories,dataList[0].fmId,
			 dataList[0].fmName,dataList[0].fmDetail,dataList[0].fmPicturePath);
	//alert(dataList[1].fmDetail);
}
function selectFoodMenu(fmId){
	//alert(userId);
	var foodDto ={
			fmId:fmId
	};
	FoodAjax.getMenuList(foodDto,handleSelectFoodMenu);
	//alert(userId);
}
function handleSelectFoodMenu(dataList){
	alert(dataList[0].fmDetail);
}
function selectMenu(_mode,_fmId){
	//alert("mode="+_mode+",_fmId="+_fmId);
	var menusIdSelectedArray = document.getElementsByName("menusIdSelected");
	var menusNameSelectedArray = document.getElementsByName("menusNameSelected");
	var menusQuantitySelectedArray = document.getElementsByName("menusQuantitySelected");
	var menusPriceSelectedArray = document.getElementsByName("menusPriceSelected");
	var menusCaloriesSelectedArray = document.getElementsByName("menusCaloriesSelected");
//	alert(menuSelectedId)
	var str="<table width=\"1028\" height=\"20\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" bordercolor=\"#000000\" bgcolor=\"#FFFFFF\">"+
    	 		"<tr>"+
        		"<td width=\"52\" height=\"21\" bgcolor=\"#FFFFCC\"><div align=\"center\"><strong>ลำดับ</strong></div></td>"+
        		"<td width=\"386\" bgcolor=\"#FFFFCC\"><div align=\"center\"><strong>รายการที่สั่ง</strong></div></td>"+
        		"<td width=\"224\" bgcolor=\"#FFFFCC\"><div align=\"center\"><strong>จำนวน</strong></div></td>"+
        		"<td width=\"225\" bgcolor=\"#FFFFCC\"><div align=\"center\"><strong>ราคา</strong></div></td>"+
        		"<td width=\"129\" bgcolor=\"#FFFFCC\">&nbsp;</td>"+
      			"</tr>";
     
    var totalPrice = 0;
    var totalCalories =0;
    var totalQuantity = 0
    if(_mode!='delAll'){
    var fmId;
    if(_mode=='add')
    	fmId=menuSelectedId;
    else
    	fmId=_fmId;
	var foodDto={
		fmId:fmId
	}
	FoodAjax.getMenuList(foodDto,{
 		 callback:function(dataFromServer) {
    		//alert(foodDto)
    		//alert(dataFromServer)
    		var isDuplicate = false;
    		
    		if(dataFromServer!=null){
    			
    			if(menusIdSelectedArray!=null)        
    		for(var i=0;i<menusIdSelectedArray.length;i++){
    			if(dataFromServer[0].fmId==menusIdSelectedArray[i].value){
    			//	alert("you select same id");
    				isDuplicate = true;
    			//	var price = parseFloat(menusQuantitySelectedArray[i].value)+parseFloat(dataFromServer[0].fmPrice)
    			var quantity;
    			if(_mode == 'del'){
    				  quantity = parseInt(menusQuantitySelectedArray[i].value)-1
    			}else{
    				  quantity = parseInt(menusQuantitySelectedArray[i].value)+1
    			}
    			//	var quantity = parseInt(menusQuantitySelectedArray[i].value)+1
    				var price = parseFloat(dataFromServer[0].fmPrice)*quantity;
    				var calories = parseFloat(dataFromServer[0].fmCalories)*quantity;
    				totalPrice = totalPrice+price;
    				totalCalories=totalCalories+calories;
    				totalQuantity = totalQuantity+quantity;
    			if(quantity!=0){ 
    				str = str+"<tr>"+
      			  "<td height=\"29\">&nbsp;<input type=\"hidden\" name=\"menusIdSelected\" value=\""+menusIdSelectedArray[i].value+"\"/>"+(i+1)+"</td>"+
      			  "<td>&nbsp;<input type=\"hidden\" name=\"menusNameSelected\" value=\""+menusNameSelectedArray[i].value+"\"/>"+menusNameSelectedArray[i].value+"</td>"+
      			  "<td align=\"center\">&nbsp;<input type=\"hidden\" name=\"menusQuantitySelected\" value=\""+quantity+"\"/>"+quantity+"</td>"+
      			  "<td align=\"center\">&nbsp;<input type=\"hidden\" name=\"menusPriceSelected\" value=\""+price+"\"/>"+price+"</td>"+
      			  "<td><div align=\"center\"><input type=\"hidden\" name=\"menusCaloriesSelected\" value=\""+calories+"\"/><img src=\"image/cancel.gif\"  onclick=\"selectMenu('del','"+menusIdSelectedArray[i].value+"')\"  width=\"25\" height=\"27\"  /></div></td>"+
      			  "</tr>";
    			}
    			}else{
    				str = str+"<tr>"+
      			  "<td height=\"29\">&nbsp;<input type=\"hidden\" name=\"menusIdSelected\" value=\""+menusIdSelectedArray[i].value+"\"/>"+(i+1)+"</td>"+
      			  "<td>&nbsp;<input type=\"hidden\" name=\"menusNameSelected\" value=\""+menusNameSelectedArray[i].value+"\"/>"+menusNameSelectedArray[i].value+"</td>"+
      			  "<td align=\"center\">&nbsp;<input type=\"hidden\" name=\"menusQuantitySelected\" value=\""+menusQuantitySelectedArray[i].value+"\"/>"+menusQuantitySelectedArray[i].value+"</td>"+
      			  "<td align=\"center\">&nbsp;<input type=\"hidden\" name=\"menusPriceSelected\" value=\""+menusPriceSelectedArray[i].value+"\"/>"+menusPriceSelectedArray[i].value+"</td>"+
      			  "<td><div align=\"center\"><input type=\"hidden\" name=\"menusCaloriesSelected\" value=\""+menusCaloriesSelectedArray[i].value+"\"/><img src=\"image/cancel.gif\"  onclick=\"selectMenu('del','"+menusIdSelectedArray[i].value+"')\" width=\"25\" height=\"27\" /></div></td>"+
      			  "</tr>";
    				totalPrice = totalPrice+parseFloat(menusPriceSelectedArray[i].value);
    				totalCalories = totalCalories+parseFloat(menusCaloriesSelectedArray[i].value);
    				totalQuantity= totalQuantity+parseFloat(menusQuantitySelectedArray[i].value);
    			}
    			
    		} 
//    	alert(str)
        if(!isDuplicate && _mode =='add'){
    	str = str+"<tr><td height=\"29\">&nbsp;<input type=\"hidden\" name=\"menusIdSelected\" value=\""+dataFromServer[0].fmId+"\"/>"+(menusIdSelectedArray.length+1)+"</td>"+
    	  "<td>&nbsp;<input type=\"hidden\" name=\"menusNameSelected\" value=\""+dataFromServer[0].fmName+"\"/>"+dataFromServer[0].fmName+"</td>"+
    	  "<td align=\"center\">&nbsp;<input type=\"hidden\" name=\"menusQuantitySelected\" value=\"1\"/>1</td>"+
    	  "<td align=\"center\">&nbsp;<input type=\"hidden\" name=\"menusPriceSelected\" value=\""+dataFromServer[0].fmPrice+"\"/>"+dataFromServer[0].fmPrice+"</td>"+
    	  "<td><div align=\"center\"><input type=\"hidden\" name=\"menusCaloriesSelected\" value=\""+dataFromServer[0].fmCalories+"\"/><img src=\"image/cancel.gif\"  onclick=\"selectMenu('del','"+dataFromServer[0].fmId+"')\" width=\"25\" height=\"27\" /></div></td>"+
    	  "</tr>";
    		totalPrice = totalPrice+parseFloat(dataFromServer[0].fmPrice);
    		totalCalories = totalCalories+parseFloat(dataFromServer[0].fmCalories);
    		totalQuantity= totalQuantity+1;
        }
       
        str = str+"<tr>"+
        		"<td height=\"23\" bgcolor=\"#FFFFCC\">&nbsp;</td>"+
        		"<td bgcolor=\"#FFFFCC\">&nbsp;</td>"+
				"<td bgcolor=\"#FFFFCC\"><div align=\"center\"><strong>รวมเงิน</strong></div></td>"+
				"<td bgcolor=\"#FFFFCC\" <div align=\"center\">&nbsp;<strong>"+totalPrice+" บาท</strong></div></td>"+
				" <td bgcolor=\"#FFFFCC\"><div align=\"center\"><strong>"+
				"<input type=\"hidden\" id=\"totalQuantity\" value=\""+totalQuantity+"\"/>"+
				"<input type=\"hidden\" id=\"totalCalories\" value=\""+totalCalories+"\"/><input type=\"hidden\" id=\"totalPrice\" value=\""+totalPrice+"\"/></strong></div></td>"+ 
				"</tr></table>";
    	document.getElementById("menuDiv").innerHTML=str; 
    		} 
  }
});
   }else{
	   str = str+"<tr>"+
		"<td height=\"23\" bgcolor=\"#FFFFCC\">&nbsp;</td>"+
		"<td bgcolor=\"#FFFFCC\">&nbsp;</td>"+
		"<td bgcolor=\"#FFFFCC\"><div align=\"center\"><strong>รวมเงิน</strong></div></td>"+
		"<td bgcolor=\"#FFFFCC\"<div align=\"center\">&nbsp;<strong>"+totalPrice+" บาท</strong></div></td>"+
		" <td bgcolor=\"#FFFFCC\"><div align=\"center\"><strong><input type=\"hidden\" id=\"totalPrice\" value=\""+totalPrice+"\"/></strong></div></td>"+ 
		"</tr></table>"; 
	   document.getElementById("menuDiv").innerHTML=str;
   }
	//alert(menusIdSelectedArray.length);
	
}

</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Order</title>
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #666600;
	
}
.style1 {
	color: #FF0000;
	font-weight: bold;
	font-style: italic;
}
-->
</style></head>

<body>
<div align="center" >
  <table width="1028" height="766" border="0" cellpadding="00" cellspacing="0" background="image/bg.jpg" style="background-attachment:fixed;">
    <tr>
      <td width="1028"><div align="center"><img src="image/title.gif" width="1007" height="192" /></div></td>
    </tr>
    <tr valign="top">
      <td height="437"><table width="1026" height="430" border="0" cellpadding="0" cellspacing="0">

          <tr>
            <td width="436" rowspan="2" align="center" valign="middle">
              <div id="menuDetailDiv">       
      		</div>
            <%--
            <table width="390" height="378" border="0" align="right" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="390" height="229" align="center" valign="middle"><table width="100%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bgcolor="#000000">
                    <tr>
                      <td align="center" valign="middle"><img src="image/0001.jpg" name="ข้าวคลุกกะปิหมูหวาน" width="220" height="200" border="0" id="ข้าวคลุกกะปิหมูหวาน" /></td>
                    </tr>
                  </table>                    </td>
                </tr>
                <tr bordercolor="#000000">
                  <td height="149" align="center" valign="top"><table width="100%" height="23" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFCC">
                    <tr bordercolor="#000000">
                      <td width="144" align="left" valign="top" bordercolor="#000000"><strong>ชื่ออาหาร ::</strong></td>
                      <td width="238" valign="top" bgcolor="#FFFFFF">ข้าวคลุกกะปิหมูหวาน</td>
                    </tr>
                  </table>
                    <table width="100%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFCC">
                      <tr>
                        <td width="144" align="left" valign="top"><strong>รายละเอียดอาหาร ::</strong></td>
                        <td width="240" align="left" valign="top" bgcolor="#FFFFFF"><p><em>สูตรโบราณ ใช้กะปิอย่างดี รสชาติไม่เค็มมาก สีธรรมชาติ พร้อมหมูหวานรสกลมกล่อม ตำหรับชาววัง</em></p></td>
                      </tr>
                    </table>
                    <table width="100%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFCC">
                      <tr bordercolor="#000000">
                        <td width="144" height="21" align="left" valign="top"><strong>ราคา ::</strong></td>
                        <td width="129" bgcolor="#FFFFFF"><div align="center" class="style1">50</div></td>
                        <td width="107"><strong>บาท</strong></td>
                      </tr>
                    </table>
                    <table width="100%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFCC">
                      <tr bordercolor="#000000">
                        <td width="144" align="left" valign="top"><strong>จำนวนแคลอรี ::</strong></td>
                        <td width="129" bgcolor="#FFFFFF"><div align="center"><em><strong>532</strong></em></div></td>
                        <td width="107"><strong>กิโลแคลอรี</strong></td>
                      </tr>
                    </table></td>
                </tr>
              </table>
              --%>
            </td>
            <td width="206" rowspan="2" align="center" valign="middle">
            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td align="right" valign="middle"><div align="right"><img src="image/order.gif" width="175" height="191" /></div></td>
              </tr>
            </table></td>
            <td width="384" height="411" valign="middle">
             <span id="orderDiv"></span>   
            <%--
            <table width="380" height="356" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="58"><div align="center"><img src="image/order1.gif" width="250" height="44" /></div></td>
                </tr>
                <tr>
                  <td height="58"><div align="center"><img src="image/order2.gif" width="250" height="44" /></div></td>
                </tr>
                <tr>
                  <td height="58"><div align="center"><img src="image/order3.gif" width="250" height="44" /></div></td>
                </tr>
                <tr>
                  <td height="58"><div align="center"><img src="image/order4.gif" width="250" height="44" /></div></td>
                </tr>
                <tr>
                  <td height="58"><div align="center"><img src="image/order5.gif" width="250" height="44" /></div></td>
                </tr>
                <tr>
                  <td height="58"><div align="center"><img src="image/selectorder.gif" width="250" height="44" /></div></td>
                </tr>
                
            </table>
            --%>
            </td>
          </tr>

          <tr>
            <td height="19" rowspan="-3">&nbsp;</td>
          </tr>

      </table></td>
    </tr>
    <%--
    <tr>
      <td height="82"> 
      <table width="1028" height="20" border="1" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
          <tr>
            <td width="52"  colspan=2" height="21" bgcolor="#FFFFCC"><div align="left"><strong>รหัสลูกค้า</strong><input type="text"
             id="customerCode" value=""/> </div></td> 
            <td width="224" bgcolor="#FFFFCC"><div align="center"><strong></strong></div></td>
            <td width="225" bgcolor="#FFFFCC"><div align="center"><strong></strong></div></td>
            <td width="129" bgcolor="#FFFFCC">&nbsp;</td>
          </tr>
       </table>
       </td>
       </tr>
       --%>
    <tr>
      <td height="82">
      <div id="menuDiv"> 
      <table width="1028" height="20" border="1" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
          <tr>
            <td width="52" height="21" bgcolor="#FFFFCC"><div align="center"><strong>ลำดับ</strong></div></td>
            <td width="386" bgcolor="#FFFFCC"><div align="center"><strong>รายการที่สั่ง</strong></div></td>
            <td width="224" bgcolor="#FFFFCC"><div align="center"><strong>จำนวน</strong></div></td>
            <td width="225" bgcolor="#FFFFCC"><div align="center"><strong>ราคา</strong></div></td>
            <td width="129" bgcolor="#FFFFCC">&nbsp;</td>
          </tr>
       </table>
      <%--
      <table width="1028" height="80" border="1" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
          <tr>
            <td width="52" height="21" bgcolor="#FFFFCC"><div align="center"><strong>ลำดับ</strong></div></td>
            <td width="386" bgcolor="#FFFFCC"><div align="center"><strong>รายการที่สั่ง</strong></div></td>
            <td width="224" bgcolor="#FFFFCC"><div align="center"><strong>จำนวน</strong></div></td>
            <td width="225" bgcolor="#FFFFCC"><div align="center"><strong>ราคา</strong></div></td>
            <td width="129" bgcolor="#FFFFCC">&nbsp;</td>
          </tr>
          <tr>
            <td height="29">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><div align="center"><img src="image/cancel.gif" width="25" height="27" /></div></td>
          </tr>
          <tr>
            <td height="23" bgcolor="#FFFFCC">&nbsp;</td>
            <td bgcolor="#FFFFCC">&nbsp;</td>
            <td bgcolor="#FFFFCC"><div align="center"><strong>รวมเงิน</strong></div></td>
            <td bgcolor="#FFFFCC">&nbsp;</td>
            <td bgcolor="#FFFFCC"><div align="center"><strong>บาท</strong></div></td>
          </tr>
          
      </table>
       --%>
       </div>
      <div align="center"></div></td>
    </tr>
    <tr>
      <td height="38">
        <table width="1026" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="257" height="46">&nbsp;</td>
              <td width="250" align="center" valign="middle"><div align="right"><img src="image/cusorder.gif" onclick="orderMenus()"  width="217" height="39" /></div></td>
              <td width="250" align="center" valign="middle"><div align="left"><img src="image/cancelorder.gif"  onclick="selectMenu('delAll','0')" width="208" height="39" /></div></td>
              <td width="259">&nbsp;</td>
          </tr>
        </table>
      </td>
    </tr>
  </table> 
<script>
var foodDto ={
		fmStatus:"1"
};
getFoodMenus(foodDto);
</script>
</div>
</body>
</html>
