<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type">
	<title>客户信息</title>
	<%@ include file="../../head.jsp" %>
</head>
<body>
<div class="breadcrumbs" id="breadcrumbs">
	<script type="text/javascript">
		try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
	</script>

	<ul class="breadcrumb">
		<li>
			<i class="icon-home home-icon"></i>
			<a href="#">Home</a>
		</li>

		<li>
			<a href="#">Tables</a>
		</li>
		<li class="active">Simple &amp; Dynamic</li>
	</ul><!-- .breadcrumb -->

	<div class="nav-search" id="nav-search">
		<form class="form-search" action="/FYProgram/customer/listAll.do" method="post">
			<span class="input-icon">
				<input type="text" class="nav-search-input" id="nav-search-input" autocomplete="off" />
				<i class="icon-search nav-search-icon"></i>
			</span>
			<button class="btn btn-minier btn-primary" type="submit">搜索</button>
			<a class="btn btn-minier btn-danger" href="/FYProgram/Pages/customer/edit.jsp" >新增</a>
		</form>
	</div><!-- #nav-search -->
</div>

<div class="page-content">
	<div class="row">
		<div class="col-xs-12">
			<!-- PAGE CONTENT BEGINS -->

			<div class="row">
				<div class="col-xs-12">
					<div class="table-header">
						Results for "Latest Registered Domains"
					</div>

					<div class="table-responsive">
						<table id="sample-table-2" class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th>CustomerId</th>
									<th>CustomerName</th>
									<th>ReceverId</th>
									<th>ReceverName</th>
									<th>Address</th>
									<th>Telephone</th>
									<th>DueDate</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${data}" var="data">
								<tr>
									<td>${data.customerId}</td>
									<td>${data.customerName}</td>
									<td>${data.receverId}</td>
									<td>${data.receverName}</td>
									<td>${data.address}</td>
									<td>${data.telephone}</td>
									<td>${data.dueDate}</td>
									<td>
										<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
											<a class="blue" href="/FYProgram/customer/view.do?customerId=${data.customerId}">
												<i class="icon-zoom-in bigger-130"></i>
											</a>

											<a class="green" href="#">
												<i class="icon-pencil bigger-130"></i>
											</a>

											<a class="red" href="#">
												<i class="icon-check bigger-130"></i>
											</a>
										</div>

									</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div><!-- /.col -->
	</div><!-- /.row -->
</div><!-- /.page-content -->
</body>
</html>