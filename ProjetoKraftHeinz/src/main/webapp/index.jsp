<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.dao.Feedback_Satisfacao_DAO"%>
<%@page import="java.util.List"%>
<%@page import="model.entidades.feedback.Feedback_Satisfacao"%>
    
<% 

List<Feedback_Satisfacao> listaFeedbackSatisfacao = new Feedback_Satisfacao_DAO().pesquisar();
int notasMarketing, notasQualidade, notasVariedade, notasPreco, notasSustentabilidade;
notasMarketing = 0;
notasPreco = 0;
notasVariedade = 0;
notasQualidade = 0;
notasSustentabilidade = 0;

for (Feedback_Satisfacao fs : listaFeedbackSatisfacao) {
	notasMarketing += fs.getMarketing();
	notasQualidade += fs.getQualidade_produtos();
	notasPreco += fs.getPreco();
	notasSustentabilidade += fs.getSustentabilidade();
	notasVariedade += fs.getVariedade_produtos();
}

double mediaMarketingX100 = Math.round((double) notasMarketing / listaFeedbackSatisfacao.size() * 20);
double mediaVariedadeX100 = Math.round((double) notasVariedade / listaFeedbackSatisfacao.size() * 20);
double mediaPrecoX100 = Math.round((double) notasPreco / listaFeedbackSatisfacao.size() * 20);
double mediaQualidadeX100 = Math.round((double) notasQualidade / listaFeedbackSatisfacao.size() * 20);
double mediaSustentabilidadeX100 = Math.round((double) notasSustentabilidade / listaFeedbackSatisfacao.size() * 20);


%>
<!doctype html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>KraftHeinz Feedback</title>
    <!-- Link CSS bootstrap -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
        crossorigin="anonymous">
    <!-- Link CSS nativo -->
    <link rel="stylesheet" href="./CSS/style.css">
    <!-- Link FontAWESOME  -->
    <script src="https://kit.fontawesome.com/003f4742cc.js"
        crossorigin="anonymous" defer></script>

        
</head>
<body class="">
    <!-- Inicio do Header -->
    <header class="fixed-top">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a href=""><img src="./Images/logo.png" width="200rem"
                        alt="Logo da KraftHeinz" href=""></a>
                <button class="navbar-toggler" type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarNavAltMarkup"
                    aria-controls="navbarNavAltMarkup" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end"
                    id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-link active" aria-current="page"
                            href="#">Home</a>
                        <a class="nav-link" href="#titulo-notas">Notas</a>
                        <a class="nav-link" href="#titulo-deixe-feedback">Feedback</a>
                        <a class="nav-link" href="#titulo-comentarios">Comentarios</a>
                          <a class="nav-link" href="#titulo-contato">Contato</a>
                        <a class=" nav-link btn-login  " href="./pages/login_cadastro.jsp">Entrar</a>
                    </div>
                </div>
            </div>
        </nav>
    </header>
    <!-- fim do Header -->
    <main class=" ">
        <!-- Inicio Home -->
        <div class="bg-main">
            <div class="container">
                <div class=" text-center mt-5 pt-5 pb-4">
                    <div class=" ">
                        <div class="col-8 mx-auto position-relative mt-5 p-2 ">
                            <!-- TÃ­tulo sobreposto -->
                            <h3 class="titulo-sobreposto-preto">Sistema de
                                Feedback KraftHeinz</h3>
                            <!-- A linha branca centralizada -->
                            <div class="linha-preta"></div>
                        </div>
                    </div>
                </div>
                <div
                    class="embed-responsive embed-responsive-16by9 d-flex justify-content-center mt-5">
                    <!-- Use a tag <video> para incorporar o vÃ­deo local -->
                    <video class="embed-responsive-item" autoplay controls muted
                        width="800rem">
                        <source
                            src="./video/SnapInsta.io-Innovating the Future of Food.mp4"
                            type="video/mp4">
                        Seu navegador não suporta a reprodução de vídeos.
                    </video>
                </div>
                <div class="container-fluid d-flex justify-content-center">
                    <a class="button my-5" href="#titulo-deixe-feedback">Envie seu Feedback</a>
                </div>
            </div>
        </div>
        <!-- fim Home -->
        <!-- Inicio Cards -->
      		    <div class="bg-teste">
            <div class="container text-center">
                <div class="row ">
                    <div class="col-8 mx-auto position-relative mt-5 p-2 ">
                        <!-- TÃ­tulo sobreposto -->
                        <h3 class="titulo-sobreposto" id="titulo-notas">Notas de destaque</h3>
                        <!-- A linha branca centralizada -->
                        <div class="linha-branca"></div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row ">
                    <div class="col-lg-3 col-md-6 col-sm-7 mx-auto my-5">
                        <div class="carde mt-5">
                            <div class="card-icon">
                                <i class="fas  fa-hand-holding-dollar"></i>
                            </div>
                            <div class="card-title">
                                Preços dos Produtos
                            </div>
                            <div class="card-rating">
                                <i class="star fas fa-star"></i>
                                <i class="star fas fa-star"></i>
                                <i class="star fas fa-star"></i>
                                <i class="star fas fa-star"></i>
                                <i class="star fas fa-star"></i>
                            </div>
                            <div class="card-subtitle">
                                <%=listaFeedbackSatisfacao.size()%> Avaliações
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-7  mx-auto my-5">
                        <div class="carde mt-5">
                            <div class="card-icon">
                                <i class="fas  fa-seedling"></i>
                            </div>
                            <div class="card-title">
                                Sustentabilidade
                            </div>
                            <div class="card-rating">
                                <i class="star fas fa-star"></i>
                                <i class="star fas fa-star"></i>
                                <i class="star fas fa-star"></i>
                                <i class="star fas fa-star"></i>
                                <i class="not-star fas fa-star"></i>
                            </div>
                            <div class="card-subtitle">
                                <%=listaFeedbackSatisfacao.size()%> Avaliações
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-7 mx-auto my-5">
                        <div class="carde mt-5">
                            <div class="card-icon">
                                <i class="far fa-face-grin-hearts"></i>
                            </div>
                            <div class="card-title">
                                Qualidade dos Produtos
                            </div>
                            <div class="card-rating">
                                <i class="star fas fa-star"></i>
                                <i class="star fas fa-star"></i>
                                <i class="star fas fa-star"></i>
                                <i class="star fas fa-star"></i>
                                <i class="mid-star fas fa-star"></i>
                            </div>
                            <div class="card-subtitle">
                                <%=listaFeedbackSatisfacao.size()%> Avaliações
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                </div>
            </div>
        </div>
        <!-- Fim Cards Cards -->
        <!-- começo do botão-->
        <div>
            <div class="bg-color" id="titulo-deixe-feedback">
                <div class="container text-center mt-5" >
                    <div class=" ">
                        <div class="col-8 mx-auto position-relative mt-5  ">
                            <h3 class="titulo-sobreposto-preto" >Deixe seu
                                Feedback</h3>
                            
                            <div class="linha-preta"></div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>   

        <div class="container">
            <div class="row">
                <div class="col-6 col-sm-12 col-lg-6 d-flex justify-content-center flex-column">
                    <p class="d-flex justify-content-center lead">Deixe seu:</p>
                    <a href="./pages/login_cadastro.jsp" class="btn btn-satisfacao mx-auto px-5">Feedback</a>
                </div>
                <div class="col-6 col-sm-12 col-lg-6 d-flex justify-content-center flex-column">
                    <p class="d-flex justify-content-center lead">Deixe sua:</p>
                    <a href="./pages/login_cadastro.jsp" class="btn btn-sugestao mx-auto px-5">Sugestão</a>
                </div>
            </div>
        </div>

        <!-- Fim  botÃ£o-->
        <!-- Inicio Comentarios -->
        <div class="bg-color">
            <div class="container text-center mt-5">
                <div class=" ">
                    <div class="col-8 mx-auto position-relative mt-5 p-2 ">
                        <!-- TÃ­tulo sobreposto -->
                        <h3 class="titulo-sobreposto-preto" id="titulo-comentarios">Principais
                            Comentarios</h3>
                        <!-- A linha branca centralizada -->
                        <div class="linha-preta"></div>
                    </div>
                </div>
            </div>
            <div class="container mt-5">
            
                <div class="row">
                
                 <%
                 
				if(listaFeedbackSatisfacao.size()>=4){
                 for(int i = 0 ;i<4;i++){
                	Feedback_Satisfacao fs = listaFeedbackSatisfacao.get(i);%>					
				                 
                    <div class="col-md-6 col-lg-3 col-sm-8 mx-auto mb-4">
                        <div class="depoimento mx-auto">
                            <img class="foto-usuario"
                                src="./Images/User/avatar_homem_com_fones.png"
                                alt="Foto do Usuário 1">
                            <div class="card-rating">
                                <i class="star fas fa-star"></i>
                                <i class="star fas fa-star"></i>
                                <i class="star fas fa-star"></i>
                                <i class="star fas fa-star"></i>
                                <i class="star fas fa-star"></i>
                            </div>
                            <p class="nome-usuario mt-2"><%=fs.getCliente().getNome()%></p>
                            <p class="texto-depoimento"><%=fs.getMensagem() %></p>
                        </div>
                    </div>
                    <%}}%>
                </div>
            </div>



 <!-- Fim Comentarios -->

      <!-- Footer -->
      <footer class="footer text-center">
        <div class="container">
    <div class="row ">
                    <div class="col-8 mx-auto position-relative mb-5 p-2 ">
                        <!-- TÃ­tulo sobreposto -->
                        <h3 class="titulo-sobreposto" id="titulo-contato">KraftHeinz</h3>
                        <!-- A linha branca centralizada -->
                        <div class="linha-branca"></div>
                    </div>


            <div class="row">
                <div class="col-md-3 col-12 mb-4">
                    <!-- EspaÃ§o reservado para o logotipo com link -->
                    <a href="https://https://www.kraftheinzfoodservice.com.br/">
                        <img src="./Images/kraft-heinz-1.png" alt="Kraft Heinz Logo" class="img-fluid">
                    </a>
                </div>
                <div class="col-md-6 col-12">
                    <ul class="list-unstyled list-inline fs-5">
                        <li class="list-inline-item"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                        <li class="list-inline-item"><a href="#"><i class="fab fa-twitter"></i></a></li>
                        <li class="list-inline-item"><a href="#"><i class="fab fa-instagram"></i></a></li>
                        <li class="list-inline-item"><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                    </ul>
                    <p>Visite nosso <a href="#">site</a> para mais informações</p>
                    <p>&copy; 2023 Kraft Heinz Company. Todos os direitos reservados.</p>
                </div>
            </div>
        </div>
    </footer>
    </main>
    <script src="./JS/script.js"></script>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous">
    </script>
</body>
</html>

    