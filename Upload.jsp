<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.DBConnection"%>
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
	alert("Please upload sharing file");
	formObj.t1.focus();
	return false;
	}
	formObj.actionUpdateData.value="update";
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
            <li><a href="Upload.jsp">Upload & Share File</a></li>
            <li><a href="View.jsp">View Upload Files</a></li>
			<li><a href="VerifyResource.jsp">Verify Resource Consumption</a></li>
			<li><a href="ComputationChart.jsp">Data Upload Chart</a></li>
			<li><a href="Logout.jsp">Logout</a></li>
          </ul>
         </div>
	
</div>

<div id="wrapper">
	<!-- start page -->
	<div id="page">
<form name="f1" method="post" action="Upload" enctype="multipart/form-data" onsubmit="return validate(this);"><br/>
   <div id="content">
			<div class="flower"><center><h1>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Upload File & Share Screen</h1></div>
			<br/>
			<%
			
	String res = request.getParameter("t1");
	if(res != null){
	out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		
		out.println("<center><font size=3 color=red>"+res+"</font></center>");
	}%>
	
			<br/>
					<center>	
						<table align="right" >
			 <tr><td><b>Upload&nbsp;File</b></td><td><input type="file" name="t1" style="font-family: Comic Sans MS" size="20"/></td></tr>
			 <tr><td><b>Access&nbsp;Control</b></td><td><select name="t2" multiple>
         <%
		 String user = session.getAttribute("user").toString().trim();
	Connection con = DBConnection.getCon();
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select username from newuser where username!='"+user+"'");
	while(rs.next()){%>
	<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
	<%}%>
	</select></td></tr>
		  		    
			<tr><td></td><td><input type="submit" value="Upload"></td>
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
