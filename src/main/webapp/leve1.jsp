<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	tr{
		border: 1px solid #000000;
	}
	td{
		border: 1px solid #000000;
	}
</style>
</head>
<body>
	<%
	String processor = request.getParameter("processor");
	String[] peripherals = request.getParameterValues("peripherals");
	%>
	<h1>Order Sumary</h1>
	<table>
		<tr>
			<td>Processor:</td>
			<td>
				<p>
					<%=processor%>
				</p>
			</td>
		</tr>
		<tr>
			
			<td>Acessories:</td>
			<td>
				<%
				if (peripherals != null) {
					for (int i = 0; i < peripherals.length; i++) {
				%> <%=peripherals[i]%><br> 
				<%
 					}
 						}
 				%>
			</td>
		</tr>
	</table>
</body>
</html>
