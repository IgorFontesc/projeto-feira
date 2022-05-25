const btnMobile = document.getElementById('btn-mobile');

function toggleMenu(){
    const nav = document.getElementById('nav');
    nav.classList.toggle('active');

}

btnMobile.addEventListener("click", toggleMenu);



const btnCarrinho = document.getElementById('btn-carrinho');

function abrirCarrinho(){
    const carrinho = document.getElementById('carrinho');
    carrinho.classList.toggle('active');
}

btnCarrinho.addEventListener("click", abrirCarrinho)



const btnAdicionar = document.getElementById('adicionar')
const quantidade = document.getElementById('quantidade').value;


function adicionar(resultado){
    const quantidade = document.getElementById('quantidade').value;
    const preco = document.getElementById('preco').value;
    

    if(quantidade >= 1 ){
       resultado = quantidade * preco;

       console.log(resultado);

       
    }else if(quantidade < 1){
        console.log("impossivel executar");
        
    }
    
    return resultado
}


btnAdicionar.addEventListener("click", adicionar);

