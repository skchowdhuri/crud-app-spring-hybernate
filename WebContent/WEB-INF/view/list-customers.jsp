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
			
			
				<input type="button" value="Add Customer" onClick="window.location.href='showFormForAdd'; return false;" class="add-button"/>
			
				<table>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Action</th>
					</tr>
					<c:forEach var="tempCustomers" items="${customers}">
						<c:url var="updateLink" value="/customer/showFormForUpdate">
							<c:param name="customerId" value="${tempCustomers.id}" />
						</c:url>
						<c:url var="deleteLink" value="/customer/delete">
							<c:param name="customerId" value="${tempCustomers.id}" />
						</c:url>
						<tr>
							<td> ${tempCustomers.firstName}</td>
							<td> ${tempCustomers.lastName}</td>
							<td> ${tempCustomers.email}</td>
							<td> <a href="${updateLink}">Update</a> | 
							<a href="${deleteLink}" onclick="if(!(confirm('Are you sure you eant to delete this customer?'))) return false">Delete</a></td>
						</tr>	
					</c:forEach>
				
				
				</table>
			</div>
		
		</div>
		
		
		
	</body>
</html>