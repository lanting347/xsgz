<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
	<script  type="text/javascript" src="../../js/jquery-1.8.3.min.js"></script>
	<script  type="text/javascript" src="../../js/jquery.easyui.min.js"></script>
	<script  type="text/javascript" src="../../js/easyui-lang-zh_CN.js"></script>
	<script  type="text/javascript" src="../../js/motivationalScholarships.js"></script>
	<script  type="text/javascript" src="../../js/downandlook.js"></script>
	<script type="text/javascript">
    	var basePath = "${basePath}";
    	var adminPath = "${adminPath}";
    	var type = 5;
    </script>
    <link rel="stylesheet" type="text/css" href="../../js/themes/default/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="../../js/themes/icon.css"/>
    <link rel="stylesheet" type="text/css" href="../../css/poor.css"/>
</head>

<body>
    <div id="content">
    <!--下拉列表-->
    <div id="list">
    	<input id="cc" class="easyui-combobox" name="dept"   
    data-options="valueField:'classId',textField:'className',url:'admin_queryClasses.gdou',missingMessage:'请选择',
		 required:true" />
    </div>
    <!--表格显示--> 
    <div id="table">
    	<table id="dg" class="easyui-datagrid" title="励志奖学金" style="width:1150px;height:350px"
			data-options="rownumbers:true,singleSelect:false,method:'get'"
			toolbar="#toolbar" pagination="true"
            rownumbers="true" fitColumns="true" singleSelect="true">
		<thead>
			<tr>
				<th data-options="field:'ck',checkbox:true"  ></th>
				<th data-options="field:'studentNum',width:120,align:'center'">学号</th>
				<th data-options="field:'studentName',width:90">姓名</th>
				<th data-options="field:'fileId',width:170">申请表</th>
				<th data-options="field:'level',width:100,align:'center'" >贫困等级</th>
			</tr>
		</thead>
	</table> 
    </div>
    
     <!-- 已申请表格 -->
    <div id="table_2" style="display:none;">
    	<table id="dg_2" class="easyui-datagrid"  style="width:600px;height:350px"
			data-options="singleSelect:false,url:'admin_showAllotResult.gdou?type=5',method:'get'"
			toolbar="#toolbar" rownumbers="true" fitColumns="true">
		<thead>
			<tr>
				<th data-options="field:'studentNum',width:120,align:'center'">学号</th>
				<th data-options="field:'studentName',width:90">姓名</th>
				<th data-options="field:'fileId',width:170">申请表</th>
				<th data-options="field:'level',width:125,align:'center'" >贫困等级</th>
			</tr>
           
		</thead>
	</table> 
    </div>
    
    <!--确定按钮-->
    <div id="sure_button">
    	 <a id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'" onclick="getSelections()">确定</a>&nbsp; &nbsp; 
    	 <a id="btn2" href="#"  class="easyui-linkbutton" data-options="iconCls:'icon-search'" onclick="test()">查看申请者资料</a>&nbsp;&nbsp;
    	 <a id="btn3" href="#"  class="easyui-linkbutton" data-options="iconCls:'icon-search'" onclick="test()">查看已申请者资料</a>
    </div>
    
	</div>
</body>
</html>
