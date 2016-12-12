<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- content start --%>
<div class="admin-content">
	<div class="admin-content-body">
		<div class="am-cf am-padding am-padding-bottom-0">
			<div class="am-fl am-cf">
				<strong class="am-text-primary am-text-lg">用户管理</strong> / <small>用户组管理</small>
			</div>
		</div>
		<hr>
		<div class="am-g">
			<div class="am-u-sm-12 am-u-md-6">
				<div class="am-btn-toolbar">
					<div class="am-btn-group am-btn-group-xs">
						<button type="button" class="am-btn am-btn-default" id="add">
							<span class="am-icon-plus"></span> 新增
						</button>
						<button type="button" class="am-btn am-btn-default" id="edit">
							<span class="am-icon-edit"></span> 修改
						</button>
						<button type="button" class="am-btn am-btn-default" id="del">
							<span class="am-icon-trash-o"></span> 删除
						</button>
					</div>
				</div>
			</div>
			<div class="am-u-sm-12 am-u-md-3">
				<div class="am-form-group">
					<select data-am-selected="{btnSize: 'sm'}">
						<option value="id">组 ID</option>
						<option value="name">组名称</option>
					</select>
				</div>
			</div>
			<div class="am-u-sm-12 am-u-md-3">
				<div class="am-input-group am-input-group-sm">
					<input type="text" class="am-form-field"> <span class="am-input-group-btn">
						<button class="am-btn am-btn-default" type="button">搜索</button>
					</span>
				</div>
			</div>
		</div>
		<div class="am-u-sm-12">
			<table class="am-table am-table-striped  am-table-hover table-main am-table-bordered am-table-compact am-text-nowrap" width="100%" id="example">
				<thead>
					<tr>
						<th><input type="checkbox" id='checkAll'></th>
						<th>图片 ID</th>
						<th>缩略图</th>
						<th>图片标题</th>
						<th>状态</th>
						<th>链接类型</th>
						<th>位置</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>
	<%-- footer start --%>
	<jsp:include page="/jsp/admin/footer.jsp" />
	<%-- footer end --%>
</div>
<%-- content end --%>

<div id="edit-modal">
	<form class="am-form am-form-horizontal" id="edit-form">
		<br> <input type="hidden" name="id">
		<div class="am-form-group">
			<label class="am-u-sm-2 am-form-label">组名称</label>
			<div class="am-u-sm-10">
				<input type="text" name="name" placeholder="用户组名称(必填)" required>
			</div>
		</div>
		<div class="am-form-group">
			<label class="am-u-sm-2 am-form-label">组描述</label>
			<div class="am-u-sm-10">
				<textarea name="descr" placeholder="用户组的描述信息" maxlength="100"></textarea>
			</div>
		</div>
	</form>
</div>
<script type="text/javascript">
	$.getScript("<%=request.getContextPath()%>/resources/js/admin/indexPic/indexPic.js");
</script>