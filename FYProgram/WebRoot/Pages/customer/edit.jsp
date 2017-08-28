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
	<div class="page-content">
		<div class="page-header">
			<h1>
				Form Elements
				<small>
					<i class="icon-double-angle-right"></i>
					Common form elements and layouts
				</small>
			</h1>
		</div><!-- /.page-header -->

		<div class="row">
			<div class="col-xs-12">
				<!-- PAGE CONTENT BEGINS -->

				<form class="form-horizontal" role="form">
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 客户姓名 </label>
						<div class="col-sm-9">
							<input type="text" id="form-field-1" placeholder=""  />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 预产期 </label>
						<div class="col-sm-2">
							<div class="input-group">
								<input class="form-control date-picker" id="id-date-picker-1" type="text" data-date-format="dd-mm-yyyy" />
								<span class="input-group-addon">
									<i class="icon-calendar bigger-110"></i>
								</span>
							</div>
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 手机号码</label>
						<div class="col-sm-9">
							<input type="text" id="form-field-1" placeholder=""  />
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
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 信息来源 </label>
						<div class="col-sm-2">
							<div>
								<select class="form-control" id="form-field-select-3" data-placeholder="Choose a Country...">
									<option value="">请选择</option>
									<option value="AL">微信</option>
									<option value="WV">QQ</option>
									<option value="WI">电话</option>
									<option value="WY">4008</option>
									<option value="WY">其他</option>
								</select>
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
			});
	</script>		
</body>
</html>