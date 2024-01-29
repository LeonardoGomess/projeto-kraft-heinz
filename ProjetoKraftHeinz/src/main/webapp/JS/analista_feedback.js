function filtrarFeedbacks() {
    const opcaoSugestao = document.getElementById('opcao-sugestao');
    const opcaoSatisfacao = document.getElementById('opcao-satisfacao');
    const sugestaoDiv = document.getElementById('sugestao');
    const satisfacaoDiv = document.getElementById('satisfacao');

    if (opcaoSugestao.checked) {
        sugestaoDiv.style.display = 'block';
        satisfacaoDiv.style.display = 'none';
    } else if (opcaoSatisfacao.checked) {
        sugestaoDiv.style.display = 'none';
        satisfacaoDiv.style.display = 'block';
    }
}