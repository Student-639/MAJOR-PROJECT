<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@page import="com.Decrypt"%>
<%@page import="com.DBConnection"%>
<%@page import="java.io.File"%>
<%@page import="com.BloomFilter"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PHR</title>
</head>
<body>
<%!
byte b[];
%>
<%
String owner = request.getParameter("t1");
String file = request.getParameter("t2");
String secretdata = request.getParameter("t3");
String access = DBConnection.getPolicy(file);
BloomFilter.key = 50; 
String bloom_auth = BloomFilter.encrypt(secretdata);
String bloom = DBConnection.getSecretVerification(owner);
if(bloom_auth.equals(bloom)){
	String user = session.getAttribute("user").toString();
	String temp = file;
	file = getServletContext().getRealPath("/")+"/WEB-INF/user/"+owner+"/"+file;
	byte[] dec = Decrypt.decrypt(file+"/"+temp,file+"/public.txt",file+"/private.txt");
	if(dec != null && access.indexOf(user) != -1){
		DBConnection.consumption(owner,user,temp);
		response.setHeader("Content-Disposition", "attachment;filename=\"" +temp + "\"");
		response.setHeader("Content-Type", "application/octet-stream;");
		java.io.OutputStream os=response.getOutputStream();
		os.write(dec,0,dec.length);
		os.flush();
		os.close();
	}else{
		out.println("U dont have access control");
	}
} else {
	out.println("Secret Challenge Bloom Filter Authentication Failed");
}
%>
</body>
</html>
	
	
	