<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>权限维护</title>
	<script type="text/javascript" src="SysDefUtil/Origin.js"></script>
	<script type="text/javascript">
		InitCompriseCss(BassModuleUrlB+"css/bootstrap.css");
		InitCompriseCss(BassModuleUrlB+"font-awesome/4.5.0/css/font-awesome.css");
		InitCompriseCss(BassModuleUrlB+"css/ace.css");
		InitComprise(BassModuleUrl+"Tree/zTree.js");
		InitComprise(BassModuleUrl+"Loading/Loading.js");//Loading.js效果不佳，时间间隔太短
		InitComprise("SystemMaintenance/JavaScript/RightManagement.js");
		InitCompriseCss("SystemMaintenance/Css/RightManagement.css");
	</script>
	
  </head>
  
  <body onload="RM.initLoad();">
  	<div id="content" class="container-fluid" style="overflow:hidden;">
	  	<!-- leftDiv start -->
	  	<div id="leftDiv">
	  		<div id="group_info" class="widget-box">
				<div class="widget-header">
					<h4 class="widget-title">管理员组</h4>
				</div>
				<div class="widget-body">
					<div id="group_tree" class="widget-main">
						<div id="nr_tree">
							<ul id="treeData" class="ztree"></ul>
						</div>
					</div>
				</div>
			</div>
	   	</div>
	   	<!-- leftDiv end -->
	   	<!-- rightDiv start -->
	   	<div id="rightDiv">
	   		<div id="XTXX" style="height:200px;">
	   			<!-- xt_left start -->
	   			<div id="xt_left" class="widget-box">
					<div class="widget-header">
						<h4 class="widget-title" style="color:red">未分配系统</h4>
					</div>
					<div class="widget-body">
						<div id="nr_left" class="widget-main">
							<select multiple="multiple" id="noUse_system" onchange="RM.noUse_system_change(this);" >
								
							</select>
						</div>
					</div>
				</div>
				<!-- xt_left end -->
				<!-- xt_center start -->
	   			<div id="xt_center" class="widget-box">
	   				<div class="widget-header">
	   					
	   				</div>
	   				<div class="widget-body" >
	   					<div id="nr_center" class="widget-header">
	   						<div class="btn-group btn-group-vertical" style="padding:0px;margin-top:10px;">
								<button id="btn_right" class="btn btn-sm btn-primary" type="button" onclick="RM.btn_right()" disabled="disabled">
									<i class="icon-only ace-icon fa fa-angle-right"></i>
								</button>
								<button id="btn_left" class="btn btn-sm btn-primary" type="button" onclick="RM.btn_left()" disabled="disabled">
									<i class="icon-only ace-icon fa fa-angle-left"></i>
								</button>
								<button id="btn_right_all" class="btn btn-sm btn-primary" type="button" onclick="RM.btn_right_all()" disabled="disabled">
									<i class="icon-only ace-icon fa fa-angle-double-right"></i>
								</button>
								<button id="btn_left_all" class="btn btn-sm btn-primary" type="button" onclick="RM.btn_left_all()" disabled="disabled">
									<i class="icon-only ace-icon fa fa-angle-double-left"></i>
								</button>
							</div>
	   					</div>
	   				</div>
	   			</div>
	   			<!-- xt_center end -->
	   			<!-- xt_right start -->
	   			<div id="xt_right" class="widget-box" >
	   				<div class="widget-header">
						<h4 class="widget-title" style="color:green">已分配系统</h4>
					</div>
					<div class="widget-body">
						<div id="nr_right" class="widget-main">
							<select multiple="multiple" id="Use_system" onchange="RM.Use_system_change(this);" >
								
							</select>
						</div>
					</div>
	   			</div>
	   			<!-- xt_right end -->
	   		</div>
	   		<!-- rightDiv end -->
	   		<!-- qx_info start -->
	   		<div id="qx_info" class="widget-box" >
				<div class="widget-header">
					<h4 class="widget-title">菜单权限信息</h4>
				</div>
				<div class="widget-body">
					<div id="qx_menu" class="widget-main">
						<div id="qx_nr_tree">
							<ul id="qx_treeData" class="ztree"></ul>
						</div>
						<div id="qx_btn" align="right">
							<button id="qx_btn_update" class="btn btn-sm btn-primary" type="button" onclick="RM.qx_btn_update()" >
								修改
							</button>
							<button id="qx_btn_save" class="btn btn-sm btn-primary" type="button" onclick="RM.qx_btn_save()" >
								保存
							</button>
							<button id="qx_btn_cancel" class="btn btn-sm btn-primary" type="button" onclick="RM.qx_btn_cancel()" >
								取消
							</button>
						</div>
					</div>
					
				</div>
			</div>
			<!-- qx_info end -->
	   	</div>
   	</div>
  </body>
</html>
