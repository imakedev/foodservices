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
function getListBill(){
	//alert(foodbillDto.fbId)
    var foodbillDto={};
	FoodAjax.listBillComplete(foodbillDto,{
		callback:function(dataFormServer){
			if(dataFormServer!=null){
		//		alert(dataFormServer); 
			}
			var str = "<table width=\"608\" height=\"57\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" bordercolor=\"#000000\" bgcolor=\"#CCCC99\" style=\"background-repeat:no-repeat;\">"+
	        "<tr bgcolor=\"#999933\">"+
	          "<td width=\"440\" height=\"30\"><div align=\"center\"><strong>ลำดับรายการใบเสร็จ</strong></div></td>"+
	            "<td width=\"162\"><div align=\"center\"><strong>ชำระเงิน</strong></div>              <div align=\"center\"></div></td>"+
	          "</tr>";
	         
	         
	      
				for(var i=0;i<dataFormServer.length;i++){
				var str = str+ "<tr valign=\"top\">"+
				          "<td height=\"25\" align=\"center\">รายการใบเสร็จที่&nbsp;"+(i+1)+"</td>"+ 
				            "<td align=\"center\"><input name=\"button\" type=\"submit\" id=\"button\" value=\"ชำระ\" onclick=\"goPage('cash_bk&fbid="+dataFormServer[i].fbId+"')\" /></td>"+
				          "</tr>";
			  }
				 str = str+"</table>";
						  document.getElementById('listbillDiv').innerHTML=str;
				
		 setTimeout("getListBill()",30000)  
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
          <div align="left">รายการใบเสร็จค้างชำระ</div>
      </li>
      </ul>
    
 <div id="listbillDiv"/>
 <%-- 
      <table width="608" height="57" border="1" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#CCCC99" style="background-repeat:no-repeat;">
        <tr bgcolor="#999933">
          <td width="440" height="30"><div align="center"><strong>ลำดับรายการใบเสร็จ</strong></div></td>
            <td width="162"><div align="center"><strong>ชำระเงิน</strong></div>              <div align="center"></div></td>
          </tr>
         
         <tr valign="top">
          <td height="25" align="center">&nbsp;</td>
            <td align="center"><input name="button" type="submit" id="button" value="ชำระ" /></td>
          </tr> 
      </table>
   --%>
      <br />
    </div></td>
  </tr>
  <tr align="center" valign="middle">
    <td height="24" align="right"><blockquote>
      <blockquote>
        
        </blockquote>
    </blockquote></td>
</tr>
  <tr align="center" valign="middle">
    <td height="70"><table width="86%" border="0">
      <tr>
        <td width="27%" height="26" align="right" valign="middle"><input type="button" name="สมัครสมาชิก" id="สมัครสมาชิก" value=":: สมัครสมาชิก ::" onclick="goPage('cashmember_bk')"/></td>
        <td width="28%" align="center" valign="middle"><input type="button" name="สรุปยอดขาย" id="สรุปยอดขาย" value=":: สรุปยอดขาย ::" onclick="goPage('summary_bk')"/></td>
        <td width="3%" align="center" valign="middle">&nbsp;</td>
        <td width="19%" align="right" valign="middle">&nbsp;</td>
        <td width="23%" align="center" valign="middle">&nbsp;</td>
      </tr>
    </table>
    <br /></td>
  </tr>
</table>
<script> 
getListBill(); 
</script>
<p>&nbsp;</p>
</body>
</html>
