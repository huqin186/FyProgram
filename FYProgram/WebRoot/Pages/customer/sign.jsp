<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type">
	<title>客户信息</title>
	<%@ include file="../../head.jsp" %>
	
	<style type="text/css">
		.hq-field1{
			width : 190px;
		}
	</style>
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
						<a href="#">客户管理</a>
					</li>
					<li class="active">客户签约</li>
				</ul><!-- .breadcrumb -->

			</div>
	
			<div class="page-content">
			<div class="page-header">
				<h1>
					客户签约
					<small>
						<i class="icon-double-angle-right"></i>
						客户信息
					</small>
				</h1>
			</div><!-- /.page-header -->
										
			<div class="row">
				<div class="col-xs-12">
					<!-- PAGE CONTENT BEGINS -->
					<div class="space-12"></div>
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 客户姓名 </label>
							<div class="col-sm-2">
								<input type="text" id="form-field-1" placeholder=""  />
							</div>
							<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 合同编号 </label>
							<div class="col-sm-2">
								<input type="text" id="form-field-1" placeholder=""  />
							</div>
							<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 合同名称 </label>
							<div class="col-sm-2">
								<input type="text" id="form-field-1" placeholder=""  />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 手机号码</label>
							<div class="col-sm-2">
								<input type="text" id="form-field-1" placeholder=""  />
							</div>
							<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 身份证号 </label>
							<div class="col-sm-2">
								<input type="text" id="form-field-1" placeholder=""  />
							</div>
							<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 客户预产期 </label>
							<div class="col-sm-2">
								<div class="input-group" style="width:190px">
									<input class="form-control date-picker" id="id-date-picker-1" type="text" data-date-format="yyyy-mm-dd" />
									<span class="input-group-addon">
										<i class="icon-calendar bigger-110"></i>
									</span>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 联系地址 </label>
							<div class="col-sm-10">
								<input type="text" id="form-field-1" placeholder=""  class="col-xs-10 col-sm-6" />
							</div>
						</div>
						<div class="space-4"></div>
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 生产医院</label>
							<div class="col-sm-10">
								<input type="text" id="form-field-1" placeholder=""  class="col-xs-10 col-sm-6" />
							</div>
						</div>
						
						<hr>
						<div class="page-header">
							<h1>
								客户签约
								<small>
									<i class="icon-double-angle-right"></i>
									合同信息
								</small>
							</h1>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 合同签订日期 </label>
							<div class="col-sm-2">
								<div class="input-group" style="width:190px">
									<input class="form-control date-picker" id="id-date-picker-1" type="text" data-date-format="yyyy-mm-dd" />
									<span class="input-group-addon">
										<i class="icon-calendar bigger-110"></i>
									</span>
								</div>
							</div>
							<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 合同类型 </label>
							<div class="col-sm-2">
								<select class="form-control" id="" name=""  style="width:190px">
									<option value="pt">普通</option>
									<option value="vip">VIP</option>
								</select>
							</div>
							<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 护理类型  </label>
							<div class="col-sm-2">
								<select class="form-control" id="" name=""  style="width:190px">
									<option value="pt">普通护理</option>
									<option value="vip">一对一护理</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 签约中心 </label>
							<div class="col-sm-2">
								<select class="form-control" id="form-select-centertype" name="form-centertype-select" style="width:190px">
									<option value="">请选择</option>
									<option value="01">月子中心</option>
									<option value="02">母婴中心</option>
									<option value="03">产后康复</option>
									<option value="00">其他</option>
								</select>
							</div>
							<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 签约服务 </label>
							<div class="col-sm-2">
								<div>
									<select class="form-control" id="form-select-signservice" style="width:190px" data-placeholder="">
										<option value="">请选择</option>
									</select>
								</div>
							</div>
							<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 大礼包 </label>
							<div class="col-sm-2">
								<select class="form-control" id="form-field-select-3" style="width:190px" data-placeholder="">
									<option value="">请选择</option>
									<option value="AL">月子中心</option>
									<option value="WV">母婴中心</option>
									<option value="WI">产后康复</option>
									<option value="WY">其他</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 中心选择 </label>
							<div class="col-sm-2">
								<select class="form-control hq-field1" id="form-select-center" data-placeholder="">
									<option value="一中心">一中心</option>
									<option value="二中心">二中心</option>
								</select>
							</div>
							<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 房型选择 </label>
							<div class="col-sm-2">
								<select class="form-control hq-field1" id="form-select-roomtype" data-placeholder="" >
									<option value="">请选择</option>
								</select>
							</div>
							<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 房间</label>
							<div class="col-sm-2">
								<select class="form-control hq-field1" id="form-select-roomnumber" data-placeholder="" >
									<option value="">请选择</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 入住天数 </label>
							<div class="col-sm-2">
								<input type="text" id="form-field-1" placeholder=""  />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 合同附件 </label>
							<div class="col-sm-6">
								<div class="ace-file-input ace-file-multiple">
									<input multiple="" id="id-input-file-3" type="file" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 备注</label>
							<div class="col-sm-6">
								<textarea class="form-control limited" id="form-field-9" maxlength="50" rows="5"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-6 control-label no-padding-right" for="form-input-readonly"> 接洽人 </label>
							<div class="col-sm-2">
								<input readonly="" type="text" class="col-sm-2 hq-field1" id="form-input-readonly" value="某销售" />
							</div>
							<label class="col-sm-2 control-label no-padding-right" for="form-input-readonly"> 接洽日期 </label>
							<div class="col-sm-2">
								<input readonly="" type="text" class="col-sm-2 hq-field1" id="form-input-readonly" value="2017-08-08" />
							</div>
						</div>
						
						<div class="col-sm-12">
							<div class="tabbable">
								<ul class="nav nav-tabs" id="myTab">
									<li class="active">
										<a data-toggle="tab" href="#home">
											套餐项目
										</a>
									</li>
									<li>
										<a data-toggle="tab" href="#profile">
											自选项目
										</a>
									</li>
									<li>
										<a data-toggle="tab" href="#profile1">
											赠送物品
										</a>
									</li>
									<li>
										<a data-toggle="tab" href="#profile2">
											自选物品
										</a>
									</li>

								</ul>

								<div class="tab-content">
									<div id="home" class="tab-pane in active">
										套餐项目
									</div>
									<div id="profile" class="tab-pane">
										自选项目
									</div>
									<div id="profile1" class="tab-pane">
										赠送物品
									</div>
									<div id="profile2" class="tab-pane">
										自选物品
									</div>
								</div>
							</div>
						</div>
						
						<div class="hr hr8 hr-double hr-dotted"></div>
						<div class="row">
							<div class="col-sm-5 pull-right">
								<h4 class="pull-right">
									合同总额 :
									<span class="red">$395</span>
								</h4>
							</div>
						</div>
						
						<div class="clearfix form-actions">
							<div class="col-md-offset-5 col-md-9">
								<button class="btn btn-info" type="button">
									<i class="icon-ok bigger-110"></i>
									提交
								</button>
	
								&nbsp; &nbsp; &nbsp;
								<button class="btn" type="reset">
									<i class="icon-undo bigger-110"></i>
									重置
								</button>
							</div>
						</div>
					</form>
				</div><!-- /.col -->
			</div><!-- /.row -->
		</div><!-- /.page-content -->
	
	</div>
	</div>
	
	<script type="text/javascript">
			jQuery(function($) {
				$('.date-picker').datepicker({autoclose:true}).next().on(ace.click_event, function(){
					$(this).prev().focus();
				});
				$('#id-input-file-3').ace_file_input({
					style:'well',
					btn_choose:'Drop files here or click to choose',
					btn_change:null,
					no_icon:'icon-cloud-upload',
					droppable:true,
					thumbnail:'small'//large | fit
					//,icon_remove:null//set null, to hide remove/reset button
					/**,before_change:function(files, dropped) {
						//Check an example below
						//or examples/file-upload.html
						return true;
					}*/
					/**,before_remove : function() {
						return true;
					}*/
					,
					preview_error : function(filename, error_code) {
						//name of the file that failed
						//error_code values
						//1 = 'FILE_LOAD_FAILED',
						//2 = 'IMAGE_LOAD_FAILED',
						//3 = 'THUMBNAIL_FAILED'
						//alert(error_code);
					}
			
				}).on('change', function(){
					//console.log($(this).data('ace_input_files'));
					//console.log($(this).data('ace_input_method'));
				});
				
				var center_selector = '#form-select-center'; //一中心二中心
				var roomtype_selector = '#form-select-roomtype'; //房型
				var roomnumber_selector = '#form-select-roomnumber'; //房号
				var roomTypeOption,respDataDispose;
				
				function roomNumberFct(){
					var roomType = $(roomtype_selector).val();
					var data = respDataDispose[roomType],option="";
					for(var i=0;i<data.length;i++){
						option += "<option value="+data[i].roomNumber+">"+data[i].roomNumber+"</option>";
					}
					$(roomnumber_selector).empty().append(option);
				}
				
				function roomTypeFct(){
					var center = $(center_selector).val();
					var roomType = $(roomtype_selector).val();
					var roomNumber = $(roomnumber_selector).val();
					roomTypeOption = "",respDataDispose={};
					//roomNumberOption = "";
					$.ajax({
						type : "post",
						url : "${ctx}/service/roomSearchAjax.do",
						data : {
							"center" : center
							//"roomType" : roomType
							//"roomNumber" : roomNumber
						},
						dataType : "json",
						success : function(response){
							console.log("获取数据成功！");
							//房型加载
							var data = response.data;
							//data.sort(function(a, b){return a.roomType-b.roomType;});
							for(var i=0;i<data.length;i++){
								if(respDataDispose[data[i].roomType]!=undefined){
									//存在
									respDataDispose[data[i].roomType].push(data[i]);
								}else{
									//不存在
									roomTypeOption += "<option value="+data[i].roomType+">"+data[i].roomType+"</option>";
									respDataDispose[data[i].roomType] = [];
									respDataDispose[data[i].roomType].push(data[i]);
								}
							}
							//console.log(types);
							$(roomtype_selector).empty().append(roomTypeOption);
							
							//房号加载
							roomNumberFct();
						},
						error : function(){
							console.log("获取数据失败！");
						}
					});
				}
				
				$('#form-select-centertype').change(function(){
					var centerType = $('#form-select-centertype').val();
					console.log(centerType);
					if(centerType=="" || centerType == null){
						$('#form-select-signservice').empty().append('<option value="">请选择</option>');
						return false;
					}
					$.ajax({
						type : "post",
						url : "${ctx}/service/serviceSearchAjax.do",
						data : {"centerType":centerType},
						dataType : "json",
						success : function(response){
							console.log("获取数据成功！");
							var data = response.data,option = "";
							for(var i=0;i<data.length;i++){
								//console.log(data[i].serviceId + "," + data[i].serviceName);
								option += "<option value=\""+data[i].serviceId+"\">"+data[i].serviceName+"</option>";
							}
							if(option == "" || option == null){
								$('#form-select-signservice').empty().append('<option value="">无</option>');
							}else{
								$('#form-select-signservice').empty().append(option);
							}
						},
						error : function(){
							console.log("获取数据失败！");
						}
					});
				});
				roomTypeFct();
				$(center_selector).change(function(){roomTypeFct();});
				$(roomtype_selector).change(function(){
					roomNumberFct();
				});
				
			});
	</script>		
</body>
</html>