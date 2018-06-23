<%@page import="java.util.*" language="java" pageEncoding="utf-8" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
  <title>junkfood</title>
    <link rel="shortcut icon" href="images/JunkFood.png" type="image/x-icon">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/carousel.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<link href="css/customerservice.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/holder.js"></script>
	<script type="text/javascript" src="js/scrolltopcontrol.js"></script>
	<script type="text/javascript">
	function abc(){	
	
		document.getElementById("a1").innerHTML=""+document.getElementById("content").value+"";
	}
</script>
</head>

<body style="background-color:#3d577a;" onload="abc()">
<jsp:include page="head.jsp"/>
<div style="padding-top:100px;margin-top:30px;height:100%;width:100%;background:url(images/90117_top1.jpg)no-repeat;background-size:100% auto">
	<div style="background-color:#FFFCF4;width:980px;min-height:500px;margin:0 auto;padding:50px;text-align:center">
	<table class="table table-bordered table-striped" style="text-align:center">
									<thead align="center">
										<tr>
											<th style="text-align:center;">管理员</th>
											<th style="text-align:center;">内容</th>
											<th style="text-align:center;"> 更新时间</th>
										</tr>
									</thead>
									<tbody>
								<s:iterator value="#session.newList" id="a">
										<tr>
											<td><s:property value="#a.username"/></td>
											<td><s:property value="#a.content"/></td>
											<td><s:property value="#a.time"/></td>
										</tr>
									</s:iterator>
									</tbody>
								</table>
	<div id="a1"></div>
		</div>
		
</div>

</body>
<%--<body>
	<jsp:include page="head.jsp"/>
	
	<div style="width:100%; height:150px;"></div>
	<div class="container marketing">
      <!-- Three columns of text below the carousel -->
      <div class="row" style="width:100%;">
        <div style="width:90%; margin:0 auto; float:none;">
        <s:iterator value="#session.newList" id="m">
        	
        	<div class="col-lg-4" style="width: 33.3333333%;float:left;margin-top:20px;">
          	<img class="img-circle" src="<s:url value="%{#request.m.path}"/>" style="width:140px;height:140px" alt="Generic placeholder image">
          	<h2><s:property value="#request.m.dishes"/></h2>
          	<p><s:property value="#request.m.synopsis" /></p>
		  	<p ><span style="color:red">￥<s:property value="%{#request.m.price}"/>.00</span></p>
          	<p><a class="btn btn-default" href="MenuAction!myDetail?id=<s:url value="%{#request.m.id}"/>" role="button">查看详细资料&raquo;</a></p>
        	</div><!-- /.col-lg-4 --> 
        	
       </s:iterator >
      
		</div>
      </div><!-- /.row -->

    <br><br><br><br><br><br>


    </div><!-- /.container -->
	
	
	
	
	
	
</body>--%>
</html>