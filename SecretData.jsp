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
	if(formObj.t3.value.length==0)
	{
	alert("Please Enter secret validation key");
	formObj.t3.focus();
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
            <li><a href="UserView.jsp">Download Share Files</a></li>
			<li><a href="Logout.jsp">Logout</a></li>
           </ul>
       </div>
	
</div>

<div id="wrapper">
	<!-- start page -->
	<div id="page">
<form name="f1" method="post" action="SecretValidation.jsp" onsubmit="return validate(this);"><br/>
  <div id="content">
			<div class="flower"><center><h1>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Secret Key Verification Screen</h1></div>
			<br/>
			<%
			
	String res = request.getParameter("t1");
	if(res != null){
	out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		
		out.println("<center><font size=3 color=red>"+res+"</font></center>");
	}%>
	
			<br/>
						
						<table align="right" >
			 <tr><td><b>Owner&nbsp;Name</b></td><td><input type="text" name="t1" style="font-family: Comic Sans MS" size="20" value="<%=request.getParameter("t11")%>" readonly/></td></tr>
         
		  <tr><td><b>File&nbsp;Name</b></td><td><input type="text" name="t2" style="font-family: Comic Sans MS" size="20" value="<%=request.getParameter("t2")%>" readonly/></td></tr>

		  <tr><td><b>Secret&nbsp;Data</b></td><td><input type="text" name="t3" style="font-family: Comic Sans MS" size=20/></td></tr>

		   
		           
			<tr><td></td><td><input type="submit" value="Cloud User Verification"></td>
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


