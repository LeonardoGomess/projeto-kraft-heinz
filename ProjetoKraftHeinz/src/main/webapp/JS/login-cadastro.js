const senha = document.querySelector("#senha")
const confirm_senha = document.querySelector("#senha_confirm")
const msg_senha_diferente = document.querySelector("#msg_senha_diferente")
const container_data = document.querySelector("#container-data")
const campos = document.querySelectorAll(".flip-card__input")
const container_telefone = document.querySelector("#container-telefone")
const container_nome = document.querySelector("#container-nome")

confirm_senha.addEventListener("blur", () => {
    if (senha.value != confirm_senha.value) {
        msg_senha_diferente.textContent = "Erro: senhas diferentes. Digite a mesma senha em ambos os campos de senha!!!"
        senha.value = ""
        confirm_senha.value = ""
    }
})
