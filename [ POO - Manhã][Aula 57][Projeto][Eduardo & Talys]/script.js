  // Função para alternar para o formulário de cadastro
        function mostrarCadastro() {
            document.getElementById('loginForm').style.display = 'none';
            document.getElementById('cadastroForm').style.display = 'block';
        }

        // Função para alternar para o formulário de login
        function mostrarLogin() {
            document.getElementById('loginForm').style.display = 'block';
            document.getElementById('cadastroForm').style.display = 'none';
        }

        // Função para cadastrar um novo usuário
        function cadastrarUsuario() {
            var email = document.getElementById('cadEmail').value;
            var senha = document.getElementById('cadSenha').value;
            var confirmarSenha = document.getElementById('cadConfirmarSenha').value;

            if (email === "" || senha === "" || confirmarSenha === "") {
                alert("Por favor, preencha todos os campos.");
                return;
            }

            if (senha !== confirmarSenha) {
                alert("As senhas não coincidem.");
                return;
            }

            // Recupera as contas cadastradas no localStorage ou inicializa um array vazio
            var contas = JSON.parse(localStorage.getItem('contas')) || [];

            // Verifica se o e-mail já está registrado
            for (var i = 0; i < contas.length; i++) {
                if (contas[i].email === email) {
                    alert("Este e-mail já está registrado.");
                    return;
                }
            }

            // Adiciona a nova conta no array de contas
            contas.push({ email: email, senha: senha });

            // Armazena as contas no localStorage
            localStorage.setItem('contas', JSON.stringify(contas));

            alert("Cadastro realizado com sucesso! Agora faça login.");
            mostrarLogin(); // Exibe o formulário de login
        }

        // Função para validar o login
        function validarLogin() {
            var email = document.getElementById("email").value;
            var senha = document.getElementById("senha").value;

            // Recupera as contas armazenadas no localStorage
            var contas = JSON.parse(localStorage.getItem('contas')) || [];

            // Verifica se os campos de login estão preenchidos
            if (email === "" || senha === "") {
                alert("Por favor, preencha todos os campos.");
                return false;
            }

            // Verifica se o e-mail e a senha são válidos
            for (var i = 0; i < contas.length; i++) {
                if (contas[i].email === email && contas[i].senha === senha) {
                    alert("Login bem-sucedido! Redirecionando...");
                    window.location.href = "inicial.html";  // Redireciona após login bem-sucedido
                    return;
                }
            }

            alert("E-mail ou senha incorretos.");
            return false;
        }