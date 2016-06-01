<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/common.css">
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript">
	$(function(){
						$(".thumbs a").click(
								function(){
								var largePath=$(this).attr("href");
								var largeAlt=$(this).attr("title");
								$("#largeImg").attr({
									src:largePath,
									alt:largeAlt
									});
								return false;
							});
		});
</script>
<title>Insert title here</title>
</head>
<body>
<h2>图片预览</h2>
<p><img id="largeImg" src="images/img1-lg.jpg" alt="Large Image"/></p>
<p class="thumbs">
    	<a href="images/img2-lg.jpg" title="Image2"><img src="images/img2-thumb.jpg"></a>
    	<a href="images/img3-lg.jpg" title="Image3"><img src="images/img3-thumb.jpg"></a>
    	<a href="images/img4-lg.jpg" title="Image4"><img src="images/img4-thumb.jpg"></a>
    	<a href="images/img5-lg.jpg" title="Image5"><img src="images/img5-thumb.jpg"></a>
    	<a href="images/img6-lg.jpg" title="Image6"><img src="images/img6-thumb.jpg"></a>
    </p>
</body>
</html>