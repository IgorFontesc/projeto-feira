<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.Produto"%>
    
    
    <%
    	String varNome;
    	String varPreco;
    	String varMsg;
    
    	varNome = request.getParameter("txtNome");
    	varPreco = request.getParameter("txtUnitario");
    	
    	Produto novoProduto =  new Produto();
    	
    	novoProduto.setNome(varNome);
    	novoProduto.setPreco(varPreco);
    	
    	if(novoProduto.cadastrar())
    		varMsg = "Inserido com Sucesso";
    	else
    		varMsg = "Não foi possivel inserir os dados no banco de Dados";
    %>
    
    
	<!DOCTYPE html>
	<html lang="pt-br">
	<head>
	    <meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	    <link rel="stylesheet" href="../css/estilo.css">
	    <title>Document</title>
	</head>
	<body>
	    <header class="cabecalho">
	        <div class="logo">
	            <a href="../index.jsp">Feira Online</a>
	        </div>
	        <nav id="nav" class="menu">
	
	            <button class="text-decoration-none" id="btn-mobile"> <img src="../imagens/menu_hamburguer.svg" alt=""></button>
	
	            <ul id="menu">
	                <li><a href="../cadastro.jsp">Cadastro</a></li>
                	<li><a href="../alterar.jsp">Alterar</a></li>
                	<li><a href="../excluir.jsp">Excluir</a></li>
                	<li><a href="../loja.jsp">Loja</a></li>
	            </ul>
	        </nav>
	        <script src="../javaScript/app.js"></script>
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
	    <section class="container">
	        <div class="caixa-controle">
	            <h1 class="controle-titulo">Controle de Produtos</h1>
	        </div>
	    </section>
	    <div class="opcao">
			<a href="../cadastro.jsp"><button  id="btn-inicial">Cadastrar</button></a>
	        <a href="../alterar.jsp"><button  id="btn-inicial">Alterar</button></a>
	        <a href="../excluir.jsp"><button  id="btn-inicial">Excluir</button></a>
	    </div>
	</body>
	</html>