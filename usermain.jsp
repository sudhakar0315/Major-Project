<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Main</title>
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
          <h2>Welcome <%=user%>  </h2>
          <div class="clr"></div>
         
           
           
        
          <p align="justify"><strong>A phrase is a natural, meaningful, and essential  semantic unit. In topic modeling, visualizing phrases for individual topics  isan effective way to explore and understand unstructured text corpora.  Usually, the process of topical phrase mining is twofold: phrase mining and  topic modeling. For phrase mining, existing approaches often suffer from order  sensitive and inappropriate segmentation problems, which make them often  extract inferior quality phrases. For topic modeling, traditional topic models  do not fully consider the constraints induced by phrases, which may weaken the  cohesion. Moreover, existing approaches often suffer from losing domain  terminologies since they neglect the impact of domain-level topical  distribution. In this paper, we propose an efficient method for high quality  and cohesive topical phrase mining. A high quality phrase should satisfy  frequency, phraseness, completeness, and appropriateness criteria. In our  framework, we integrate quality guaranteed phrase mining method, a novel topic  model incorporating the constraint of phrases, and a novel document clustering  method into an iterative framework to improve both phrase quality and topical  cohesion. We also describe efficient algorithmic designs to execute these  methods efficiently.</strong></p>
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
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
		   <li><a href="user_profile.jsp">View My Profile </a></li>
            <li><a href="SearchFriend.jsp">Search Friends </a></li>
            <li><a href="friend_request.jsp">View Friend Requests </a></li>
            <li><a href="searchmovies.jsp">Search Posts</a></li>
            <li><a href="mysearchhistory.jsp">My Search History </a></li>
            <li><a href="viewrecommends.jsp">View Recommands </a></li>
			<li><a href="topkposts.jsp">Search Top 'K' Posts </a></li>
			<li><a href="topkdata.jsp">Search Top 'K' Data </a></li>
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