<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>all friends</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style5 {
	font-size: 14px;
	color: #660099;
}
.style8 {
	font-size: 14px;
	color: #6600FF;
}
.style9 {font-size: 18px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1">An Efficient Method for High Quality and Cohesive Topical Phrase Mining</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="#">User</a></li>
         
          <li><a href="adminlogin.jsp"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
		<%String user=(String)application.getAttribute("user");%>
		 <h2 class="style9">All Friends List  </h2>
          <div class="clr"></div>
		      <div align="left"></div>
		      <div align="left"></div>
		     
                <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
                <%@ page import="java.sql.*"%>
                <%@ include file="connect.jsp" %>
                <%@ page import="java.util.Date" %>
		  <table width="552" border="1.0">
                        <tr>
						 <td width="100"><span class="style8">Request From </span></td>
                          <td width="100"><span class="style8">Request To </span></td>
                          <td width="100"><span class="style8">Status</span></td>
                        </tr>
			  <%
		try 
	{
      		
           String query="select * FROM Friends"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			
			String s1=rs.getString(2);
			String s2=rs.getString(3);
			String s3=rs.getString(4);
			
	
%>
				
					 
                        <tr>
                          <td width="100"><%out.print(s1);%></td>
                          <td width="100"><%out.print(s2);%></td>
                          <td width="150"><%out.print(s3);%></td>
                        </tr>
                     
				
			<%

	   }
%> </table>
		  <%
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
		  
		      </p>
<div class="clr">
		              <p>&nbsp;</p>
            <p align="right">&nbsp;</p>
		              <p align="right"><a href="adminmain.jsp" class="style5">Back</a></p>
          </div>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
         
          <div class="clr"></div>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search Here" onblur="if(this.value=='') this.value='Search Here'" onfocus="if(this.value =='Search Here' ) this.value=''" type="text" />
			
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
    </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu"><li><a href="userlogin.jsp">Logout </a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center><a href='http://all-free-download.com/free-website-templates/'>ee website templates</a></div>
</body>
</html>

