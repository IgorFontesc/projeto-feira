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
    <link rel="stylesheet"  href="./css/estilo.css">
    <title>Document</title>
</head>
<body>
    <header class="cabecalho">
        <div class="logo">
            <a href="loja.jsp">Feira Online</a>
        </div>
        <nav id="nav" class="menu">

            <button class="text-decoration-none" id="btn-mobile"> <img src="imagens/menu_hamburguer.svg" alt=""></button>

            <ul id="menu">
                <li><a href="loja.jsp">Home</a></li>
                <li><a href="loja.jsp">loja</a></li>
                <li><a href="index.jsp">Área do funcionaio</a></li>

            </ul>
        </nav>
        <div>
            <button type="button"><img src="" alt=""></button>
        </div>
    </header>
    
    <div id="carrinho" class="menu-carrinho carrinho">
	    <div class="tabela">
	        <fieldset>
	            <table class="table">
	                <thead>
	                <tr>
	                    <th scope="col">Carrinho</th>
	                    <th scope="col"></th>
	                </tr>
	                </thead>
	                <tr>
	                  
	                </tr>
	                
	            </table>
	        </fieldset>
	        
	        <div>
	            <p>Total Compras</p>
	        </div>
	        
	        <div class="botao_tabela">
	            <a href="/"><button id="botao-compras" type="submit">Finalizar Compras</button></a>
	        </div> 
	    </div>

    </div>

    <div class="menu-lateral">
             <button class="botao-carrinho" id="btn-carrinho"><img class="img-sociais" src="./imagens/carrinho.svg" alt=""></button>
    </div>

    <h1 class="titulo">Produtos</h1>

    <div class="tabela">
        <fieldset>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Nome</th>
                    <th scope="col">Valor Unítario</th>
                    <th scope="col">Adicionar ao Carrinho</th>
                </tr>
                </thead>
                
                 <% while (rs.next())
                	
            	{%>
            	
                <tr>
            		<td><%=rs.getString("nome") %></td>
            		<td><input disabled id="preco" value="<%=rs.getString("preco") %>"></td>
					<td><input class="adicionar" id="quantidade" type="number" name="txtQuantidade" ><button type="submit" id="adicionar">Adicionar</button></td>
                </tr>
                
                <%}
            
		            rs.close();
		            st.close();
    	
            	%>
            
            </table>
        </fieldset> 
    </div>
    <script src="./javaScript/app.js"></script>
</body>
</html>