<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<html lang="en">
	<head>
		<link rel="shortcut icon" href="img/JunkFood.png" type="image/x-icon">
        <title>JunkFood 后台管理</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
		<link rel="stylesheet" href="css/uniform.css" />
		<link rel="stylesheet" href="css/select2.css" />		
		<link rel="stylesheet" href="css/unicorn.main.css" />
		<link rel="stylesheet" href="css/unicorn.grey.css" class="skin-color" />	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
	<body>
		<div style="background-color:#2220; width:100%; height:100%;">
		
		<jsp:include page="optionsBar.jsp"/>
		
		<div id="content" style="background-color:#FFFFFF; height:87%;">
			<div id="content-header">
				<div style="width:100%; height:100%; background-color:#FFFFFF;">
					<h1>用户</h1>
				</div>
				
				<%-- <div class="btn-group">
					<a class="btn btn-large tip-bottom" title="Manage Files"><i class="icon-file"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Users"><i class="icon-user"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a>
					<a class="btn btn-large tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a>
				</div> --%>
			</div>
			<div id="breadcrumb" style="width:100%; background-color:#FFFFFF;">
				<a href="AdministratorAction!myLogin" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> 主页</a>
		
				<a href="#" class="current">用户列表</a>
			</div>
			<div class="widget-box" style="background-color:#FFFFFF;">
							<div class="widget-title">
								<div style="width:100%; height:100%; background-color:#FFFFFF;">
									<span class="icon">
									<i class="icon-th"></i>
									</span>
									<h5>用户列表</h5>
								</div>
								
							</div>
							<div class="widget-content nopadding">
								<table class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>账号</th>
											<th>密码</th>
											<th>联系电话</th>
											<th>地址</th>
											<th>email</th>
											<th>金额</th>
											<th>级别</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
								<s:iterator value="#session.clientShow" id="c">
										<tr>
											<td><s:property value="#c.username"/></td>
											<td><s:property value="#c.password"/></td>
											<td><s:property value="#c.telephone"/></td>
											<td><s:property value="#c.address"/></td>
											<td><s:property value="#c.email"/></td>
											<td><s:property value="#c.money"/></td>
											<td><s:property value="#c.level"/></td>
											<td><a class="btn btn-primary" href="ClientAction!myEdit?id=<s:property value="#c.id"/>"><i class="icon-pencil icon-white"></i> 修改</a>
									<a class="btn btn-danger"  href="javascript:if(confirm('确实要删除该菜单吗?'))location='ClientAction!myDel?id=<s:property value="#c.id"/>'"><i class="icon-remove icon-white"></i> 删除</a></td>
										</tr>
									</s:iterator>
									</tbody>
								</table>							
							</div>
						</div>
		</div>
		
		</div>
            
            <script src="js/jquery.min.js"></script>
            <script src="js/jquery.ui.custom.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/jquery.uniform.js"></script>
            <script src="js/select2.min.js"></script>
            <script src="js/jquery.validate.js"></script>
            <script src="js/unicorn.js"></script>
            <script src="js/unicorn.form_validation.js"></script>
	</body>
</html>
