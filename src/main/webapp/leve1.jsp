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
	String[] Monitor_select = request.getParameterValues("Monitor_select");
	String[] Printer_select = request.getParameterValues("Printer_select");
	String[] Scanner_select = request.getParameterValues("Scanner_select");
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
 				
 				<%
				if (Monitor_select != null) {
					for (int i = 0; i < Monitor_select.length; i++) {
				%> <%=Monitor_select[i]%><br> 
				<%
 					}
 						}
 				%>
 				<%
				if (Printer_select != null) {
					for (int i = 0; i < Printer_select .length; i++) {
				%> <%=Printer_select [i]%><br> 
				<%
 					}
 						}
 				%>
 				<%
				if (Scanner_select != null) {
					for (int i = 0; i < Scanner_select.length; i++) {
				%> <%=Scanner_select[i]%><br> 
				<%
 					}
 						}
 				%>
 				
 				
			</td>
		</tr>
	</table>
</body>
</html>
