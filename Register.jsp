<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Combine Owner & Cloud</title>
<meta name="keywords" content="" />
<meta name="Premium Series" content="" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
<script language="javascript">
	function validate(formObj)
	{
	if(formObj.t1.value.length==0)
	{
	alert("Please Enter Username");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t2.value.length==0)
	{
	alert("Please Enter Password");
	formObj.t2.focus();
	return false;
	}
	if(formObj.t4.value.length==0)
	{
	alert("Please Enter Contact No");
	formObj.t4.focus();
	return false;
	}
	if(isNaN(formObj.t4.value)){
		alert("Contact no  must be numeric");
		formObj.t4.focus();
		return false;
	}
	if(formObj.t4.value.length != 10){
		alert("Contact number must be 10 digits long");
		formObj.t4.focus();
		return false;
	}
	if(formObj.t5.value.length==0)
	{
	alert("Please Enter Secret Challenge Key");
	formObj.t5.focus();
	return false;
	}
	if(formObj.t6.value.length==0)
	{
	alert("Please Enter Address");
	formObj.t6.focus();
	return false;
	}
	return true;
	}
	</script>
</head>
<body>
<!-- start header -->
<div id="header">
	<div id="logo">
		<h1><span><center>Combining Data Owner-side and Cloud-side Access
Control for Encrypted Cloud Storage

</center></span></h1>
		
	</div>
	<div id="menu">
		<ul id="main">
			<li class="current_page_item"><a href="index.jsp">Home</a></li><td></td>
			<li><a href="Owner.jsp">Data Owner</a></li><td></td>
			<li><a href="User.jsp">Data User</a></li><td></td>
			<li><a href="Register.jsp">New User (Register Here)</a></li><td></td>
			<td></td>
			
     
		</ul>
       </div>
	
</div>

<div id="wrapper">
	<!-- start page -->
	<div id="page">
<form name="f1" method="post" action="Register" onsubmit="return validate(this);"><br/>
  <div id="content">
			<div class="flower"><center><h1>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			User Registeration Screen</h1></div>
			<br/>
			<%
			
	String res = request.getParameter("t1");
	if(res != null){
	out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		
		out.println("<center><font size=3 color=red>"+res+"</font></center>");
	}%>
	
			<br/>
						
						<table align="right" >
			 <tr><td><b>Username</b></td><td><input type="text" name="t1" style="font-family: Comic Sans MS" size=20/></td></tr>
         
		  <tr><td><b>Password</b></td><td><input type="password" name="t2" style="font-family: Comic Sans MS" size=20/></td></tr>

		   <tr><td><b>Usertype</b></td><td><select name="t3" style="font-family: Comic Sans MS">
		   <option value="Owner">Owner</option>
		   <option value="User">User</option>
		   </select>
		   </td></tr>

		   <tr><td><b>Contact&nbsp;No</b></td><td><input type="text" name="t4" style="font-family: Comic Sans MS" size=20/></td></tr>

		   <tr><td><b>Secret&nbsp;Challenge</b></td><td><input type="text" name="t5" style="font-family: Comic Sans MS" size=20/></td></tr>

		   <tr><td><b>Address</b></td><td><textarea name="t6" style="font-family: Comic Sans MS" rows="6" cols="20"></textarea></td></tr>

		           
			<tr><td></td><td><input type="submit" value="Register"></td>
			</table>
</center><br /><div class="post">
				
				<div class="entry">
					
				</div>
			</div>
		</div>
		<!-- end content -->
		<!-- start sidebars -->
		
		<!-- end sidebars -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end page -->
</div>
</body>
</html>


