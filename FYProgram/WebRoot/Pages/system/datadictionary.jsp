<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>文字排版 - Bootstrap后台管理系统模版Ace下载</title>
		<meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文" />
		<meta name="description" content="站长素材提供Bootstrap模版,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic -->
		<%@ include file="../../head.jsp" %>
	</head>

	<body>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

				<div class="main-container-inner">

					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="#">系统管理</a>
							</li>
							<li class="active">数据字典</li>
						</ul><!-- .breadcrumb -->

					</div>

					<div class="page-content">

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<hr />
								<div class="row">
								
									<div class="col-sm-2">
										<div class="widget-box">
											<div class="widget-header widget-header-flat">
												<h4 class="smaller">
													字典类型
												</h4>
											</div>

											<div class="widget-body">
												<div class="widget-main">
													<div class="row">
														<select class="form-control" id="data-dictionary-select-btn" multiple="multiple">
														</select>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="col-sm-10">
										<div class="row">
											<div class="col-xs-12">
												<div class="widget-box">
													<div class="widget-header widget-header-flat">
														<h4 class="smaller">数据字典</h4>
													</div>

													<div class="widget-body">
														<div class="widget-main">
															<div class="row" id="data-dictionary-show-content">
																<div class="col-xs-12">
																	<table id="grid-table"></table>
																	<div id="grid-pager"></div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>

										<div class="space-6"></div>

									</div>
								</div><!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->

			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->
		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			jQuery(function($) {
				var grid_selector = "#grid-table";
				var pager_selector = "#grid-pager";
				//
				$('#data-dictionary-select-btn').css({'height':window.innerHeight-190}).click(function(){
					var id = $(this).val();
					//alert(id);
					//$('#data-dictionary-show-content').text(id);
					
					$.ajax({
			            type: 'POST',
			            url: '${ctx}/system/getSubDictList.do',
			            data: {"id" : parseInt(id)},
			            dataType: 'json',
			            success: function (response) {
			           		//
			           		var data = response.data;
			           		jQuery(grid_selector).clearGridData();
			           		for ( var i = 0; i <= data.length; i++){
								jQuery(grid_selector).jqGrid('addRowData', i + 1, data[i]);
							}
			            	//jQuery(grid_selector).trigger('reloadGrid');
			            },
			            error: function () {
			                alert("出错了,请重试!");
			            }
			        });
				});
				//加载字典类型
				$.ajax({
					url : "${ctx}/system/getDictList.do",
					data : {},
					dataType : "JSON",
					success : function(response){
						var data = response.data,option="";
						for(var i=0;i<data.length;i++){
							option += "<option value=\""+data[i].id+"\">"+data[i].text+" ["+data[i].code+"]</option>";
						}
						$('#data-dictionary-select-btn').empty().append(option);
					},
					error : function(){
						console.log("获取失败，请稍后再试！");
					}
				});
				
				jQuery(grid_selector).jqGrid({
					data: [],
					datatype: "local",
					//height: window.innerHeight-400,
					colNames:['ID', 'VALUE','TEXT','SORT', 'TYPE_ID'],
					colModel:[
						{name:'subId',index:'subId', width:60},
						{name:'value',index:'value',width:90},
						{name:'subText',index:'subText',width:160},
						{name:'sort',index:'sort', width:150},
						{name:'subId',index:'subId', width:90}
					], 
					loadComplete : function() {
						$('#data-dictionary-show-content').css({'height':'500px'});
					},
					autowidth: true
				});
			});
		</script>
</body>
</html>
