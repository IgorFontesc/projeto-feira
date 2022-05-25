<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "model.ConectandoBd" import = "java.sql.* " %>

<%	
    
	 	ConectandoBd bd = new ConectandoBd();
    	Connection conexao = bd.feiraOnline();
    	
    	String Sql = "select * from tblProdutos";
    	Statement st = (Statement) conexao.createStatement();
    	ResultSet rs = ((java.sql.Statement) st).executeQuery(Sql);
    	
    %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/estilo.css">
    <title>Document</title>
</head>
<body>
    <header class="cabecalho">
        <div class="logo">
            <a href="index.html">Feira Online</a>
        </div>
        <nav id="nav" class="menu">

            <button class="text-decoration-none" id="btn-mobile"> <img src="imagens/menu_hamburguer.svg" alt=""></button>

            <ul id="menu">
                  <li><a href="cadastro.jsp">Cadastro</a></li>
                <li><a href="alterar.jsp">Alterar</a></li>
                <li><a href="excluir.jsp">Excluir</a></li>
                <li><a href="loja.jsp">Loja</a></li>
            </ul>
        </nav>
        <script src="javaScript/app.js"></script>
        <div>
            <button type="button"><img src="" alt=""></button>
        </div>
    </header>
    
    <div class="menu-lateral">
        <nav class="lateral">
            <ul>
                <li class="icons"><a href=""><img class="img-sociais" src="imagens/linkedin-svgrepo-com.svg" alt=""></a></li>
                <li class="icons"><a href=""><img class="img-sociais" src="imagens/instagram-svgrepo-com.svg" alt=""></a></li>
                <li class="icons"><a href=""><img class="img-sociais" src="imagens/github-svgrepo-com.svg" alt=""></a></li>
            </ul>
        </nav>
    </div>
    <h1 class="titulo">Excluir Produtos</h1>
    <h2 class="subTitulo">Produtos Cadastrados</h2>

    <div class="tabela">
        <fieldset>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Valor Unítario</th>
                    <th scope="col">Atualizar</th>

                </tr>
                </thead>
                 <% while (rs.next())
                	
            	{%>
                <tbody>
                <tr>
                	<td><%=rs.getString("idProduto") %> </td>
            		<td><%=rs.getString("nome") %></td>
            		<td><%=rs.getString("preco") %></td>
					<td><a href="controller/excluindo.jsp?id=<%=rs.getInt("idProduto") %>">Excluir</a></td>
                </tr>
                
                 <%}
            
		            rs.close();
		            st.close();
    	
            	%>
        		
            </table>
        </fieldset>
        <div class="botao_tabela">
            <a href="index.jsp"><button id="btn-inicial" type="button">Voltar</button></a>
        </div> 
    </div>
</body>
</html>