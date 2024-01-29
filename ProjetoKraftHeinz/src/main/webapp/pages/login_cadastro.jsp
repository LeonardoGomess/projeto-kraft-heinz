<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Cadastro-Login</title>
   <link rel="stylesheet" href="../CSS/login-cadastro.css">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

</head>

<body>
   <header>
       
      <a href="../index.jsp"><img src="../Images/ImagensLogin_Cadastro/btn_voltar.png" alt=""></a>
      <p class="text-white fs-2">Voltar</p>
   </header>
   <main class="mb-3">
      <div class="wrapper">
         <div class="card-switch">
            <label class="switch"> <input class="toggle" type="checkbox">
               <span class="slider"></span> <span class="card-side"></span>
               <div class="flip-card__inner">
                  <div class="flip-card__front" style="pointer-events: none;">
                     <h1 class="title">Login</h1>
                     <form action="../login" class="flip-card__form" method = "post">
                        <fieldset>
                           <div class="d-flex align-itens-start">
                              <label for="">Email</label>
                           </div>
                           <input type="email" placeholder="Email" name="email_login" class="flip-card__input">
                        </fieldset>
                        <fieldset>
                           <div class="d-flex align-itens-start">
                              <label for="">Senha</label>
                           </div>
                           <input
                              type="password" placeholder="Senha" name="senha_login" class="flip-card__input">
                        </fieldset>
                        <button class="flip-card__btn">Logar</button>
                        <a href="#" class="mb-3" style="color: purple;">Esqueceu sua
                           senha?</a>
                     </form>
                  </div>
					

                  <div class="flip-card__back" style="pointer-events: none;">
                     <h1 class="title">Cadastrar-se</h1>
                     <form action="../cadastro" class="flip-card__form" method = "post">
                        <fieldset id="container-nome">
                           <div class="d-flex align-itens-start">
                              <label for="">Nome<strong class="fw-semibold text-danger"> (Máx 50 caracteres)</strong></label>
                           </div>
                           <input type="text" placeholder="Nome" class="flip-card__input" name="nome" required maxlength="50">
                        </fieldset>

                        <fieldset>
                           <div class="d-flex align-itens-start">
                              <label for="">Email<strong class="fw-semibold text-danger"> (Máx 50 caracteres)</strong></label>
                           </div>
                           <input type="text"
                           placeholder="Email" class="flip-card__input" name="login"  maxlength="50" required >
                        </fieldset>
                        <fieldset id="container-data">
                           <div class="d-flex align-itens-start">
                              <label for="">Data de Nascimento</label>
                           </div>
                           <input type="date" name="data_nascimento"
                           class="flip-card__input" required>
                        </fieldset>
                        <fieldset>
                           <div class="d-flex align-itens-start">
                              <label for="">Senha<strong class="fw-semibold text-danger"> (Máx 50 caracteres)</strong></label> 
                           </div>
                           <input type="password" placeholder="Senha" name="senha" class="flip-card__input" required id="senha" maxlength="50">
                        </fieldset>
                        <fieldset>
                           <div class="d-flex align-itens-start">
                              <label for="">Confirmar Senha</label>
                           </div>
                           <input type="password" placeholder="Confirmar senha" name="senha_confirm"
                              class="flip-card__input" required id="senha_confirm" maxlength="50">
                           </fieldset>
                           <p class="text-danger" id="msg_senha_diferente"></p>
                           <button class="flip-card__btn">Criar conta</button>
                     </form>
                  </div>
               </div>
            </label>
         </div>
      </div>
   </main>
   <footer style="height: 100vh;"></footer>
   <script src="../JS/login-cadastro.js"></script>
</body>

</html>