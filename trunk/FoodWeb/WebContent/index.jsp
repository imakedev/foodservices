<%@ page contentType="text/html;  charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Dojo Date Picker Demo</title>
 <script src="<%= request.getContextPath() %>/js/jquery.min.js"></script>
 <script src="<%= request.getContextPath() %>/js/jquery-ui.min.js"></script>
  <link type="text/css" href="<%= request.getContextPath() %>/css/flick/jquery-ui-1.8.9.custom.css" rel="stylesheet" />
 <script>
	
	</script>



<div class="demo">

<p>Date: <input id="datepicker" type="text" readonly="readonly"></p>

</div><!-- End demo -->



<div style="display: none;" class="demo-description">
<p>The datepicker is tied to a standard form input field.  Focus on the input (click, or use the tab key) to open an interactive calendar in a small overlay.  Choose a date, click elsewhere on the page (blur the input), or hit the Esc key to close. If a date is chosen, feedback is shown as the input's value.</p>
</div><!-- End demo-description -->
<script>
 $(document).ready(function(){
	 $(function() {
			$( "#datepicker" ).datepicker();
		});
 });
	</script>
</html>
