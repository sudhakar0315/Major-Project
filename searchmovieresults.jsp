<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>List of searched movies</title>
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
.style7 {font-size: 16px}
.style8 {color: #FF0000; font-size: 16px; }
.style9 {font-size: 24px}
.style10 {
	color: #666666;
	font-size: 12px;
	font-weight: bold;
}
.style11 {color: #2c83b0}
.style12 {font-size: 12px}
.style13 {color: #666666}
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
		  <h1 class="style9">Search Results: </h1>
		  <div class="clr"></div>
		      <div align="left"></div>
		      <div align="left"></div>
			
		      <table width="370" border="0" align="left"  cellpadding="0" cellspacing="0" >
                <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
                <%@ page import="java.sql.*"%>
                <%@ include file="connect.jsp" %>
                <%@ page import="java.util.Date" %>
                <%
			String user=(String)application.getAttribute("user");
		  String keyword=request.getParameter("keyword");
		  application.setAttribute("keyword",keyword);
		  int count=0,incomplete=0;
		  try
		 {
				SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
				SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
	
				Date now = new Date();
				String strDate = sdfDate.format(now);
				String strTime = sdfTime.format(now);
				String dt = strDate + "   " + strTime;
						
	String sql="select * from movies where !(category like '%"+keyword+"%' || name like '%"+keyword+"%' || description like '%"+keyword+"%')";
		 Statement st=connection.createStatement();
		 ResultSet rs=st.executeQuery(sql);
		 while(rs.next())
		 {
		  int i=rs.getInt(1);
		 String category=rs.getString(2);
		 String name=rs.getString(3);
		 String des=rs.getString(4);
		 int score=rs.getInt(5);
		 incomplete=incomplete+1;
		 		
				String sql1="insert into incomplete(category,name,des,score,dt)values('"+category+"','"+name+"','"+des+"','"+score+"','"+dt+"')";
				Statement st1=connection.createStatement();
				st1.executeUpdate(sql1);
		}
	
				
		 String sql2="select * from movies where (category like '%"+keyword+"%' || name like '%"+keyword+"%' || description like '%"+keyword+"%')";;		 		  Statement st2=connection.createStatement();
		 ResultSet rs2=st2.executeQuery(sql2);
		 while(rs2.next())
		 {
		 int i=rs2.getInt(1);
		 String category=rs2.getString(2);
		 String name=rs2.getString(3);
		 String des=rs2.getString(4);
		 int score=rs2.getInt(5);
		 count=count+1;
		 		
					String sql3="insert into complete(category,name,des,score,dt)values('"+category+"','"+name+"','"+des+"','"+score+"','"+dt+"')";
				Statement st3=connection.createStatement();
				st3.executeUpdate(sql3);
					
				%>
                <tr >
                  <td width="135" rowspan="5" ><div class="style7" style="margin:10px 13px 10px 13px;" >
                      <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&name=<%=name%>&type=<%="admin"%>" style="width:100px; height:100px;"  />
                </div></td>
                </tr>
                <tr>
                  <td  width="161" valign="middle" height="30" style="color: #666666;"><div align="left" class="style14 style7 style8 style10" style="margin-left:20px;">Category</div></td>
                  <td  width="74" valign="middle" height="30"><div align="left" class="style11" style="margin-left:20px;">
                      <%out.println(category);%>
                  </div></td>
                </tr>
                <tr>
                  <td  width="161" valign="middle" height="30" style="color: #666666;"><div align="left" class="style12 style8 style14 style13" style="margin-left:20px;"><strong>Movie News Name </strong></div></td>
                  <td  width="74" valign="middle" height="30"><div align="left" class="style11" style="margin-left:20px;">
                      <%out.println(name);%>
                  </div></td>
                </tr>
                <tr>
                  <td  width="161" align="left" valign="middle" height="30" style="color: #666666;"><div align="left" class="style12 style8 style14 style13" style="margin-left:20px;"><strong>Score</strong></div></td>
                  <td  width="74" align="left" valign="middle" height="30"><div align="left" class="style11" style="margin-left:20px;">
                      <%out.println(score);%>
                  </div></td>
                </tr>
                <tr>
                  <td align="left" valign="middle" height="28" style="color: #666666;"><div align="left " class="style12 style8 style14 style13" style="margin-left:20px;"><strong>Rating</strong></div></td>
                  <td align="left" valign="middle" height="28"><div align="left" class="style11" style="margin-left:20px;">
                      <%
							if(score>0 && score<= 3){%>
                      <img src="images/1.png" style="width:120px; height:20px;" />
                      <%
							}
							else if(score>3 && score<= 6){%>
                      <img src="images/2.png" style="width:120px; height:20px;" />
                      <%
							}
							else if(score>6 && score<= 12){%>
                      <img src="images/3.png" style="width:120px; height:20px;" />
                      <%
							}
							else if(score>12 && score<= 24){%>
                      <img src="images/4.png" style="width:120px; height:20px;" />
                      <%
							}
							else if(score>24){%>
                      <img src="images/5.png" style="width:120px; height:20px;" />
                      <%
							}else{
							%>
                      <img src="images/0.png" style="width:120px; height:20px;" />
                      <%
							}
							%>
                  </div></td>
                </tr>
                <tr>
                  <td><a class="#" id="img1" href="viewmovie.jsp?mname=<%=name%>" > Click Here to View </a></td>
				    <form action="recommend.jsp?mname=<%=name%>" method="post">
				 <td> <select name="recommendto" >
                    <option>select</option>
                    <%
						int id=0;
						String fname=null;
						Statement st4=connection.createStatement();
						String sql4 = "select * from user where username !='"+user+"'";
						ResultSet rs4 = st4.executeQuery(sql4);
						while(rs4.next())
						{
						id = rs4.getInt(1);
						String username = rs4.getString(2);
						
						
						Statement st5=connection.createStatement();
						String sql5 = "select * from friends where (requestfrom ='"+username+"' && requestto='"+user+"')||(requestfrom ='"+user+"' && requestto='"+username+"') && status ='Accepted' ";
						ResultSet rs5 = st5.executeQuery(sql5);
						while(rs5.next())
						{
						
						if(rs5.getString(2).equals(user))
						{
							fname = rs5.getString(3);
						}else
						{
							fname = rs5.getString(2);
						}
						%>
                    <option> <%=fname%></option>
                    <%
						}}
						%>
                  </select></td>
                  <td><input name="submit" type="submit" value="Recommend" /></td></form>
                </tr>
                <%		
				
						PreparedStatement ps=connection.prepareStatement("insert into search_history(username,keyword,m_name,dt) values(?,?,?,?)");
						ps.setString(1,user);
						ps.setString(2,keyword);	
						ps.setString(3,name);
						ps.setString(4,dt);
						int x=ps.executeUpdate();
						
						
					
		 
		}
		  %>
                <h2><span class="style8">Complete dataset:</span><%=count%></h2>
		        <h2><span class="style8">InComplete dataset:</span><%=incomplete%></h2>
		        <%
				String sql6="insert into dataset(keyword,complete,incomplete,dt)values('"+keyword+"','"+count+"','"+incomplete+"','"+dt+"')";
				Statement st6=connection.createStatement();
				st6.executeUpdate(sql6);
		   connection.close();
		   }
		  
		   catch(Exception e)
		    {
            out.println(e.getMessage());
          }%>
                <p></p>
          </table>
		  
		      </p>
<div class="clr">
		              <p>&nbsp;</p>
            <p align="right">&nbsp;</p>
		              <p align="right"><a href="searchmovies.jsp" class="style5">Back</a></p>
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
          <ul class="sb_menu">
		  
			<li><a href="#">Search Movie News </a></li>
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

