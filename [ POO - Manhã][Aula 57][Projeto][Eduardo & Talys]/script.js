function validarLogin() {
    // Obter os valores dos campos
    var email = document.getElementById("email").value;
    var senha = document.getElementById("senha").value;

    // Verificar se os campos estão preenchidos
    if (email === "" || senha === "") {
        alert("Por favor, preencha todos os campos.");
        return false;
    }

    // Verificar se o e-mail tem um formato válido
    var regexEmail = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
    if (!regexEmail.test(email)) {
        alert("Por favor, insira um e-mail válido.");
        return false;
    }

    // Se tudo estiver certo, redirecionar para a página inicial (ou outra lógica de autenticação)
    alert("Login bem-sucedido! Redirecionando...");
    window.location.href = "inicial.html";  // Ou seu destino real após login bem-sucedido
}
