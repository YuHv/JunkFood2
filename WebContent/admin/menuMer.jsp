<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<link rel="shortcut icon" href="img/JunkFood.png" type="image/x-icon">
        <title>JunkFood 后台管理</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="css/colorpicker.css" />
        <link rel="stylesheet" href="css/datepicker.css" />
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
					<h1>菜单修改</h1>
				</div>
				
				<%-- <div class="btn-group">
					<a class="btn btn-large tip-bottom" title="Manage Files"><i class="icon-file"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Users"><i class="icon-user"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a>
					<a class="btn btn-large tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a>
				</div> --%>
			</div>
			<div id="breadcrumb" style="width:100%;  background-color:#FFFFFF;">
				<a href="AdministratorAction!myLogin" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> 主页</a>
				<a href="MenuAction!menuShow" >菜单列表</a>
				<a href="menuMer.jsp" class="current">菜单编辑</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<div style="width:100%; height:100%; background-color:#FFFFFF;">
								<span class="icon">
									<i class="icon-align-justify"></i>									
								</span>
								<h5>菜单修改</h5>
								</div>
							</div>
							<div class="widget-content nopadding">
								<form action="MenuAction!mySave" method="post"  enctype="multipart/form-data"  class="form-horizontal" >
								<s:iterator value="#session.menuMer" id="m">
									<div class="control-group">
										<label class="control-label">菜单名</label>
										<div class="controls">
											<input type="text" value="${request.m.dishes}" name="menu.dishes"/>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">价格</label>
										<div class="controls">
											<input type="text" value="${request.m.price}" name="menu.price"/>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">简介</label>
										<div class="controls">
											<input type="text" value="${request.m.synopsis }" name="menu.synopsis" />
											
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">图片</label>
										<div class="controls">
											<img src="../${request.m.path }"  width="80"/>
											<s:file name="file" label="图片"></s:file><br><br>
											<span class="help-block">图片格式为  image/bmp,image/png,image/gif,image/jpeg,image/jpg 大小为102400</span>
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">销售总数</label>
										<div class="controls">
											<input type="text" value="${request.m.sum }"placeholder="This is a placeholder..." name="menu.sum"/>
										</div>
									</div>
									<input type="hidden" value="${request.m.id }" name="menu.id"/>
									<input type="hidden" value="${request.m.path }" name="menu.path"/>
									<input type="hidden" value="${request.m.status }" name="menu.status"/>
									<input type="hidden" value="${request.m.launchtime }" name="menu.launchtime"/>
									</s:iterator>
									<div class="form-actions">
										<button type="submit" class="btn btn-primary">保存</button>
									</div>
								</form>
							</div>
						</div>						
					</div>
				</div>
				
			</div>
		</div>
		
		</div>
            
            <script src="js/jquery.min.js"></script>
            <script src="js/jquery.ui.custom.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/bootstrap-colorpicker.js"></script>
            <script src="js/bootstrap-datepicker.js"></script>
            <script src="js/jquery.uniform.js"></script>
            <script src="js/select2.min.js"></script>
            <script src="js/unicorn.js"></script>
            <script src="js/unicorn.form_common.js"></script>
	</body>
</html>
