<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>all incomplete movie news</title>
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
.style2 {color: #E6A4A3}
.style3 {color: #FF3333}
.style4 {
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
        <h1 class="style2">An Efficient Method for High Quality and Cohesive Topical Phrase Mining</h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="#">Publisher</a></li>
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
          <h2 class="title">All Incomplete Movie News </h2>
          <p class="title">&nbsp;</p>
         <table width="565" border="1" >
                 
					<%@ include file="connect.jsp" %>
					<%
					String s1,s2,s3,s4,s5,s6;
						int i=0;
					try{
					
							String sql="select * from movies";
							Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(sql);
					   		while ( rs.next())
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								int score=rs.getInt(5);
								if(score==0){
								
					%>
                    <tr >
                  <td width="135" height="150" rowspan="6" ><div class="style7" style="margin:10px 13px 10px 13px;" >
                      <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="admin"%>" style="width:120px; height:120px;"  />
                  </div></td>
                </tr>
                <tr>
                  <td  width="161" valign="middle" height="30" style="color: #666666;"><div align="left" class="style3 style10 style8 style7 style14" style="margin-left:20px;"><strong>Category</strong></div></td>
                  <td  width="74" valign="middle" height="30"><div align="left" class="style11" style="margin-left:20px;">
                      <%out.println(s1);%>
                  </div></td>
                </tr>
                <tr>
                  <td  width="161" valign="middle" height="30" style="color: #666666;"><div align="left" class="style12 style8 style14 style13 style3" style="margin-left:20px;"><strong>Movie News Name </strong></div></td>
                  <td  width="74" valign="middle" height="30"><div align="left" class="style11" style="margin-left:20px;">
                      <%out.println(s2);%>
                  </div></td>
                </tr>
				<tr>
                  <td  width="161" valign="middle" height="30" style="color: #666666;"><div align="left" class="style12 style8 style14 style13 style3" style="margin-left:20px;"><strong>Description </strong></div></td>
                  <td  width="74" valign="middle" height="30"><div align="left" class="style11" style="margin-left:20px;">
                      <%out.println(s3);%>
                  </div></td>
                </tr>
                <tr>
                  <td  width="161" align="left" valign="middle" height="30" style="color: #666666;"><div align="left" class="style12 style8 style14 style13 style3" style="margin-left:20px;"><strong>Score</strong></div></td>
                  <td  width="74" align="left" valign="middle" height="30"><div align="left" class="style11" style="margin-left:20px;">
                      <%out.println(score);%>
                  </div></td>
                </tr>
                <tr>
                  <td align="left" valign="middle" height="30" style="color: #666666;"><div align="left " class="style12 style8 style14 style13 style3" style="margin-left:20px;"><strong>Rating</strong></div></td>
                  <td align="left" valign="middle" height="30"><div align="left" class="style11" style="margin-left:20px;">
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
					<%}}
					
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
				<p>&nbsp;</p>
				<p align="right" class="style4"><a href="adminmain.jsp">Back</a></p>
				<p class="title">&nbsp;</p>
				<div class="clr"></div>
         
           
          
		  
		  
        
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
         
          <div class="clr"></div>
          <div class="img"></div>
          <div class="post_content">
            <p align="justify">&nbsp;</p>
            <p class="spec">&nbsp;</p>
          </div>
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
		  
		     <li><a href="#">Home</a></li>
	       
		   <li><a href="adminlogin.jsp">Logout</a></li>
		   <li></li>
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

