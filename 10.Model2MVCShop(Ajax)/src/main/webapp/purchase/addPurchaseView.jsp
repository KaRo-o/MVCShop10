
<%@page import="com.model2.mvc.service.domain.Purchase"%>
<%@page import="com.model2.mvc.service.domain.User"%>
<%@page import="com.model2.mvc.service.domain.Product"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>


<%-- <%
Product product = (Product)request.getAttribute("product");

User user=(User)session.getAttribute("user");

Purchase purchase = (Purchase)request.getAttribute("purchase");
%> --%>




<html>
<head>
<title>Insert title here</title>
</head>

<body>

<form name="updatePurchase" action="/updatePurchaseView?tranNo=0" method="post">

������ ���� ���Ű� �Ǿ����ϴ�.

<table border=1>
	<tr>
		<td>��ǰ��ȣ</td>
		<td>${purchase.purchaseProd.prodNo }</td>
		<td></td>
	</tr>
	<tr>
		<td>�����ھ��̵�</td>
		<td>${purchase.buyer.userId}</td>
		<td></td>
	</tr>
	<tr>
		<td>���Ź��</td>
		<td>
		
		<c:if test="${purchase.paymentOption eq '1' }">���ݱ���</c:if>
		<c:if test="${purchase.paymentOption eq '2' }">�ſ뱸��</c:if>
		
			<%-- <%if (purchase.getPaymentOption().equals("1")) {%>
			    ���ݱ���
			<%}else if(purchase.getPaymentOption().equals("2")){ %>
					�ſ뱸��
			<% } %> --%>
		</td>
		<td></td>
	</tr>
	<tr>
		<td>�������̸�</td>
		<td>${purchase.receiverName }</td>
		<td></td>
	</tr>
	<tr>
		<td>�����ڿ���ó</td>
		<td>${purchase.receiverPhone }</td>
		<td></td>
	</tr>
	<tr>
		<td>�������ּ�</td>
		<td>${purchase.dlvyAddr }</td>
		<td></td>
	</tr>
		<tr>
		<td>���ſ�û����</td>
		<td>${purchase.dlvyRequest }</td>
		<td></td>
	</tr>
	<tr>
		<td>����������</td>
		<td>${purchase.dlvyDate }</td>
		<td></td>
	</tr>
</table>
</form>

</body>
