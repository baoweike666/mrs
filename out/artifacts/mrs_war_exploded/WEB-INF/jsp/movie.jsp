<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>电影深度推荐系统</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
	<!-- MetisMenu CSS -->
	<link href="${pageContext.request.contextPath}/css/metisMenu.min.css" rel="stylesheet" />
	<!-- DataTables CSS -->
	<link href="${pageContext.request.contextPath}/css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Custom CSS -->
	<link href="${pageContext.request.contextPath}/css/sb-admin-2.css" rel="stylesheet" />
	<!-- Custom Fonts -->
	<link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<%--<link href="${pageContext.request.contextPath}//css/boot-crm.css" rel="stylesheet" type="text/css" />--%>
</head>
<body>
<div id="wrapper">
  <!-- 导航栏部分 -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="<%=basePath%>movie/list.action">电影深度推荐系统</a>
	</div>
	<!-- 导航栏右侧图标部分 -->
	<ul class="nav navbar-top-links navbar-right">
	    <!-- 邮件通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-envelope fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-messages">
				<li>
				    <a href="#">
						<div>
							<strong>系统消息</strong> <span class="pull-right text-muted">
								<em>昨天</em>
							</span>
						</div>
						<div>您的会员已到期，请尽快续费</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#">
				        <strong>查看全部消息</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul>
		</li>
		<!-- 邮件通知 end -->
		<!-- 任务通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
			    <i class="fa fa-tasks fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-tasks">
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 1</strong> 
								<span class="pull-right text-muted">完成40%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">完成40%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 2</strong> 
								<span class="pull-right text-muted">完成20%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
									style="width: 20%">
									<span class="sr-only">完成20%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有任务</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 任务通知 end -->
		<!-- 消息通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-bell fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-alerts">
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-comment fa-fw"></i> 新回复 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-envelope fa-fw"></i> 新消息 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-tasks fa-fw"></i> 新任务 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-upload fa-fw"></i> 服务器重启 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有提醒</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 消息通知 end -->
		<!-- 用户信息和系统设置 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i>
				               用户：${USER_SESSION.user_name}
				    </a>
				</li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
				<li class="divider"></li>
				<li>
					<a href="${pageContext.request.contextPath }/logout.action">
					<i class="fa fa-sign-out fa-fw"></i>退出登录
					</a>
				</li>
			</ul> 
		</li>
		<!-- 用户信息和系统设置结束 -->
	</ul>
	<!-- 左侧显示列表部分 start-->
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group movie-search-form">
						<input type="text" class="form-control" placeholder="查询内容...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
					</div> 
				</li>
				<li>
				    <a href="${pageContext.request.contextPath}/movie/list.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> 电影管理
				    </a>
				</li>
				<li>
				    <a href="#">
				      <i class="fa fa-dashboard fa-fw" ></i> 普通用户管理
				    </a>
				</li>
			</ul>
		</div>
	</div>
	<!-- 左侧显示列表部分 end--> 
  </nav>
    <!-- 电影列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">电影管理</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
				<form class="form-inline" method="get"
				      action="${pageContext.request.contextPath }/movie/list.action">
					<div class="form-group">
						<label for="movieName">电影名称</label>
						<input type="text" class="form-control" id="movieName" 
						                   value="${movieName }" name="movieName" />
					</div>
					<div class="form-group">
						<label for="movieType">电影类型</label>
						<select	class="form-control" id="movieType" name="movieType">
							<option value="">--请选择--</option>
							<c:forEach items="${typeType}" var="item">
								<option value="${item.dict_id}"
								       <c:if test="${item.dict_id == movieType}">selected</c:if>>
								    ${item.dict_item_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="movieCountry">拍摄国家</label>
						<select	class="form-control" id="movieCountry"  name="movieCountry">
							<option value="">--请选择--</option>
							<c:forEach items="${countryType}" var="item">
								<option value="${item.dict_id}"
								        <c:if test="${item.dict_id == movieCountry}"> selected</c:if>>
								    ${item.dict_item_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="movieYears">电影年份</label>
						<select	class="form-control" id="movieYears" name="movieYears">
							<option value="">--请选择--</option>
							<c:forEach items="${yearsType}" var="item">
								<option value="${item.dict_id}"
								        <c:if test="${item.dict_id == movieYears}"> selected</c:if>>
								    ${item.dict_item_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>
		<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newMovieDialog" onclick="clearMovie()">新建</a>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">电影信息列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>编号</th>
								<th>电影名称</th>
								<th>电影类型</th>
								<th>拍摄国家</th>
								<th>电影年份</th>
								<th>电影评分</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr>
									<td>${row.movie_id}</td>
									<td>${row.movie_name}</td>
									<td>${row.movie_type}</td>
									<td>${row.movie_country}</td>
									<td>${row.movie_years}</td>
									<td>${row.movie_avgscore}</td>
									<td>
										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#movieEditDialog" onclick= "editMovie(${row.movie_id})">修改</a>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteMovie(${row.movie_id})">删除</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-right">
						<itheima:page url="${pageContext.request.contextPath }/movie/list.action" />
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- 电影列表查询部分  end-->
</div>
<!-- 创建电影模态框 -->
<div class="modal fade" id="newMovieDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<%--<button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
					<%--<span aria-hidden="true">&times;</span>--%>
				<%--</button>--%>
				<h4 class="modal-title" id="myModalLabel">新建电影信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_movie_form" method="post" action="${pageContext.request.contextPath }/movie/create.action">
					<div class="form-group">
						<label for="new_movieName" class="col-sm-2 control-label">
						    电影名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_movieName" placeholder="电影名称" name="movie_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_movieFrom" style="float:left;padding:7px 15px 0 27px;">电影类型</label>
						<div class="col-sm-10">
							<select	class="form-control" id="new_movieFrom" name="movie_type">
								<option value="">--请选择--</option>
								<c:forEach items="${typeType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == movieType}">selected</c:if>>
									${item.dict_item_name }									
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_movieCountry" style="float:left;padding:7px 15px 0 27px;">拍摄国家</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="new_movieCountry"  name="movie_country">
								<option value="">--请选择--</option>
								<c:forEach items="${countryType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == movieCountry}"> selected</c:if>>
									${item.dict_item_name }
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_movieYears" style="float:left;padding:7px 15px 0 27px;">电影年份</label>
						<div class="col-sm-10">
							<select	class="form-control" id="new_movieYears" name="movie_years">
								<option value="">--请选择--</option>
								<c:forEach items="${yearsType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == movieYears}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>

					<div class="modal-footer" >
						<button type="submit" class="btn btn-primary" align="right">创建电影</button>
						<button type="button" class="btn btn-default" data-dismiss="modal" align="right">关闭</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- 修改电影模态框 -->
<div class="modal fade" id="movieEditDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">修改电影信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_movie_form" action="${pageContext.request.contextPath }/movie/update.action">
					<input type="hidden" id="edit_movie_id" name="movie_id"/>
					<div class="form-group">
						<label for="edit_movieName" class="col-sm-2 control-label">电影名称</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_movieName" placeholder="电影名称" name="movie_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_movieFrom" style="float:left;padding:7px 15px 0 27px;">电影类型</label>
						<div class="col-sm-10">
							<select	class="form-control" id="edit_movieFrom" name="movie_type">
								<option value="">--请选择--</option>
								<c:forEach items="${typeType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == movieType}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_movieCountry" style="float:left;padding:7px 15px 0 27px;">拍摄国家</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="edit_movieCountry"  name="movie_country">
								<option value="">--请选择--</option>
								<c:forEach items="${countryType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == movieCountry}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_movieYears" style="float:left;padding:7px 15px 0 27px;">电影年份</label>
						<div class="col-sm-10">
							<select	class="form-control" id="edit_movieYears" name="movie_years">
								<option value="">--请选择--</option>
								<c:forEach items="${yearsType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == movieYears}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="submit" class="btn btn-primary">保存修改</button>
					</div>
				</form>
			</div>

		</div>
	</div>
</div>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<!-- 编写js代码 -->
<script type="text/javascript">

	// 通过id获取修改的电影信息
	function editMovie(id) {
	    $.ajax({
	        type:"get",
	        url:"<%=basePath%>movie/getMovieById.action",
	        data:{"id":id},
	        success:function(data) {
	            $("#edit_movie_id").val(data.movie_id);
	            $("#edit_movieName").val(data.movie_name);
	            $("#edit_movieType").val(data.movie_type)
	            $("#edit_movieCountry").val(data.movie_country)
	            $("#edit_movieYears").val(data.movie_years)
	        }
	    });
	}
	// 删除电影
	function deleteMovie(id) {
	    if(confirm('确实要删除该电影吗?')) {
	$.post("<%=basePath%>movie/delete.action",{"id":id},
	function(data){
	            if(data =="OK"){
	                alert("删除成功！");
	                window.location.reload();
	            }else{
	                alert("删除失败！");
	                window.location.reload();
	            }
	        });
	    }
	}
</script>
</body>
</html>