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
var fmId= '<%=(request.getParameter("fmid")!=null && request.getParameter("fmid").length()>0)?request.getParameter("fmid"):""%>'; 
var context_path="<%=request.getContextPath()%>";
function goPage(_page){ 
	 window.location.href=context_path+"/AdminServlet?page="+_page; 
	 
} 
function validateData(){
	
	if(!document.getElementById('fmName').value.length>0){
		alert(" กรุณาใส่ชื่ออาหาร ")
		document.getElementById('fmName').focus();
		return false;
	}
	if(!document.getElementById('fmDetail').value.length>0){
		alert(" กรุณาใส่รายละเอียดอาหาร ")
		document.getElementById('fmDetail').focus();
		return false;
	}
	if(!document.getElementById('fmCalories').value.length>0){
		alert(" กรุณาใส่จำนวนพลังงาน ")
		document.getElementById('fmCalories').focus();
		return false;
	}
	if(!document.getElementById('fmPrice').value.length>0){
		alert(" กรุณาใส่ราคาอาหาร ")
		document.getElementById('fmPrice').focus();
		return false;
	}
	
	// add
	if(!fmId.length>0)
		if(!document.getElementById('file').value.length>0){
			alert(" กรุณาเลือกรูปภาพอาหาร ")
		
			return false;
		} 
	
	var fmPicturePath = document.getElementById('fmPicturePath').value;
	// add or edit file
	if(document.getElementById('file').value.length>0){
		var d = new Date();
		var randomnumber=Math.random()+"";
		randomnumber = randomnumber.substr(2,randomnumber.length);
		var filelength =document.getElementById('file').value.length;
		var ext = document.getElementById('file').value.substr(filelength-3,filelength);
		fmPicturePath = randomnumber+"."+ext
	}
	document.getElementById('fmPicturePath').value = fmPicturePath
	var foodMenuDto ={
			fmId:document.getElementById('fmId').value,
			fmName:document.getElementById('fmName').value,
			fmPrice:document.getElementById('fmPrice').value,
			fmCalories:document.getElementById('fmCalories').value,
			fmDetail:document.getElementById('fmDetail').value,
			fmStatus:document.getElementById('fmStatus').value,
			fmPicturePath:fmPicturePath
	}
	FoodAjax.addOrEditFoodMenu(foodMenuDto,
			{
		callback:function(dataFormServer){
		//	alert(document.getElementById('fmPicturePath').value)
		}
	});
	
	
	return true;
	 
}
function getFoodMenus(foodDto){
	//alert(userId);
	FoodAjax.getMenuList(foodDto,
			{
		callback:function(dataFormServer){
			//alert(dataFormServer)
			if(dataFormServer!=null && dataFormServer.length==1){
				document.getElementById('fmId').value = dataFormServer[0].fmId;
				document.getElementById('fmStatus').value = dataFormServer[0].fmStatus;
				document.getElementById('fmPicturePath').value = dataFormServer[0].fmPicturePath;
				document.getElementById('fmName').value = dataFormServer[0].fmName;
				document.getElementById('fmDetail').value = dataFormServer[0].fmDetail;
				document.getElementById('fmCalories').value = dataFormServer[0].fmCalories; 
				document.getElementById('fmPrice').value = dataFormServer[0].fmPrice;
				if( dataFormServer[0].fmPicturePath!=null && dataFormServer[0].fmPicturePath.length>0){
					document.getElementById('imgShow').innerHTML="<img src=\"image/"+dataFormServer[0].fmPicturePath+"\"  width=\"220\" height=\"200\" border=\"0\"  />";
				}
			}
		}
			});
	//alert(userId);
}
 

</script>
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
<%-- 
<form method="post" action="/FoodWeb/AdminServlet"  enctype="multipart/form-data" >
--%>

<form  enctype="multipart/form-data" method="post" action="/FoodWeb/AdminServlet?page=addmenu_bk&mode=upload<%=(request.getParameter("fmid")!=null && request.getParameter("fmid").length()>0)?"&fmid="+request.getParameter("fmid"):""%>">
 
 
<input type="hidden" id="page" name="page" value="addmenu_bk"/> 
<input type="hidden" id="fmPicturePath" name="fmPicturePath" />
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
        <td width="542" valign="top"> 
          <label>
            <input name="fmName" type="text" id="fmName" size="58" />
            </label>
             </td>
        <td width="119">&nbsp;</td>
      </tr>
      <tr>
        <td height="54">&nbsp;</td>
        <td valign="top"><strong>รายละเอียดอาหาร ::</strong></td>
        <td valign="top">
          <label>
            <textarea name="fmDetail" cols="48" rows="5" id="fmDetail">
</textarea>
          </label>
               </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td valign="top"><strong>จำนวนพลังงาน ::</strong></td>
        <td valign="top">
          <label>
            <input name="fmCalories" type="text" id="fmCalories" size="58" />
            </label>
          <strong>กิโลแคลอรี</strong>
                  </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="50">&nbsp;</td>
        <td valign="top"><strong>ราคาอาหาร ::</strong></td>
        <td valign="top">
          <label>
            <input name="fmPrice" type="text" id="fmPrice" size="58" />
            </label>
          <strong>บาท          </strong>
                </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="39">&nbsp;</td>
        <td valign="top"><strong>รูปภาพอาหาร ::</strong></td>
        <td valign="top">
          <div id="imgShow"></div>
          <label>
            <input name="file" type="file" id="file" size="58" />
            </label>
                </td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="46"><table width="1026" height="37">
      <tr>
        <td width="369">&nbsp;<input type="hidden" id="mode" name="mode" value="upload"/>
        <input type="hidden" id="fmId" name="fmId" value=""/>
        <input type="hidden" id="fmStatus" name="fmStatus" value="0"/>
        </td>
        <td width="169" align="center" valign="middle"><input type="submit" name="submit" onclick="return validateData();"  value=':: "<%=(request.getParameter("fmid")!=null && request.getParameter("fmid").length()>0)?"แก้ใขรายการอาหาร":"เพิ่มรายการอาหาร" %>" ::' /></td>
        <td width="172" align="center" valign="middle"><input type="button" name="button2" id="button2" value=":: กลับสู่หน้าเมนู ::" onclick="goPage('managemenu_bk')"/></td>
        <td width="296" align="right" valign="middle">&nbsp;</td>
        </tr>
    </table></td>
  </tr>
</table>
<script>
var mode= '<%=request.getParameter("mode")%>';
if(mode!=null && mode.length>0 && mode=='upload'){
	var msg=" คุณต้องการเพิ่มเมนูอีกหรือไม่ ?";
	var isEdit =false;
	var continuePage="addmenu_bk";
	if(fmId!=null && fmId.length>0){
		msg=" คุณต้องการแก้ใขเมนูอีกหรือไม่ ?";
		isEdit = true;
		continuePage=continuePage+"&fmid="+fmId;
	}
	if(confirm(msg)){
		goPage(continuePage); 
	}else{
		goPage("managemenu_bk"); 
	}
}else{
	if(fmId!=null && fmId.length>0){
		// load menu
		var foodMenuDto={fmId:fmId};
		getFoodMenus(foodMenuDto);
	}
}
</script>
</form>
</body>

</html>
