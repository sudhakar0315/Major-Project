<title>Data Lineage in Malicious Environments</title>

<%@ include file="connect.jsp" %>

<%
   	String type=request.getParameter("type");
	
	application.setAttribute("type",type);
    try{
         
    	
    	
		if(type.equalsIgnoreCase("user"))
		{
		
			String username=request.getParameter("userid");      
         	String Password=request.getParameter("pass");
			
			application.setAttribute("user",username);
			
			String sql="SELECT * FROM user where username='"+username+"' and password='"+Password+"' and status='authorized'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next()){
				
				response.sendRedirect("usermain.jsp");
			}
			String sql1="SELECT * FROM user where username='"+username+"' and password='"+Password+"' and status='waiting'";
			Statement stmt1 = connection.createStatement();
			ResultSet rs1 =stmt1.executeQuery(sql1);
			
			if(rs1.next()){
			out.print("Sorry You are not authorized user");
			%><br /><a href="index.html">Click Here to Home</a><%
			}
			else
			{
				response.sendRedirect("wronglogin.jsp");
			}
		}
		
		else if(type.equalsIgnoreCase("admin"))
		{
			
			String username=request.getParameter("userid");      
         	String Password=request.getParameter("pass");
			
			application.setAttribute("admin",username);
			
			String sql="SELECT * FROM admin where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
				
				response.sendRedirect("adminmain.jsp");
				}
				else
				{
				response.sendRedirect("wronglogin.jsp");
			}	}
			
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>