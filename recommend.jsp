<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
<title> User Information adding page</title>

<%
	try{
		String mname = request.getParameter("mname");
		String recommendto = request.getParameter("recommendto");
		String user=(String)application.getAttribute("user");
		String keyword=(String)application.getAttribute("keyword");
		
		
		
		String sql="select * from recommends where m_name='"+mname+"' && r_to='"+recommendto+"'";
       	Statement stmt = connection.createStatement();
	   	ResultSet rs=stmt.executeQuery(sql);
		if(rs.next()){
		%><p>Already Recommended </p><br><br>
		<a href="searchmovieresults.jsp?keyword=<%=keyword%>">Back</a><%
		
		}
		else{
				SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
				SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

				Date now = new Date();

				String strDate = sdfDate.format(now);
				String strTime = sdfTime.format(now);
				String dt = strDate + "   " + strTime;
						
 				String sql2="insert into recommends(r_from,r_to,m_name,dt)values('"+user+"','"+recommendto+"','"+mname+"','"+dt+"')";
				Statement st2=connection.createStatement();
				st2.executeUpdate(sql2);
				%><p>Recommended  Successfully</p><br><br>
		<a href="searchmovieresults.jsp?keyword=<%=keyword%>">Back</a><%
		}
		
	connection.close();
	}catch(Exception e)
	{
		out.print(e);
	}
%>


			
			
			
			
			
			
			
			
			
			
			
			
			
		