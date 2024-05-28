<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search results and sending Request</title>
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
.style2 {
	font-size: 14px;
	color: #660099;
}
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
          <h2>Friend Requests </h2>
          <div class="clr"></div>
         
           
           
        
          <table width="500" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
        <%@ include file="connect.jsp" %>
        <%
						
					String user=(String)application.getAttribute("user");
						
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{
							String query="select * from friends where (requestto='"+user+"')"; 	   					
							Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next())
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
							
							
							
								
					%>
      
        <tr>
          <td  width="176" valign="middle" height="125" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7" style="margin-left:20px;"> <strong>Name</strong></div></td>
          <td  width="176" valign="middle" height="125" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7" style="margin-left:20px;"><%out.println(s1);%> </div></td>
        </tr>
        
        <tr>
         <td align="left" valign="middle" height="38" style="color: #2c83b0;"><div align="left " class="style3 style4 style14 style7" style="margin-left:20px;">Status</div></td>
			  <%
			  if(s3.equalsIgnoreCase("waiting"))
			  {%>
			  	 <td align="left" valign="middle" height="38"><div align="left" class="style11" style="margin-left:20px;">
                       <a href="updaterequest.jsp?id=<%=i%>">waiting</a>
                      </div></td>
					  <%
					  }else
					  {
					  %><td  width="182" align="left" valign="middle" height="37"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s3);}%></div></td>
        </tr>
        
        <%				}     		
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
          <p>&nbsp;</p>
          <p align="right" class="style2"><a href="usermain.jsp">Back</a></p>
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
