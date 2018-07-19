<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<title>This is Customer List</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
	</head>
	<body>
		<div id="wrapper">
			<div id="header">
				<h2>
					CRM- Customers List
				</h2>
			</div>
		</div>
		<div id="container">
			<div id="content">
				<table>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
					</tr>
					<c:forEach var="tempCustomers" items="${customers}">
						<tr>
							<td> ${tempCustomers.firstName}</td>
							<td> ${tempCustomers.lastName}</td>
							<td> ${tempCustomers.email}</td>
						</tr>	
					</c:forEach>
				
				
				</table>
			</div>
		
		</div>
		
		
		
	</body>
</html>