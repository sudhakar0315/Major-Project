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
.style2 {font-size: 14px}
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
		<li><a href="usermain.jsp">Home</a></li>
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
          <h2>Search Result  </h2>
          <div class="clr"></div>
         
           
           
        
          <table width="500" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
        <%@ include file="connect.jsp" %>
	<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
		<%
	
    
						String s1,s2,s3,s4;
						int i=0;
						String keyword=request.getParameter("keyword");
						String user=(String)application.getAttribute("user");
       
						try 
						{
							String status1=null;
						   	String status=null;
						   	String query="select * from user where username LIKE '%"+keyword+"%'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while(rs.next()==true)
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								//s8=rs.getString(8);
								status ="request";
								if(s1.equalsIgnoreCase(user)){}
								else
								{
								
									String query7="select * from friends where (requestto='"+user+"' || requestfrom='"+user+"')" ; 
									Statement st7=connection.createStatement();
									ResultSet rs7=st7.executeQuery(query7);
									while(rs7.next())
									{
										String rfrom =rs7.getString(2);
										String rto =rs7.getString(3);
										status1 = rs7.getString(4);
										
										if((!status1.equalsIgnoreCase("Accepted"))&&(rfrom.equalsIgnoreCase(s1)||(rto.equalsIgnoreCase(s1))))
										{
											status="sent";
										}
										else if((status1.equalsIgnoreCase("Accepted"))&&(rfrom.equalsIgnoreCase(s1)||(rto.equalsIgnoreCase(s1))))
										{
											status="Already Friend";
										}
										
									}	
								
					%>
          
			<tr>
					<td width="129" rowspan="3" valign="middle" >
						<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
						 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:100px; height:100px;"  />
			  </a></div>					</td>
		  </tr>
             
             <tr> <td width="105" valign="middle" height="80" style="color:#000000;"><div align="center">Name</div></td>
			 <td width="90" valign="middle" height="80" style="color:#000000;">&nbsp;&nbsp;
               <%out.println(s1);%></td></tr>
				   <tr>
				    <td width="105" valign="middle" height="26" style="color:#000000;"><div align="center">Status</div></td>
              <%
						if(status.equals("Already Friend")){
						%>
              <td  width="90" valign="middle" height="26" style="color:#000000;"align="center"><%=status %>&nbsp;</td>
              <%
						}else if(status.equals("sent")){
						%>
              <td  width="57" valign="middle" height="26" style="color:#000000;"align="center"><%=status %>&nbsp;</td>
              <%
						}else{
						
						%>
              <td  width="107" valign="middle" height="26" style="color:#000000;"align="center"><a href="updatestatus.jsp?username=<%=s1%>&id=<%=i%>"><%=status %>&nbsp;</a></td>
              <%}
						%>
            </tr>
            <%
					
						}
					
				
 	    					
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
						
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
				
						String sql="insert into friend_search(username,keyword,date)values('"+user+"','"+keyword+"','"+dt+"')";
						Statement st1=connection.createStatement();
						st1.executeUpdate(sql);
							
					}
					
					connection.close();
					//out.print("There is no Friends with " +keyword);
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
          <p align="right" class="style2"><a href="SearchFriend.jsp">Back</a></p>
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
