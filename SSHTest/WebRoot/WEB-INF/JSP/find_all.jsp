<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"  %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'find_all.jsp' starting page</title>
  </head>
  <body>
  
 <s:iterator var="p" value="pageBean.list">
  	name:<s:property value ="#p.name"/>
  	phone:<s:property value ="#p.phone"/><br>
 </s:iterator> 
  
  
  <br>
  
  	<div >
		<s:if test="pageBean.page!=1">
			<a href="${pageContext.request.contextPath }/people_findOnePage?page=1" class="firstPage"> first</a>
			<a href="${pageContext.request.contextPath }/people_findOnePage?page=<s:property value="pageBean.page-1"/>" >上一页</a>
		</s:if>
		<s:iterator var="i"   value="pageBean.page"> 
				<a href="${pageContext.request.contextPath }/people_findOnePage?page=<s:property value="#i"/>">
				<s:property value="#i"/></a>
		</s:iterator>		
		 <s:if test="pageBean.page!=pageBean.totalPage">	
			<a href="${pageContext.request.contextPath }/people_findOnePage?page=<s:property value="pageBean.page+1"/>" class="nextPage">下一页</a>
			<a href="${pageContext.request.contextPath }/people_findOnePage?page=<s:property value="pageBean.totalPage"/>" class="lastPage">last</a>
		</s:if>
	</div>


  </body>
</html>
