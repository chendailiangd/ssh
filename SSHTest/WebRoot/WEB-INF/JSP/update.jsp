<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My SSH</title>
<script  src="${pageContext.request.contextPath}/js/jquery.min.js"></script>    
<script>
function checkForm(){
  	var name = document.getElementById("name").value;
  	if(name==null||name==''){
  		alert("用户名不能为空！");
  		return false;
  	}
}
//使用Ajax检测手机号是否重复
function checkPhone(){
	var phone = document.getElementById("phone").value;
	$.get("${pageContext.request.contextPath}/people_findByPhone.action?phone="+phone,function(info){
		$("#span1").html(info)
	})
	
}



</script>    
    
    
  </head>
  
  <body>
    <h3 align ="center">我的SSH页面</h3>

    
    
<!-- 修改people信息开始   -->  
    <h3>修改信息操作</h3>
<form action="${pageContext.request.contextPath }/people_updatePeople.action?pid=<s:property value="#session.singlePeople.pid"/>"  method="post" 
	onsubmit="return checkForm()"
>
    	<table width="300" border="0">
  <tr>
    <td>姓名：</td>
    <td><input id="name" name="name" type="text" value="<s:property value="#session.singlePeople.name"/>"/> </td>
  </tr>
  <tr>
    <td>电话：</td>
<td><input id="phone" name="phone" type="text"  
    value="<s:property value="#session.singlePeople.phone"/>" 
    	 onblur="checkPhone()"  /> <span id="span1" ></span><s:actionmessage/> </td>
  </tr>
  <tr>
    <td>邮箱：</td>
    <td><input id="email" name="email"  type="text"  value="<s:property value="#session.singlePeople.email"/>"/></td>
  </tr>
  <tr>
    <td>地址：</td>
    <td><input id="address" name="address"  type="text" value="<s:property value="#session.singlePeople.address"/>"/></td>
  </tr>
  <tr>
    <td>别名：</td>
    <td><input id="username" name="username"  type="text" value="<s:property value="#session.singlePeople.username"/>"/></td>
  </tr>
  <tr>
    <td>爱好：</td>
    <td><input id="hobby" name="hobby"  type="text" value="<s:property value="#session.singlePeople.hobby"/>"/></td>
  </tr>
  <tr>
    <td>性别：</td>
    <td><input id="sex" name="sex"  type="text" value="<s:property value="#session.singlePeople.sex"/>"/></td>
  </tr>
  <tr>
    <td>婚否：</td>
    <td><input id="marry"  name="marry"  type="text" value="<s:property value="#session.singlePeople.marry"/>"/></td>
  </tr>
   <tr>
    <td><input type="button" value="重置">  </td>
    <td><input type="submit"  value="修改"/></td>
  </tr>
  
</table>



</form>
<!-- 修改people信息结束  -->    



    
  </body>
</html>
