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
</head>
<body>
	<div class="page-content">
		<div class="page-header">
			<h1>
				客户信息
				<small>
					<i class="icon-double-angle-right"></i>
					客户签约
				</small>
			</h1>
		</div><!-- /.page-header -->
		
		<div class="col-xs-12 col-sm-3"></div>
		<div class="col-xs-12 col-sm-9">
		<div class="space-12"></div>

		<div class="profile-user-info profile-user-info-striped">
			<div class="profile-info-row">
				<div class="profile-info-name"> 客户姓名 </div>

				<div class="profile-info-value">
					<span class="editable" id="username">${obj.customerName} &nbsp;</span>
				</div>
			</div>
			
			<div class="profile-info-row">
				<div class="profile-info-name"> 联系电话 </div>

				<div class="profile-info-value">
					<span class="editable" id="country1">${obj.telephone} &nbsp;</span>
				</div>
			</div>

			<div class="profile-info-row">
				<div class="profile-info-name"> 联系地址 </div>

				<div class="profile-info-value">
					<span class="editable" id="country">${obj.address} &nbsp;</span>
				</div>
			</div>

			<div class="profile-info-row">
				<div class="profile-info-name"> 年龄 </div>

				<div class="profile-info-value">
					<span class="editable" id="age">38</span>
				</div>
			</div>

			<div class="profile-info-row">
				<div class="profile-info-name"> 生日 </div>

				<div class="profile-info-value">
					<span class="editable" id="signup">${obj.dueDate} &nbsp;</span>
				</div>
			</div>
			<div class="profile-info-row">
				<div class="profile-info-name"> 预产期 </div>

				<div class="profile-info-value">
					<span class="editable" id="signup1">${obj.dueDate} &nbsp;</span>
				</div>
			</div>
			
			<div class="profile-info-row">
				<div class="profile-info-name"> 生产医院 </div>

				<div class="profile-info-value">
					<span class="editable" id="signup1">${obj.hospitalName} &nbsp;</span>
				</div>
			</div>

			<div class="profile-info-row">
				<div class="profile-info-name"> 备注 </div>

				<div class="profile-info-value">
					<span class="editable" id="about"> ${obj.remark} &nbsp;</span>
				</div>
			</div>
		</div>

		<div class="space-20"></div>
		<div class="hr hr2 hr-double"></div>
		<div class="space-6"></div>
		</div>								
		<div class="row">
			<div class="col-xs-12">
				<!-- PAGE CONTENT BEGINS -->
				<div class="space-12"></div>
				<form class="form-horizontal" role="form">
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 合同编号</label>
						<div class="col-sm-3">
							<input type="text" id="form-field-1" placeholder=""  />
						</div>
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 身份证号</label>
						<div class="col-sm-3">
							<input type="text" id="form-field-1" placeholder=""  />
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 签约中心 </label>
						<div class="col-sm-2">
							<div>
								<select class="form-control" id="CenterType" name="CenterType">
									<option value="">请选择</option>
									<option value="01">月子中心</option>
									<option value="02">母婴中心</option>
									<option value="03">产后康复</option>
									<option value="00">其他</option>
								</select>
							</div>
						</div>
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 签约服务 </label>
						<div class="col-sm-3">
							<div>
								<select class="form-control" id="signService" data-placeholder="Choose a Country...">
									<option value="">请选择</option>
								</select>
							</div>
						</div>
					</div>
					<div class="space-4"></div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 大礼包 </label>
						<div class="col-sm-2">
							<div>
								<select class="form-control" id="form-field-select-3" data-placeholder="">
									<option value="">请选择</option>
									<option value="AL">月子中心</option>
									<option value="WV">母婴中心</option>
									<option value="WI">产后康复</option>
									<option value="WY">其他</option>
								</select>
							</div>
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 房型</label>
						<div class="col-sm-2">
							<div>
								<select class="form-control" id="form-field-select-3" data-placeholder="">
									<option value="">请选择</option>
									<option value="AL">A型</option>
									<option value="WV">B型</option>
									<option value="WI">C型</option>
									<option value="WY">D型</option>
								</select>
							</div>
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 房间</label>
						<div class="col-sm-2">
							<div>
								<select class="form-control" id="form-field-select-3" data-placeholder="">
									<option value="">请选择</option>
									<option value="AL">101</option>
									<option value="WV">102</option>
									<option value="WI">103</option>
									<option value="WY">104</option>
								</select>
							</div>
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 天数</label>
						<div class="col-sm-9">
							<input type="text" id="form-field-1" placeholder=""  />
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 总房款</label>
						<div class="col-sm-9">
							<input type="text" id="form-field-1" placeholder=""  />
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 预定金</label>
						<div class="col-sm-9">
							<input type="text" id="form-field-1" placeholder=""  />
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 尾款</label>
						<div class="col-sm-9">
							<input type="text" id="form-field-1" placeholder=""  />
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 签约日期</label>
						<div class="col-sm-2">
							<div class="input-group">
								<input class="form-control date-picker" id="id-date-picker-1" type="text" data-date-format="yyyy-mm-dd" />
								<span class="input-group-addon">
									<i class="icon-calendar bigger-110"></i>
								</span>
							</div>
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 联系地址 </label>
						<div class="col-sm-9">
							<input type="text" id="form-field-1" placeholder=""  class="col-xs-10 col-sm-6" />
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 生产医院</label>
						<div class="col-sm-9">
							<input type="text" id="form-field-1" placeholder=""  class="col-xs-10 col-sm-6" />
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 合同附件 </label>
						<div class="col-sm-5">
							<div class="ace-file-input ace-file-multiple">
								<input multiple="" id="id-input-file-3" type="file" />
							</div>
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 备注</label>
						<div class="col-sm-5">
							<textarea class="form-control limited" id="form-field-9" maxlength="50" rows="5"></textarea>
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-input-readonly"> 接洽人 </label>
						<div class="col-sm-9">
							<input readonly="" type="text" class="col-sm-2" id="form-input-readonly" value="某销售" />
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-input-readonly"> 接洽日期 </label>
						<div class="col-sm-9">
							<input readonly="" type="text" class="col-sm-2" id="form-input-readonly" value="2017-08-08" />
						</div>
					</div>
					
					<div class="clearfix form-actions">
						<div class="col-md-offset-3 col-md-9">
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
				
				$('#CenterType').change(function(){
					var CenterType = $('#CenterType').val();
					console.log(CenterType);
					if(CenterType=="" || CenterType == null){
						$('#signService').empty().append('<option value="">请选择</option>');
						return false;
					}
					$.ajax({
						type : "post",
						url : "${ctx}/service/searchAjax.do",
						data : {"CenterType":CenterType},
						dataType : "json",
						success : function(response){
							console.log("获取数据成功！");
							var data = response.data,option = "";
							for(var i=0;i<data.length;i++){
								//console.log(data[i].serviceId + "," + data[i].serviceName);
								option += "<option value=\""+data[i].serviceId+"\">"+data[i].serviceName+"</option>";
							}
							if(option == "" || option == null){
								$('#signService').empty().append('<option value="">无</option>');
							}else{
								$('#signService').empty().append(option);
							}
						},
						error : function(){
							console.log("获取数据失败！");
						}
					});
				});
			});
	</script>		
</body>
</html>