<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page
	import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream,java.math.*"%>
<%
try
{
String keys = "ef50a0ef2c3e3a5f";
			byte[] keyValue = keys.getBytes();
			Key key = new SecretKeySpec(keyValue, "AES");
			Cipher c = Cipher.getInstance("AES");
			c.init(Cipher.DECRYPT_MODE, key);
ResultSet rs=connection.createStatement().executeQuery("select * from ilq_post");
ResultSet rs1=connection.createStatement().executeQuery("select * from ilq_post");
%>
<html>
<head>

<title>JSChart</title>

<script type="text/javascript" src="sources/jscharts.js"></script>

</head>
<body>

<div id="graph">Loading...</div>


<script type="text/javascript">
	var myData=new Array();
var j=0;
var colors =[];
<%
	int i=0;
	
		Random random=new Random();
	String base="0123456789ABCDEF";
	while(rs.next())
	{
	String s1=new String(Base64.decode((rs.getString(3)).getBytes()));
	double s3=(int)rs.getInt(13);
	String s2=rs.getString(4);
	
	%>
	
	myData["<%=i%>"]=["<%= s1%>",<%= s3%>];
colors["<%=i%>"]="#<%= base.charAt(random.nextInt(base.length()))%><%= base.charAt(random.nextInt(base.length()))%><%= base.charAt(random.nextInt(base.length()))%><%= base.charAt(random.nextInt(base.length()))%><%= base.charAt(random.nextInt(base.length()))%><%= base.charAt(random.nextInt(base.length()))%>";

	<%
	i++;}
	%>
	
	var myChart = new JSChart('graph', 'pie');
	myChart.setDataArray(myData);
	myChart.colorize(colors);
	myChart.setSize(780, 500);
	myChart.setTitle('Results');
	myChart.setTitleFontFamily('Times New Roman');
	myChart.setTitleFontSize(14);
	myChart.setTitleColor('#ff7800');
	myChart.setPieRadius(190);
	myChart.setPieValuesColor('#ff7800');

	myChart.setPieValuesFontSize(12);
	myChart.setPiePosition(250, 250);
	myChart.setShowXValues(false);
	
	<%
	

	
	while(rs1.next())
	{
	String s11=new String(Base64.decode((rs1.getString(3)).getBytes()));
	double s31=(int)rs1.getDouble(13);
	String s22=rs1.getString(4);
	
	%>
	myChart.setLegend( colors[j],"<%= s11 %>" );

j++;
	<%
	}
	%>

	//myChart.setLegend(myData1);
	//myChart.setLegend('#99CDFB', 'Papers where authors found');
	//myChart.setLegend('#3366FB', 'Papers which cite from other articles');
	//myChart.setLegend('#0000FA', 'Papers which cite from news');
	//myChart.setLegend('#F8CC00', 'Papers which lack crucial');
	//myChart.setLegend('#F89900', 'Papers with different conclusion');
	//myChart.setLegend('#F76600', 'Papers with useful information');
	myChart.setLegendShow(true);
	myChart.setLegendFontFamily('Times New Roman');
	myChart.setLegendFontSize(14);
	myChart.setLegendColor('#FF0000');
	myChart.setLegendPosition(550, 120);
	myChart.setPieAngle(30);
	myChart.set3D(true);
	myChart.draw();
	
</script>

</body>
</html><%
}
catch(Exception e)
{
e.printStackTrace();
}
%>