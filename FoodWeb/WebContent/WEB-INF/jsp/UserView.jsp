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
var menuSelectedId;
function getFoodMenus(foodDto){
	//alert(userId);
	FoodAjax.getMenuList(foodDto,handleGetFoodMenus);
	//alert(userId);
}
function showDetailMenu(fmPrice,fmCalories,fmId){
 
	var str="<table width=\"200\" border=\"1\">"+
	   		"<tr>"+
      			"<td valign=\"top\">&nbsp;</td>"+
    		"</tr>"+
  			"</table>"+
  			"<table width=\"362\" border=\"1\">"+
    		"<tr>"+
      			"<td width=\"352\">&nbsp;</td>"+
      			"<td width=\"352\">&nbsp;</td>"+
    		"</tr>"+
  			"</table>"+
  			"<table width=\"360\" border=\"1\">"+
    		"<tr>"+
      		"<td width=\"106\">ราคา</td>"+
      		"<td width=\"114\"><div align=\"center\">"+fmPrice+"</div></td>"+
      		"<td width=\"112\">บาท</td>"+
    		"</tr>"+
  			"</table>"+
  			"<table width=\"354\" border=\"1\">"+
    		"<tr>"+
      			"<td width=\"104\">จำนวนแคลอรี</td>"+
      			"<td width=\"116\"><div align=\"center\">"+fmCalories+"</div></td>"+
      			"<td width=\"112\">กรัม</td>"+
    		"</tr>"+
  			"</table>";
	 document.getElementById("menuDetailDiv").innerHTML=str;
	 menuSelectedId=fmId;
}
function handleGetFoodMenus(dataList){
	var str= "<table width=\"420\" border=\"1\">";
	for(var i = 0;i<dataList.length;i++){
		str = str+"<tr><td><div align=\"center\"><img src=\"image/order"+(i+1)+".gif\" width=\"250\" "+
		"onclick=\"showDetailMenu('"+dataList[i].fmPrice+"','"+dataList[i].fmCalories+"','"+dataList[i].fmId+"')\" height=\"44\" /></div></td></tr>";
	}
	str = str+"</table>";
	 document.getElementById("orderDiv").innerHTML=str;
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
//	alert(menuSelectedId)
	var str="<table width=\"1028\" height=\"20\" border=\"1\">"+
    	 		"<tr>"+
        		"<td width=\"51\">&nbsp;</td>"+
        		"<td width=\"352\"><div align=\"center\">รายการที่สั่ง</div></td>"+
        		"<td width=\"203\"><div align=\"center\">จำนวน</div></td>"+
        		"<td width=\"264\"><div align=\"center\">ราคา</div></td>"+
        		"<td width=\"124\">&nbsp;</td>"+
      			"</tr>";
    
    var totalPrice = 0;
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
    				totalPrice = totalPrice+price;
    			if(quantity!=0){
    				str = str+"<tr>"+
      			  "<td>&nbsp;<input type=\"hidden\" name=\"menusIdSelected\" value=\""+menusIdSelectedArray[i].value+"\"/>"+(i+1)+"</td>"+
      			  "<td>&nbsp;<input type=\"hidden\" name=\"menusNameSelected\" value=\""+menusNameSelectedArray[i].value+"\"/>"+menusNameSelectedArray[i].value+"</td>"+
      			  "<td align=\"center\">&nbsp;<input type=\"hidden\" name=\"menusQuantitySelected\" value=\""+quantity+"\"/>"+quantity+"</td>"+
      			  "<td align=\"center\">&nbsp;<input type=\"hidden\" name=\"menusPriceSelected\" value=\""+price+"\"/>"+price+"</td>"+
      			  "<td><div align=\"center\"><img src=\"image/cancel.gif\" width=\"31\" onclick=\"selectMenu('del','"+menusIdSelectedArray[i].value+"')\"   height=\"31\" /></div></td>"+
      			  "</tr>";
    			}
    			}else{
    				str = str+"<tr>"+
      			  "<td>&nbsp;<input type=\"hidden\" name=\"menusIdSelected\" value=\""+menusIdSelectedArray[i].value+"\"/>"+(i+1)+"</td>"+
      			  "<td>&nbsp;<input type=\"hidden\" name=\"menusNameSelected\" value=\""+menusNameSelectedArray[i].value+"\"/>"+menusNameSelectedArray[i].value+"</td>"+
      			  "<td align=\"center\">&nbsp;<input type=\"hidden\" name=\"menusQuantitySelected\" value=\""+menusQuantitySelectedArray[i].value+"\"/>"+menusQuantitySelectedArray[i].value+"</td>"+
      			  "<td align=\"center\">&nbsp;<input type=\"hidden\" name=\"menusPriceSelected\" value=\""+menusPriceSelectedArray[i].value+"\"/>"+menusPriceSelectedArray[i].value+"</td>"+
      			  "<td><div align=\"center\"><img src=\"image/cancel.gif\" width=\"31\" onclick=\"selectMenu('del','"+menusIdSelectedArray[i].value+"')\" height=\"31\" /></div></td>"+
      			  "</tr>";
    				totalPrice = totalPrice+parseFloat(menusPriceSelectedArray[i].value);
    			}
    			
    		} 
//    	alert(str)
        if(!isDuplicate && _mode =='add'){
    	str = str+"<tr><td>&nbsp;<input type=\"hidden\" name=\"menusIdSelected\" value=\""+dataFromServer[0].fmId+"\"/>"+(menusIdSelectedArray.length+1)+"</td>"+
    	  "<td>&nbsp;<input type=\"hidden\" name=\"menusNameSelected\" value=\""+dataFromServer[0].fmName+"\"/>"+dataFromServer[0].fmName+"</td>"+
    	  "<td align=\"center\">&nbsp;<input type=\"hidden\" name=\"menusQuantitySelected\" value=\"1\"/>1</td>"+
    	  "<td align=\"center\">&nbsp;<input type=\"hidden\" name=\"menusPriceSelected\" value=\""+dataFromServer[0].fmPrice+"\"/>"+dataFromServer[0].fmPrice+"</td>"+
    	  "<td><div align=\"center\"><img src=\"image/cancel.gif\" width=\"31\" onclick=\"selectMenu('del','"+dataFromServer[0].fmId+"')\" height=\"31\" /></div></td>"+
    	  "</tr>";
    		totalPrice = totalPrice+parseFloat(dataFromServer[0].fmPrice);
        }
        str = str+"<tr>"+
				"<td colspan=\"5\"  align=\"right\">&nbsp;รวมเงิน "+totalPrice+" บาท</td>"+
				"</tr></table>";
    	document.getElementById("menuDiv").innerHTML=str; 
    		} 
  }
});
   }else{
	   str = str+"<tr>"+
		"<td colspan=\"5\"  align=\"right\">&nbsp;รวมเงิน "+totalPrice+" บาท</td>"+
		"</tr></table>";
	   document.getElementById("menuDiv").innerHTML=str;
   }
	//alert(menusIdSelectedArray.length);
	
}

</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Food Order</title>
</head>

<body>
<table width="1032" border="1" background="image/bg.jpg">
  <tr>
    <td width="1030"><img src="image/title1.jpg" width="1024" height="195" /></td>
  </tr>
  <tr>
    <td height="315"><table width="1028" height="272" border="1" background="image/bg1.jpg">
      <tr>
        <td width="106">&nbsp;</td>
        <td width="351">&nbsp;</td>
        <td width="124">&nbsp;</td>
        <td width="419">&nbsp;</td>
      </tr>
      <tr>
        <td height="32">&nbsp;</td>
        <td rowspan="6" valign="top" background="image/bgorder.gif">
        <span id="menuDetailDiv">       
      	</span>
      
        <%--
        <table width="200" border="1">
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
          </table>
          --%>
          </td>
        <td rowspan="5"><img src="image/order.gif" width="175" height="191" /></td>
        <td rowspan="5" valign="top">
        <span id="orderDiv"></span>      
        
        <%-- 
          <tr>
            <td><div align="center"><img src="image/order1.gif" width="250" height="44"  onclick=""/></div></td>
          </tr>
          <tr>
            <td><div align="center"><img src="image/order2.gif" width="250" height="44" /></div></td>
          </tr>
          <tr>
            <td><div align="center"><img src="image/order3.gif" width="250" height="44" /></div></td>
          </tr>
          <tr>
            <td><div align="center"><img src="image/order4.gif" width="250" height="44" /></div></td>
          </tr>
          <tr>
            <td><div align="center"><img src="image/order5.gif" width="250" height="44" /></div></td>
          </tr>
          --%>
        </td>
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
        <td colspan="3"><div align="center"><img src="image/selectorder.gif" onclick="selectMenu('add','0')" width="250" height="44" /></div></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td height="119">
    <div id="menuDiv"> 
   
    <table width="1028" height="20" border="1">
       
      <tr>
        <td width="51">&nbsp;</td>
        <td width="352"><div align="center">รายการที่สั่ง</div></td>
        <td width="203"><div align="center">จำนวน</div></td>
        <td width="264"><div align="center">ราคา</div></td>
        <td width="124">&nbsp;</td>
      </tr>
      </table>
     <%--   
      <tr>
        <td>&nbsp;1<input type="hidden" name="menusSelected"/></td>
        <td>&nbsp;รายการ 1</td>
        <td>&nbsp; 1</td>
        <td>&nbsp; 2</td>
        <td><div align="center">
           <img src="image/cancel.gif" width="31" height="31" /> 
          </div></td>
      </tr> 
      <tr>
        <td colspan="5">&nbsp;รวมเงิน xx บาท</td> 
      </tr> 
    </table> 
     --%>
    </div>
    </td>
  </tr>
  <tr>
    <td height="38"><table width="1026" border="1">
      <tr>
        <td width="250" height="28">&nbsp;</td>
        <td width="250"><div align="center">
          <form id="form1" name="form1" method="post" action="">
            <label></label>
            <img src="image/cusorder.gif" width="250" height="44" />
          </form>
          </div></td>
        <td width="250"><div align="center">
          <form id="form2" name="form2" method="post" action="">
            <label><img src="image/cancelorder.gif" width="250" height="44" onclick="selectMenu('delAll','0')" />              </label>
          </form>
          </div></td>
        <td width="248">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>

<script>
var foodDto ={
		fmStatus:"1"
};
getFoodMenus(foodDto);
</script>
</body>
</html>
