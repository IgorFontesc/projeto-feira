<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.Produto" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
		<%

			int id = 0;	
			try{
				id = Integer.parseInt(request.getParameter("id"));
				Produto bd=new Produto();
				bd.excluirProduto(id);				
			}catch(Exception e)
			{		}

				
			response.sendRedirect("../excluir.jsp");

%>
	
</body>
</html>