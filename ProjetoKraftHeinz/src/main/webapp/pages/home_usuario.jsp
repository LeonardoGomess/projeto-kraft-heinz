<%@page import="model.entidades.feedback.Feedback_Satisfacao"%>
<%@page import="java.util.List"%>
<%@page import="model.dao.Feedback_Satisfacao_DAO"%>
<%@page import="model.dao.ClienteDAO"%>
<%@page import="model.entidades.usuario.Cliente"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	


<!doctype html>
<html lang="pt-BR">
<head>
<meta charset="utf-8">
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
	<% 

String email = request.getParameter("email_login");

Cliente cliente = new ClienteDAO().pesquisar(email);


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



	<!-- Inicio do Header -->
	<header class="fixed-top">
		<nav class="navbar navbar-expand-lg bg-body-tertiary">
			<div class="container-fluid">
				<a href="#"><img src="./Images/logo.png" width="200rem"
					alt="Logo da KraftHeinz"></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
					aria-controls="navbarNavAltMarkup" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-end"
					id="navbarNavAltMarkup">
					<div class="navbar-nav">
						<a class="nav-link active" aria-current="page" href="#">Home</a> <a
							class="nav-link" href="#titulo-notas">Notas</a> <a
							class="nav-link" href="#titulo-deixe-feedback">Feedback</a> <a
							class="nav-link" href="#titulo-comentarios">Comentarios</a> <a
							class="nav-link" href="#titulo-contato">Contato</a>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle bordere" href="#"
							id="navbarDropdown" role="button" data-bs-toggle="dropdown"
							aria-expanded="false"> <i class="fas fa-user fs-5 "></i> <!-- Ícone de usuário usando Font Awesome -->
						</a>

							<ul class="dropdown-menu dropdown-menu-end"
								aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="#">Configurações</a></li>
								<li><a class="dropdown-item" href="#titulo-deixe-feedback">Enviar
										Feedback</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item text-danger fw-bold fst-italic"
									href="./index.jsp">Sair</a></li>
							</ul></li>

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
							<!-- Título sobreposto -->
							<h3 class="titulo-sobreposto-preto">Sistema de Feedback
								KraftHeinz</h3>
							<!-- A linha branca centralizada -->
							<div class="linha-preta"></div>
						</div>
					</div>
				</div>
				<div
					class="embed-responsive embed-responsive-16by9 d-flex justify-content-center mt-5">
					<!-- Use a tag <video> para incorporar o vídeo local -->
					<video class="embed-responsive-item" autoplay controls muted
						width="800rem">
						<source
							src="./video/SnapInsta.io-Innovating the Future of Food.mp4"
							type="video/mp4">
						Seu navegador não suporta a reprodução de vídeos.
					</video>
				</div>
				<div class="container-fluid d-flex justify-content-center">
					<a class="button my-5" href="#titulo-deixe-feedback">Envie seu
						Feedback</a>
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
		<!-- começo botão-->
		<div>
			<div class="bg-color" id="titulo-deixe-feedback">
				<div class="container text-center mt-5">
					<div class=" ">
						<div class="col-8 mx-auto position-relative mt-5  ">
							<h3 class="titulo-sobreposto-preto">Deixe seu Feedback</h3>

							<div class="linha-preta"></div>

						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div
					class="col-6 col-sm-12 col-lg-6 d-flex justify-content-center flex-column">
					<label for="" class=" mx-auto mb-2 lead">Deixe seu:</label>
					<button type="button" class="btn btn-satisfacao mx-auto px-5"
						href="./pages/login_cadastro.jsp" data-bs-toggle="modal"
						data-bs-target="#exampleModal">Feedback</button>
				</div>
				<div
					class="col-6 col-sm-12 col-lg-6 d-flex justify-content-center flex-column">
					<label for="" class="d-flex justify-content-center mb-2 lead">Deixe
						sua:</label>
					<button type="button" class="btn btn-sugestao mx-auto px-5"
						data-bs-toggle="modal" data-bs-target="#exampleModal2">Sugestão</button>
				</div>
			</div>
		</div>



		<div class="modal fade" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title fs-5" id="exampleModalLabel"></h1>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Fechar"></button>
					</div>
					<div class="modal-body">
						<form method="post" action="./enviar">
							<label for="recipient-name" class="col-form-label">Qualidade
								dos Produtos:</label>
							<div class="mb-3">
								<div class="rating">
									<input value="6" name="qualidade_produtos" id="star6-1" type="radio">
									
									<input value="5" name="qualidade_produtos" id="star5-1" type="radio">
									<label for="star5-1"></label> 
									
									<input value="4" name="qualidade_produtos"id="star4-1" type="radio"> 
									<label for="star4-1"></label>
									
									<input value="3" name="qualidade_produtos" id="star3-1" type="radio">
									<label for="star3-1"></label> 
									
									<input value="2" name="qualidade_produtos"id="star2-1" type="radio"> 
									<label for="star2-1"></label>
									
									<input value="1" name="qualidade_produtos" id="star1-1" type="radio">
									<label for="star1-1"></label>
								</div>
							</div>

							<label for="recipient-name" class="col-form-label">Variedade
								de Produtos:</label>
							<div class="mb-3">
								<div class="rating">
									<input value="5" name="variedade_produtos" id="star5-2" type="radio">
									<label for="star5-2"></label> 
									
									<input value="4" name="variedade_produtos"id="star4-2" type="radio"> 
									<label for="star4-2"></label>
									
									<input value="3" name="variedade_produtos" id="star3-2" type="radio">
									<label for="star3-2"></label> 
									
									<input value="2" name="variedade_produtos"id="star2-2" type="radio"> 
									<label for="star2-2"></label>
									
									<input value="1" name="variedade_produtos" id="star1-2" type="radio">
									<label for="star1-2"></label>
								</div>
							</div>

							<label for="recipient-name" class="col-form-label">Sustentabilidade:</label>
							<div class="mb-3">
								<div class="rating">
									<input value="5" name="sustentabilidade" id="star5-3" type="radio">
									<label for="star5-3"></label> 
									
									<input value="4" name="sustentabilidade"id="star4-3" type="radio"> 
									<label for="star4-3"></label>
									
									<input value="3" name="sustentabilidade" id="star3-3" type="radio">
									<label for="star3-3"></label> 
									
									<input value="2" name="sustentabilidade"id="star2-3" type="radio"> 
									<label for="star2-3"></label>
									
									<input value="1" name="sustentabilidade" id="star1-3" type="radio">
									<label for="star1-3"></label>
								</div>
							</div>

							<label for="recipient-name" class="col-form-label">Preço dos Produtos:</label>
							<div class="mb-3">
								<div class="rating">
									<input value="5" name="preco" id="star5-4" type="radio">
									<label for="star5-4"></label> 
									
									<input value="4" name="preco"id="star4-4" type="radio"> 
									<label for="star4-4"></label>
									
									<input value="3" name="preco" id="star3-4" type="radio">
									<label for="star3-4"></label> 
									
									<input value="2" name="preco"id="star2-4" type="radio"> 
									<label for="star2-4"></label>
									
									<input value="1" name="preco" id="star1-4" type="radio">
									<label for="star1-4"></label>
								</div>
							</div>

							<label for="recipient-name" class="col-form-label">Marketing:</label>
							<div class="mb-3">
								<div class="rating">
									<input value="5" name="marketing" id="star5-5" type="radio">
									<label for="star5-5"></label> 
									
									<input value="4" name="marketing"id="star4-5" type="radio"> 
									<label for="star4-5"></label>
									
									<input value="3" name="marketing" id="star3-5" type="radio">
									<label for="star3-5"></label> 
									
									<input value="2" name="marketing"id="star2-5" type="radio"> 
									<label for="star2-5"></label>
									
									<input value="1" name="marketing" id="star1-5" type="radio">
									<label for="star1-5"></label>
								</div>
							</div>

							<div class="mb-3">
								<label for="message-text" class="col-form-label">Nosso
									objetivo é melhorar. Conte-nos como!</label>
								<textarea class="form-control" id="message-text" name="mensagem"></textarea>
							</div>
							<input type="hidden"  value="<%=email%>" name="email_login">
							<input type="hidden" value="<%="satisfacao"%>" name="tipo">
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">Fechar</button>
								<button class="btn btn-primary" type="submit">Enviar
									Satisfação</button>
							</div>
						</form>
					</div>
				</div>
			</div>

		</div>




		<div class="modal fade" id="exampleModal2" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title-2 fs-5" id="exampleModalLabel"></h1>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Fechar"></button>
					</div>
					<div class="modal-body">
						<form action= "./enviar" method="post">
							<div class="mb-3">
								<label for="recipient-name" class="col-form-label">Selecione
									uma Categoria:</label>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="relacionado" id="flexRadioDefault1" checked
										required value = "Produtos"> <label class="form-check-label"
										for="flexRadioDefault1"> Produtos </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="relacionado" id="flexRadioDefault2" required value = "Atendimento">
									<label class="form-check-label" for="flexRadioDefault2">
										Atendimento </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="relacionado" id="flexRadioDefault1" required value = "Outros">
									<label class="form-check-label" for="flexRadioDefault1">
										Outros </label>
								</div>
							</div>
							<div class="mb-3">
								<label for="message-text" class="col-form-label">Ajude-nos
									a melhorar com sua sugestão:</label>
								<textarea class="form-control" id="message-text" name="mensagem"></textarea>
							</div>
							<input type="hidden"  value="<%="sugestao"%>" name="tipo">
						  <input type="hidden"  value="<%=email%>" name="email_login">
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Fechar</button>
						<button class="btn btn-primary" type="submit">Enviar
							Sugestão</button>
					</div>
						</form>
					</div>
				</div>
			</div>
		</div>






		<!-- Fim  botão-->
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
							<!-- Título sobreposto -->
							<h3 class="titulo-sobreposto" id="titulo-contato">KraftHeinz</h3>
							<!-- A linha branca centralizada -->
							<div class="linha-branca"></div>
						</div>


						<div class="row">
							<div class="col-md-3 col-12 mb-4">
								<!-- Espaço reservado para o logotipo com link -->
								<a href="https://https://www.kraftheinzfoodservice.com.br/">
									<img src="./Images/kraft-heinz-1.png" alt="Kraft Heinz Logo"
									class="img-fluid">
								</a>
							</div>
							<div class="col-md-6 col-12">
								<ul class="list-unstyled list-inline fs-5">
									<li class="list-inline-item"><a href="#"><i
											class="fab fa-facebook-f"></i></a></li>
									<li class="list-inline-item"><a href="#"><i
											class="fab fa-twitter"></i></a></li>
									<li class="list-inline-item"><a href="#"><i
											class="fab fa-instagram"></i></a></li>
									<li class="list-inline-item"><a href="#"><i
											class="fab fa-linkedin-in"></i></a></li>
								</ul>
								<p>
									Visite nosso <a href="#">site</a> para mais informações
								</p>
								<p>&copy; 2023 Kraft Heinz Company. Todos os direitos
									reservados.</p>
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