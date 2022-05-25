<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import= "model.Produto" import= "model.ConectandoBd" import="java.sql.*" %>
    
    
      <%
	
	ConectandoBd bd = new ConectandoBd();
	Produto pd=null;
    int id=0;  
	try{
		
		id = Integer.parseInt(request.getParameter("id"));	
		pd = bd.buscar(id);
	
	}catch(Exception e){}
	
	try{
		
		String gravar= request.getParameter("txtNome");
		if(gravar!= null || gravar.equals("")==false);
		
		{
		
			pd.setNome(request.getParameter("txtNome"));
			pd.setPreco(request.getParameter("txtUnitario"));
			pd.setId(id);
		
			
			bd.editar(pd);
			
			response.sendRedirect("../alterar.jsp");
		}
		
		
	}catch(Exception e){
		
	}

	finally{}
	
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
            <a href="index.jsp">Feira Online</a>
        </div>
        <nav id="nav" class="menu">

            <button class="text-decoration-none" id="btn-mobile"> <img src="../imagens/menu_hamburguer.svg" alt=""></button>

            <ul id="menu">
                <li><a href="../index.jsp">Home</a></li>
                <li><a href="../cadastro.jsp">Cadastro</a></li>
                <li><a href="../index.jsp">Alterar</a></li>
                <li><a href="../index.jsp">Excluir</a></li>
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
            <h1 class="controle-titulo">Cadastro de Produtos</h1>
        </div>
    </section>

    <div class="container-form">
        <form class="formulario" action="alterando.jsp?id=<%=id%>" method="post">
        
            <div class="form-entrada"> 
                <label  for="nome">Nome/Produto</label>
                <input class="input-form" type="text" name="txtNome" id="nome">
            </div>
            <div class="form-entrada entrada-dois">
                <label  for="unitario">Valor Unítario</label>
                <input class="input-form" type="text" name="txtUnitario" id="unitario">
            </div>
            
            <script>
            	
				document.getElementsByName("txtNome")[0].value="<%=(pd.getNome())%>";
				document.getElementsByName("txtUnitario")[0].value="<%=(pd.getPreco())%>";
				
        	</script>
        
            <div>
                <button id="botao-form" type="submit">Enviar</button>
            </div>
        </form>
    </div> 
     <div class="botao_tabela">
            <a href="../index.jsp"><button id="btn-inicial" type="button">Voltar</button></a>
        </div> 
</body>
</html>