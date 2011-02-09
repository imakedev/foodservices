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
var context_path="<%=request.getContextPath()%>";
function goPage(_page){
	//alert(context_path)
	window.location.href=context_path+"/AdminServlet?page="+_page;
} 
function setOrderStatus(_mode,_foId){
	var ids=[] ;
	if(_mode=='byId'){
		ids[0] = _foId;
	}else{// byIds
		var foIds = document.getElementsByName('foIdSelected');
		if(foIds!=null && foIds.length>0){
			for(var i=0;i<foIds.length;i++){
				ids[i] = foIds[i].value;
			}
		} 
	}
	if(ids.length>0){
		var orders ={foIds:ids,foStatus:"1"};
		FoodAjax.setOrderStatus(orders,{
		 callback:function(dataStatus) {
			 getInCompleteOrders();
		 	// getFoodMenus("1");			 
    	 }
	    });
	}
}
function getInCompleteOrders(){
	//alert("call Ajax")
	var foodOrderDTO ={foStatus:"0"};
	FoodAjax.getOrdersList(foodOrderDTO,{
		callback:function(dataFormServer){
		//alert(dataFormServer)
			var str = "<table width=\"841\" height=\"57\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" bordercolor=\"#000000\" bgcolor=\"#CCCC99\" style=\"background-repeat:no-repeat;\">"+
		    "<tr bgcolor=\"#999933\">"+
		     " <td width=\"85\" height=\"30\"><div align=\"center\"><strong>ลำดับ</strong></div></td>"+
		      "  <td width=\"388\"><div align=\"center\"><strong>รายการอาหาร</strong></div></td>"+
		      "  <td width=\"140\"><div align=\"center\"><strong>จำนวน</strong></div></td>"+
		      "  <td><div align=\"center\"><strong>ทำรายการเสร็จสิ้น</strong></div>              <div align=\"center\"></div></td>"+
		      "</tr>";
		      if(dataFormServer!=null && dataFormServer.length>0){
		    	  for(var i=0;i<dataFormServer.length;i++){
		    		  str = str+"<tr valign=\"top\">"+
				         " <td height=\"25\" align=\"center\" valign=\"top\"><input type=\"hidden\" name=\"foIdSelected\" value=\""+dataFormServer[i].foId+"\"/>"+
				         "&nbsp;"+(i+1)+"</td>"+
				         " <td align=\"center\">&nbsp;"+dataFormServer[i].foodMenuDTO.fmName+"</td>"+
				         " <td align=\"center\">&nbsp;"+dataFormServer[i].foQuantity+"</td>"+
				         " <td align=\"center\"><input name=\"button\" type=\"button\" id=\"button\" value=\"เสร็จสิ้น\" onclick=\"setOrderStatus('byId','"+dataFormServer[i].foId+"')\"/></td>"+
				        "</tr>";
		    	  } 
		      }
		      str = str+"</table>";
		     // alert(str)
		      document.getElementById('ordersDiv').innerHTML=str;
		      setTimeout("getInCompleteOrders()",30000) 
		}
	}); 
	  
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Menu</title>
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
	font-style: italic;
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
      <p>&nbsp;</p>
      <ul><li class="style2">
          <div align="left">รายการอาหารที่สั่ง</div>
      </li>
      </ul>
      <div id="ordersDiv"></div>
      <%--
      <table width="841" height="57" border="1" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#CCCC99" style="background-repeat:no-repeat;">
        <tr bgcolor="#999933">
          <td width="85" height="30"><div align="center"><strong>ลำดับ</strong></div></td>
            <td width="388"><div align="center"><strong>รายการอาหาร</strong></div></td>
            <td width="140"><div align="center"><strong>จำนวน</strong></div></td>
            <td><div align="center"><strong>ทำรายการเสร็จสิ้น</strong></div>              <div align="center"></div></td>
          </tr>
        <tr valign="top">
          <td height="25" align="center" valign="top">&nbsp;</td>
            <td align="center">&nbsp;</td>
            <td align="center">&nbsp;</td>
            <td align="center"><input name="button" type="submit" id="button" value="เสร็จสิ้น" /></td>
          </tr>
      </table>
       --%>
      <br />
    </div></td>
  </tr>
  <tr align="center" valign="middle">
    <td height="24" align="right"><blockquote>
      <blockquote>
        <form id="form2" name="form2" method="post" action="">
      <label>
            <input type="button" name="button2" id="button2" value="ทำรายการทั้งหมดเสร็จสิ้น" onclick="setOrderStatus('all','0')"/>
            </label>
        </form>
        </blockquote>
    </blockquote></td>
</tr>
  <tr align="center" valign="middle">
    <td height="70"><table width="86%" border="0">
      <tr>
        <td width="27%" height="26" align="right" valign="middle"><input type="button" name="เติมเงินในบัตร" id="เติมเงินในบัตร" value=":: เพิ่มรายการอาหาร ::" onclick="goPage('addmenu_bk')"/></td>
        <td width="28%" align="center" valign="middle"><input type="button" name="สมัครใช้บัตรเงินสด" id="สมัครใช้บัตรเงินสด" value=":: จัดการเมนูอาหาร ::" onclick="goPage('managemenu_bk')"/></td>
        <td width="3%" align="center" valign="middle">&nbsp;</td>
        <td width="19%" align="right" valign="middle">&nbsp;</td>
        <td width="23%" align="center" valign="middle">&nbsp;</td>
      </tr>
    </table>
    <br /></td>
  </tr>
</table>
<script>
getInCompleteOrders();
</script>
<p>&nbsp;</p>
</body>
</html>
