<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>客户信息</title>

		<meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文" />
		<meta name="description" content="站长素材提供Bootstrap模版,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->

		<link href="${ctx}/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${ctx}/assets/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->

		<link rel="stylesheet" href="${ctx}/assets/css/jquery-ui-1.10.3.full.min.css" />
		<link rel="stylesheet" href="${ctx}/assets/css/datepicker.css" />
		<link rel="stylesheet" href="${ctx}/assets/css/ui.jqgrid.css" />

		<!-- fonts -->

		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

		<!-- ace styles -->

		<link rel="stylesheet" href="${ctx}/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${ctx}/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${ctx}/assets/css/ace-skins.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->

		<script src="${ctx}/assets/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body>

			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>


					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="#">主页</a>
							</li>

							<li>
								<a href="#">客户管理</a>
							</li>
							<li class="active">客户详情</li>
						</ul><!-- .breadcrumb -->

						<div class="nav-search" id="nav-search">
						</div><!-- #nav-search -->
					</div>

					<div class="page-content">
						<div class="page-header">
						</div><!-- /.page-header -->
						<div class="col-sm-12">
							<div class="dataTables_filter" id="sample-table-2_filter">
								<label>客户姓名 
									<input type="text" id="customerName" name="customerName" value="${obj.customerName}">
								</label>
								<label>联系电话
									<input type="text" id="telephone" name="telephone" value="${obj.telephone}">
								</label>
								<button class="btn btn-minier btn-primary" id="searchBtn">搜索</button>
								<a class="btn btn-minier btn-danger" href="${ctx}/Pages/customer/edit.jsp">新增</a>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<table id="grid-table"></table>

								<div id="grid-pager"></div>

								<script type="text/javascript">
									var $path_base = "/";//this will be used in gritter alerts containing images
								</script>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->



		<!-- basic scripts -->

		<!--[if !IE]> -->

		<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
		<!-- <![endif]-->

		<!--[if IE]>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='${ctx}/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
		<script type="text/javascript">
		 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
		</script>
		<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='${ctx}/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${ctx}/assets/js/bootstrap.min.js"></script>
		<script src="${ctx}/assets/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<script src="${ctx}/assets/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="${ctx}/assets/js/jqGrid/jquery.jqGrid.min.js"></script>
		<script src="${ctx}/assets/js/jqGrid/i18n/grid.locale-cn.js"></script>

		<!-- ace scripts -->

		<script src="${ctx}/assets/js/ace-elements.min.js"></script>
		<script src="${ctx}/assets/js/ace.min.js"></script>
		
		<script src="${ctx}/js/Utils.js"></script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			
			jQuery(function($) {
				var grid_selector = "#grid-table";
				var pager_selector = "#grid-pager";
				
				$('#searchBtn').click(function(){
					var telephone = $('#telephone').val();
					var customerName = $('#customerName').val();
					jQuery(grid_selector).clearGridData().jqGrid('setGridParam',{
            			postData:{
            				"telephone":telephone,
            				"customerName" : customerName
            				},
        			}).trigger('reloadGrid'); 
					
					//jQuery(grid_selector).trigger('reloadGrid');
					return true;
					$.ajax({
			            type: 'POST',
			            url: '${ctx}/customer/listAjax.do',
			            data: {
			                
			            },
			            dataType: 'json',
			            success: function (response) {
			           		//
			           		var data = response.rows;
			           		for ( var i = 0; i <= data.length; i++){
								jQuery(grid_selector).jqGrid('addRowData', i + 1, data[i]);
							}
			            	jQuery(grid_selector).trigger('reloadGrid');
			            },
			            error: function () {
			                alert("出错了,请重试!");
			            }
			        });
				});
			
				jQuery(grid_selector).jqGrid({
					//direction: "rtl",
					url: '${ctx}/customer/listAjax.do',
					//data: [],
					datatype: "json",
					height: window.innerHeight-279,
					colNames:['编辑', '客户姓名','联系电话','联系地址', '预产期', '接洽人','最近联系时间','操作'],
					colModel:[
						{name:'myac',index:'', width:80, fixed:true, sortable:false, resize:false,
							formatter:'actions', 
							formatoptions:{ 
								keys:true,
								
								delOptions:{recreateForm: true, beforeShowForm:beforeDeleteCallback},
								//editformbutton:true, editOptions:{recreateForm: true, beforeShowForm:beforeEditCallback}
							}
						},
						{name:'customerName',index:'customerName', width:60, editable: true, sorttype:"string"},
						{name:'telephone',index:'telephone',width:90, editable:true, sorttype:"string"},
						{name:'address',index:'address',width:160, editable:true, sorttype:"string"},
						{name:'dueDate',index:'dueDate', width:150,editable: true,sorttype:"date",unformat: pickDate},
						{name:'receiverName',index:'receiverName', width:90, editable: true, sorttype:"string"},
						{name:'contactTime',index:'contactTime', width:150, editable: true,sorttype:"date",unformat: pickDate},
						{label: '详情', name: '', index: 'operate', width: 50, align: 'center',
	                    	formatter: function (cellvalue, options, rowObject) {
	                        return "<div class=\"visible-md visible-lg hidden-sm hidden-xs action-buttons\">"+
										"<a class=\"blue\" href=\"${ctx}/customer/view.do?customerId="+rowObject.customerId+"\">"+
											"<i class=\"icon-zoom-in bigger-130\"></i></a>"+
										"<a class=\"green\" href=\"#\"><i class=\"icon-pencil bigger-130\"></i></a>"+
										"<a class=\"red\" href=\"${ctx}/customer/sign.do?customerId="+rowObject.customerId+"\">"+
											"<i class=\"icon-check bigger-130\"></i></a></div>";
	                    }
	                    }
					], 
			
					viewrecords : true,
					rowNum:10,
					rowList:[10,20,30],
					pager : pager_selector,
					altRows: true,
					//toppager: true,
					
					multiselect: true,
					//multikey: "ctrlKey",
			        multiboxonly: true,
			
					loadComplete : function() {
						var table = this;
						setTimeout(function(){
							styleCheckbox(table);
							
							updateActionIcons(table);
							updatePagerIcons(table);
							enableTooltips(table);
						}, 0);
					},
			
					editurl: $path_base+"/dummy.html",//nothing is saved
					caption: "客户信息",
			
			
					autowidth: true
			
				});
				//navButtons
				navButtons(grid_selector,pager_selector,'navGrid');
				
			
				//enable search/filter toolbar
				//jQuery(grid_selector).jqGrid('filterToolbar',{defaultSearch:true,stringResult:true})
			
				
			
				//var selr = jQuery(grid_selector).jqGrid('getGridParam','selrow');
			});
		</script>
</body>
</html>