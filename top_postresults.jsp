<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>top searched posts</title>
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
.style2 {font-size: 14px}
.style3 {
	font-size: 24px;
	color: #0066FF;
}
.style4 {
	color: #339933;
	font-weight: bold;
}
.style7 {color: #339933; font-size: 14px; font-weight: bold; }
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
		 <li ><a href="usermain.jsp">Home</a></li>
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
          
		  <p class="style3"> Top Searched Keywords </p>
		 
		  <table width="500" border="1.0">
                  <tr>
                    <td width="161"><span class="style2 style4">Username</span></td>
                    <td width="158"><span class="style7">Keyword</span></td>
                    <td width="164"><span class="style7">Count</span></td>
                  </tr>
				   <%@ include file="connect.jsp" %>
<%
   	try 
	{
 		String k= request.getParameter("k");	
		String user=(String)application.getAttribute("user");
	
            	  String q2="select username,keyword,count(distinct dt) from search_history group by keyword order by count(distinct dt) desc  LIMIT 0,"+k+" "; 
                  Statement st8=connection.createStatement();
                  ResultSet rs8=st8.executeQuery(q2);
       	 while ( rs8.next() )
       	   {
       	
       		
       	String	s1=rs8.getString(1);
       	String	s2=rs8.getString(2);
    	String	s3=rs8.getString(3);
    	            
       	%>
                  <tr>
                    <td><%out.print(s1);%></td>
                    <td><%out.print(s2);%></td>
                    <td><%out.print(s3);%></td>
                  </tr>
               
				<p>
			      <%}%> 
	      </table>
				  <%
				   connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
		     <p align="right" class="style2"><a href="topkposts.jsp">Back</a></p>
		  
        
          <div class="clr"></div>
         
           
           
        
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
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
          <ul class="sb_menu">
		  
		<li><a href="usermain.jsp">Home</a></li>
            <li><a href="userlogin.jsp">Logout </a></li>
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

