<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta http-equiv="Content-Type">
<title>客户信息</title>
<%@ include file="../../head.jsp"%>
</head>
<body>
	<div class="breadcrumbs" id="breadcrumbs">
		<script type="text/javascript">
			try {
				ace.settings.check('breadcrumbs', 'fixed')
			} catch (e) {
			}
		</script>

		<ul class="breadcrumb">
			<li><i class="icon-home home-icon"></i> <a href="#">Home</a></li>

			<li><a href="#">Tables</a></li>
			<li class="active">Simple &amp; Dynamic</li>
		</ul>
		<!-- .breadcrumb -->

		<div class="nav-search" id="nav-search">
			
		</div>
		<!-- #nav-search -->
	</div>

	<div class="page-content">
		<div class="row">
			<div class="col-xs-12">
				<!-- PAGE CONTENT BEGINS -->

				<div class="row">
					<div class="col-xs-12">
						<div class="table-header">Results for "Latest Registered
							Domains"</div>

						<div id="sample-table-2_wrapper" class="dataTables_wrapper"
							role="grid">
							<div class="row">
							<form class="form-search" action="/FYProgram/customer/list.do" method="post">
								<div class="col-sm-3">
									<div id="sample-table-2_length" class="dataTables_length">
										<label>Display <select size="1"
											name="sample-table-2_length" aria-controls="sample-table-2"><option
													value="10" selected="selected">10</option>
												<option value="25">25</option>
												<option value="50">50</option>
												<option value="100">100</option>
										</select> records</label>
									</div>
								</div>
								<div class="col-sm-9">
									<div class="dataTables_filter" id="sample-table-2_filter">
										<label>客户姓名 
											<input type="text" name="customerName" value="${obj.customerName}">
										</label>
										<label>联系电话
											<input type="text" name="telephone" value="${obj.telephone}">
										</label>
										<button class="btn btn-minier btn-primary" type="submit">搜索</button>
										<a class="btn btn-minier btn-danger" href="/FYProgram/Pages/customer/edit.jsp">新增</a>
									</div>
								</div>
							</form>
							</div>
							<table id="sample-table-2"
								class="table table-striped table-bordered table-hover dataTable"
								aria-describedby="sample-table-2_info">
								<thead>
									<tr>
										<th>CustomerId</th>
										<th>CustomerName</th>
										<th>ReceiverId</th>
										<th>ReceverName</th>
										<th>Address</th>
										<th>Telephone</th>
										<th>DueDate</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody role="alert" aria-live="polite" aria-relevant="all">
									<c:forEach items="${data}" var="data">
										<tr>
											<td>${data.customerId}</td>
											<td>${data.customerName}</td>
											<td>${data.receiverId}</td>
											<td>${data.receiverName}</td>
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
		
													<a class="red" href="/FYProgram/customer/sign.do?customerId=${data.customerId}">
														<i class="icon-check bigger-130"></i>
													</a>
												</div>
		
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="row">
								<div class="col-sm-6">
									<div class="dataTables_info" id="sample-table-2_info">Showing
										1 to 10 of 23 entries</div>
								</div>
								<div class="col-sm-6">
									<div class="dataTables_paginate paging_bootstrap">
										<ul class="pagination">
											<li class="prev disabled"><a href="#"><i
													class="icon-double-angle-left"></i>
											</a>
											</li>
											<li class="active"><a href="#">1</a>
											</li>
											<li><a href="#">2</a>
											</li>
											<li><a href="#">3</a>
											</li>
											<li class="next"><a href="#"><i
													class="icon-double-angle-right"></i>
											</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.page-content -->
</body>
</html>