<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script type="text/javascript" src="/JavaScript/jQuery-1.11.3.js"></script>
<script type="text/javascript">
	$(function(){
		$(":input[name='username']").change(function(){
			var value = $(this).val();
			value = $trim(value);
			if(value != null){
				var url = "/usernameMesenge";
				var args = {"username":value};
				
				$.post(url,function(date){
					$("#messenge").html(date);
				});
			}
				
			return false;
		});
	});
</script>
<title>Insert title here</title>
</head>
<body>
	用户名：<input type="username" value="请输入名字？"/>
	<div id="massenge"></div>
	<input type="button" value="submit"/>
</body>
</html>