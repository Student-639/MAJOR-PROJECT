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

   <h2><b>View Upload File Data Screen</b></h2>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
			<table border="1" align="center" width="100%">
			<tr><th>Username</th><th>Filename</th><th>Upload Time</th>
			<th>Download</th> <th>Access Control</th>
			<tr>
	<%
	String user = (String)session.getAttribute("user");
	Connection con = DBConnection.getCon();
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select * from filedata where owner='"+user+"'");
	while(rs.next()){
		user = rs.getString(1);
		String file = rs.getString(2);
		String time = rs.getTimestamp(3).toString();
		String access = rs.getString(4);
		%>
	<tr><td><font size="3" color="black"><%=user%></td>
	<td><font size="3" color="black"><%=file%></td>
	<td><font size="3" color="black"><%=time%></td>
	<td><font size="3" color="black"><%=access%></td>
	<td><a href="OwnerDownload.jsp?t1=<%=user%>&t2=<%=file%>"><font size="3" color="black">Click Here</font></a></td>
	<%}%>
	</tr>
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
