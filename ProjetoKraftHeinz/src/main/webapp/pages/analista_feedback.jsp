<%@page import="model.dao.Feedback_Satisfacao_DAO"%>
<%@page import="model.entidades.feedback.Feedback_Satisfacao"%>
<%@page import="model.entidades.usuario.Cliente"%>
<%@page import="model.entidades.feedback.Feedback_Sugestao"%>
<%@page import="model.dao.Feedback_Sugestao_DAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../CSS/analista_feedback.css">
<link rel="stylesheet" href="../CSS/style.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght@400&display=swap">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<title>Filtro de Feedback</title>
</head>

<body class="container">
	<section class="filtro mt-5">
		<div class="box">
			<div class="d-flex justify-content-end">
				<a href="../pages/login_analista_feedback.jsp"
					class="btn btn-danger col-1">Sair</a>
			</div>
			<h1 class="my-4">Selecione sua Opção:</h1>
			<form class=" d-flex justify-content-center">
				<div class="form-group ">
					<input type="radio" id="opcao-sugestao" name="opcao"
						value="sugestao" checked> <label class=""
						for="opcao-sugestao">Sugestão</label>
				</div>
				<div class="form-group">
					<input type="radio" id="opcao-satisfacao" name="opcao"
						value="satisfacao"> <label for="opcao-satisfacao">Feedback</label>
				</div>
			</form>
			<button class="mx-auto btn btn-primary" type="button"
				onclick="filtrarFeedbacks()">Filtrar</button>
		</div>
	</section>




























	<div class="avaliacoes" id="sugestao">
		<h2 class="my-4">Sugestões:</h2>

		<%
		List<Feedback_Sugestao> listaSugestao = new Feedback_Sugestao_DAO().pesquisar();
		for (Feedback_Sugestao fs : listaSugestao) {
		%>
		<div class="avaliacao">
			<div class="avatar">
				<img
					src="../Images/3715527-imagem-perfil-icone-masculino-icone-humano-ou-pessoa-sinal-e-simbolo-vetor.jpg">
				<p class="nome">
					<%
					Cliente cliente = (Cliente) fs.getCliente();
					%>
					<%=cliente.getNome()%>
				</p>
				<p class="id">
					Email: <span><%=cliente.getEmail()%></span>
				</p>
				<p class="assunto">
					Assunto: <span><%=fs.getRelacionado()%></span>
				</p>
			</div>
			<div class="texto-avaliacao">
				<p><%=fs.getMensagem()%></p>
			</div>
		</div>
		<%
		}
		%>
	</div>
	</div>


	<div class="avaliacoes" id="satisfacao" style="display: none;">

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
		<style>
		.progress {
            margin-bottom: 20px; /* Adicione o tamanho do padding desejado aqui */
        }
		</style>
		<section class="filtro mt-5">
			<h2 class="my-4">Painel de Média Aritmética de Satisfação:</h2>
			<p style="text-align: start; margin:0">Sustentabilidade</p>
			<div class="progress" role="progressbar" aria-label="Success example"
				aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
				<div class="progress-bar"
					style="width: <%=mediaSustentabilidadeX100%>%"><%=mediaSustentabilidadeX100%>%
				</div>
			</div>
			<p style="text-align: start; margin:0">Qualidade dos Produtos</p>
			<div class="progress" role="progressbar" aria-label="Info example"
				aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
				<div class="progress-bar bg-info text-dark"
					style="width: <%=mediaQualidadeX100%>%"><%=mediaQualidadeX100%>%
				</div>
			</div>
			<p style="text-align: start; margin:0">Variedade de Produtos</p>
			<div class="progress" role="progressbar" aria-label="Warning example"
				aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
				<div class="progress-bar bg-warning text-dark"
					style="width:<%=mediaVariedadeX100%>%"><%=mediaVariedadeX100%>%
				</div>
			</div>
			<p style="text-align: start; margin:0">Preço dos Produtos</p>
			<div class="progress" role="progressbar" aria-label="Danger example"
				aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
				<div class="progress-bar bg-danger"
					style="width: <%=mediaPrecoX100%>%"><%=mediaPrecoX100%>%
				</div>
			</div>
			<p style="text-align: start; margin:0">Marketing</p>
			<div class="progress" role="progressbar" aria-label="Danger example"
				aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
				<div class="progress-bar  bg-success"
					style="width: <%=mediaMarketingX100%>%"><%=mediaMarketingX100%>%
				</div>
			</div>
		</section>
		<h2 class="my-4">Feedbacks:</h2>

		<%
		for (Feedback_Satisfacao fs : listaFeedbackSatisfacao) {
		%>
		<div class="avaliacao">
			<div class="avatar">
				<img
					src="../Images/3715527-imagem-perfil-icone-masculino-icone-humano-ou-pessoa-sinal-e-simbolo-vetor.jpg">
				<p class="nome">
					<%
					Cliente cliente = (Cliente) fs.getCliente();
					%>
					<%=cliente.getNome()%></p>
				<p class="id">
					Email: <span><%=cliente.getEmail()%></span>
				</p>
			</div>
			<div class="texto-avaliacao">
				<p><%=fs.getMensagem()%></p>
			</div>

			<%
			String categorias[] = { "Sustentabilidade", "Qualidade dos Produtos", "Variedade de Produtos", "Preço dos Produtos", "Marketing" };
			int[] notas = { fs.getSustentabilidade(), fs.getQualidade_produtos(), fs.getVariedade_produtos(), fs.getPreco(),
					fs.getMarketing() };
			for (int i = 0; i < categorias.length; i++) {
			%>
			<div class="d-flex gap-3">
				<label for="recipient-name" class="col-form-label"><%=categorias[i]%>
					:</label>
				<div class="pt-1">
					<%=notas[i]%>
					/ 5 <img width="30" height="30"
						src="https://img.icons8.com/color/48/filled-star--v1.png"
						alt="filled-star--v1" />
				</div>
			</div>
			<%
			}
			%>
		</div>
		<%
		}
		%>

	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
<script src="../JS/analista_feedback.js"></script>
</body>
</html>