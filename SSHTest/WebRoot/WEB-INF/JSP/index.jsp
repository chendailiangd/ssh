<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My SSH</title>
  </head>
  
  <body>
    <h3 align ="center">我的SSH页面</h3>
    <s:iterator var="pt"  value="plistTen">
    	姓名：<s:property value="#pt.name"/>
    	电话：<s:property value ="#pt.phone"/>
    	邮箱：<s:property value ="#pt.email"/>
    	<a href="${pageContext.request.contextPath }/people_toUpdatePeople.action?pid=<s:property value="#pt.pid"/>">修改</a>
    	<a href="${pageContext.request.contextPath }/people_deletePeople.action?pid=<s:property value="#pt.pid"/>">删除</a>
    	<br>
    </s:iterator>
    
    
<!-- 插入数据库操作开始   -->  
    <h3>向数据库存入信息</h3>
    <div><s:actionmessage/></div>
    <form action="${pageContext.request.contextPath }/people_insertPeople.action"  method="post">
    	<table width="300" border="0">
  <tr>
    <td>姓名：</td>
    <td><input id="name" name="name" type="text"/></td>
  </tr>
  <tr>
    <td>电话：</td>
    <td><input id="phone" name="phone" type="text"/></td>
  </tr>
  <tr>
    <td>邮箱：</td>
    <td><input id="email" name="email"  type="text"/></td>
  </tr>
  <tr>
    <td>地址：</td>
    <td><input id="address" name="address"  type="text"/></td>
  </tr>
  <tr>
    <td>别名：</td>
    <td><input id="username" name="username"  type="text"/></td>
  </tr>
  <tr>
    <td>爱好：</td>
    <td><input id="hobby" name="hobby"  type="text"/></td>
  </tr>
  <tr>
    <td>性别：</td>
    <td><input id="sex" name="sex"  type="text"/></td>
  </tr>
  <tr>
    <td>婚否：</td>
    <td><input id="marry"  name="marry"  type="text"/></td>
  </tr>
   <tr>
    <td><input type="button" value="重置">  </td>
    <td><input type="submit" /></td>
  </tr>
  
</table>
</form>
<!-- 插入数据库操作结束   -->    


<a href="${pageContext.request.contextPath}/people_findOnePage.action?page=1"><strong>查看全部信息 </strong> </a>
    
  </body>
</html>
