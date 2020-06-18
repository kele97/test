<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
    	<meta charset="UTF-8">
        <title>
        	    测试
        </title>
        <script src="static/jquery/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
        <script src="static/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="static/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        
        <script type="text/javascript">
        $(document).ready(function () {
        	        var time = new Date();
        	        var day = ("0" + time.getDate()).slice(-2);
        	        var month = ("0" + (time.getMonth() + 1)).slice(-2);
        	        var today = time.getFullYear() + "-" + (month) + "-" + (day);
        	        $('#date').val(today);
        	
        	var ciValue = $('#roomList');
        	 ciValue.append('<option value=""></option>'); 
        	
        	$.ajax({
	            url: "selectRoom",
	            type: 'get',
	            dataType: 'json',
	            success:function(data) {
	            	if (data && data.length > 0) { 
	                    var html = []; 
	                     for (var i = 0; i < data.length; i++) { 
	                         html.push('<option value="'+data[i].roomId+'">'+data[i].roomName+'</option>');
	                       } 
	                     ciValue.append(html.join('')); 
	                 } 
	            }
	    	});
        })
        
        
        	function submit(){
        		// 房间Id
        		let roomId = $("#roomId").text();
        		// 开始时间
        		let startTime = $("#startTime").val();
        		// 结束时间
        		let endTime = $("#endTime").val();
        		// 预订者
        		let subscriber = $("#subscriber").val();
        		// 手机
        		let phone = $("#phone").val();
        		// 邮箱
        		let email = $("#email").val();
        		// 原因
        		let reason = $("#reason").val();
        		// 备注
        		let remarks = $("#remarks").val();
        		
        		var success = 1;
        		
        		//前端校验 
        		// TODO 位数校验
        		// TODO 下拉框优化
        
        		// 开始时间
        		if(startTime == "" || $.trim(startTime).length == 0){
        			$("#startTimeMsg").css("display", "");
        			success = 0;
        		}else{
        			$("#startTimeMsg").css("display", "none");
        		}
        		// 结束时间
        		if(endTime == "" || $.trim(endTime).length == 0){
        			$("#endTimeMsg").css("display", "");
        			success = 0;
        		}else{
        			$("#endTimeMsg").css("display", "none");
        		}
        		// 预订者
        		if(subscriber == "" || $.trim(subscriber).length == 0){
        			$("#subscriberMsg").css("display", "");
        			success = 0;
        		}else{
        			$("#subscriberMsg").css("display", "none");
        		}
        		// 手机
        		if(phone == "" || $.trim(phone).length == 0){
        			$("#phoneMsg").css("display", "");
        			success = 0;
        		}else{
        			$("#phoneMsg").css("display", "none");
        		}
        		// 原因
        		if(reason == "" || $.trim(reason).length == 0){
        			$("#reasonMsg").css("display", "");
        			success = 0;
        		}else{
        			$("#reasonMsg").css("display", "none");
        		}
        		
        		if(parseInt(startTime) >= parseInt(endTime)){
        			$("#endTimeMsg_1").css("display", "");
        			success = 0;
        		}else{
        			$("#endTimeMsg_1").css("display", "none");
        		}
        		//  1:true 0:false
        		if(success){
        			 $.ajax({
        		            url: "orderRoom",
        		            type: 'post',
        		            dataType: 'json',
        		            data: {
        		            	roomId : $("#roomId").val(),
        		            	// TODO 日期控件传值
        		            	date : "2020-06-05",
        		            	startTime : $("#startTime").val(),
        		            	endTime : $("#endTime").val(),
        		            	subscriber : $("#subscriber").val(),
        		            	phone : $("#phone").val(),
        		            	email : $("#email").val(),
        		            	reason : $("#reason").val(),
        		            	remarks : $("#remarks").val()
        		            },
        		            success:function(data) {
        		            	if(data.code == '-1'){
        		            		alert(data.msg);
        		            	}else {
        		            		$('#myModal').modal('hide');
        		            		alert("预约成功！");
        		            		// TODO 数据初始化
        		            	}
        		            }
        		     });
        		}
        	}
        	
        	function return_json(json){
	            alert(json.name);
	        }
        	
        	
        	function select(){
        		window.location.href="http://localhost:8080/neusoft/order?time=" + $("#date").val() + "&roomId=" + $("#roomList").val();
	        }
        </script>
    </head>
    <body>
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"><span class="sr-only">Toggle navigation</span></button> <a class="navbar-brand" href="#">Brand</a>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active">
                                <a href="#">Link</a>
                            </li>
                            <li>
                                <a href="#">Link</a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown</a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="#">Action</a>
                                    </li>
                                    <li>
                                        <a href="#">Another action</a>
                                    </li>
                                    <li>
                                        <a href="#">Something else here</a>
                                    </li>
                                    <li>
                                        <a href="#">Separated link</a>
                                    </li>
                                    <li>
                                        <a href="#">One more separated link</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">预约</button>
                        <ul class="nav navbar-nav navbar-right">
                        	<!-- TODO 日期控件选择，bootstrap的datetimepicker layui的laydate -->
                        	<li style="margin-top: 10px;margin-right: 10px;">
                        		<input id="date" type="date"/>
                        	</li>
                            <li style="margin-top: 5px;margin-right: 10px;">
                              <select id="roomList" class="form-control" style="width:100px;font-size:14px" >
  								</select>
                            </li>
                            <li>
                                <button class="btn btn-primary btn-lg"  onclick="select()" >查询</button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <div class="row-fluid">
		<div class="span12">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>
							编号
						</th>
						<th>
							房间
						</th>
						<th>
							开始时间
						</th>
						<th>
							结束时间
						</th>
						<th>
							预订人
						</th>
						<th>
							原因
						</th>
						<th>
							手机
						</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="item" items="${orderList}" varStatus="i">
					<tr>
						<td>
							${i.index + 1}
						</td>
						<td>
							${item.roomName}
						</td>
						<td>
							${item.startTime}
						</td>
						<td>
							${item.endTime}
						</td>
						<td>
							${item.subscriber}
						</td>
						<td>
							${item.reason}
						</td>
						<td>
							${item.phone}
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			<div>
				<nav aria-label="...">
  				<ul class="pagination">
    				<li class="page-item disabled">
     					 <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
    				</li>
    				<li class="page-item"><a class="page-link" href="#">1</a></li>
    				<li class="page-item active" aria-current="page">
     					 <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
    				</li>
    				<li class="page-item"><a class="page-link" href="#">3</a></li>
    				<li class="page-item">
     					 <a class="page-link" href="#">Next</a>
   					 </li>
  				</ul>
			</nav>
			</div>
		</div>
	</div>
        </div>
        
	
        <!-- 模态框（Modal） -->
       <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title">标题</h4>
                </div>
                <div class="modal-body">
                	<ul>
						<li>
                			<div class="control-group">
								<label class="control-label" >会议室</label>
								<div class="controls">
									<input id="roomId" type="hidden" value="1"/>
									<input id="roomName" type="text" value="508" disabled="disabled"/>
								</div>
							</div>
						</li>
					</ul>
					<ul>
						<li>
                			<div class="control-group">
								<label class="control-label" >开始时间 <span style="color:red">*</span></label>
								<span id="startTimeMsg" style="color:red; display:none;">开始时间不能为空</span>
								<select id="startTime" class="form-control" style="width:100px;font-size:14px" >
  									<option value="0">09:00</option>
  									<option value="1">09:30</option>
  									<option value="2">10:00</option>
  									<option value="3">10:30</option>
  									<option value="4">11:00</option>
  									<option value="5">11:30</option>
  									<option value="6">12:00</option>
  									<option value="7">12:30</option>
  									<option value="8">13:00</option>
  									<option value="9">13:30</option>
  									<option value="10">14:00</option>
  									<option value="11">14:30</option>
  									<option value="12">15:00</option>
  									<option value="13">15:30</option>
  									<option value="14">16:00</option>
  									<option value="15">16:30</option>
  									<option value="16">17:00</option>
  									<option value="17">17:30</option>
  									<option value="18">18:00</option>
  									<option value="19">18:30</option>
  									<option value="20">19:00</option>
  									<option value="21">19:30</option>
  									<option value="22">20:00</option>
  									<option value="23">20:30</option>
								</select>
							</div>
						</li>
					</ul>
					<ul>
						<li>
                			<div class="control-group">
								<label class="control-label" >结束时间 <span style="color:red">*</span></label>
								<span id="endTimeMsg" style="color:red; display:none;">结束时间不能为空</span>
								<span id="endTimeMsg_1" style="color:red; display:none;">开始时间大于结束时间</span>
								<select id="endTime" class="form-control" style="width:100px;font-size:14px" >
  									<option value="1">09:30</option>
  									<option value="2">10:00</option>
  									<option value="3">10:30</option>
  									<option value="4">11:00</option>
  									<option value="5">11:30</option>
  									<option value="6">12:00</option>
  									<option value="7">12:30</option>
  									<option value="8">13:00</option>
  									<option value="9">13:30</option>
  									<option value="10">14:00</option>
  									<option value="11">14:30</option>
  									<option value="12">15:00</option>
  									<option value="13">15:30</option>
  									<option value="14">16:00</option>
  									<option value="15">16:30</option>
  									<option value="16">17:00</option>
  									<option value="17">17:30</option>
  									<option value="18">18:00</option>
  									<option value="19">18:30</option>
  									<option value="20">19:00</option>
  									<option value="21">19:30</option>
  									<option value="22">20:00</option>
  									<option value="23">20:30</option>
  									<option value="24">21:00</option>
  								</select>
							</div>
						</li>
					</ul>
					<ul>
						<li>
                			<div class="control-group">
								<label class="control-label" >预订者 <span style="color:red">*</span></label>
								<span id="subscriberMsg" style="color:red; display:none;">预订者不能为空</span>
								<div class="controls">
									<input id="subscriber" type="text" />
								</div>
							</div>
						</li>
					</ul>
					<ul>
						<li>
                			<div class="control-group">
								<label class="control-label" >手机 <span style="color:red">*</span></label>
								<span id="phoneMsg" style="color:red; display:none;">手机号不能为空</span>
								<div class="controls">
									<input id="phone" type="text" />
								</div>
							</div>
						</li>
					</ul>
					<ul>
						<li>
                			<div class="control-group">
								<label class="control-label" >邮箱</label>
								<div class="controls">
									<input id="email" type="text" />
								</div>
							</div>
						</li>
					</ul>
					<ul>
						<li>
                			<div class="control-group">
								<label class="control-label" >原因 <span style="color:red">*</span></label>
								<span id="reasonMsg" style="color:red; display:none;">原因不能为空</span>
								<select id="reason" class="form-control" style="width:150px;font-size:14px" >
  									<option value="0">项目评审</option>
  									<option value="1">项目会议</option>
  									<option value="2">部门会议</option>
  									<option value="3">客户来访</option>
  									<option value="4">培训</option>
  									<option value="5">面试</option>
  									<option value="6">其他</option>
								</select>
							</div>
						</li>
					</ul>
					<ul>
						<li>
                			<div class="control-group">
								<label class="control-label" >备注</label>
								<div class="controls">
									<textarea id="remarks" rows="2" cols="50">
									</textarea>
								</div>
							</div>
						</li>
					</ul>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary" onclick="submit();">提交</button>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>