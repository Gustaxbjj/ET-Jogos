// script.js

// Quando a página carregar
window.onload = function() {
    // Espera 3 segundos (3000 milissegundos)
    setTimeout(function() {
      // Esconde a tela de splash com fade-out
      document.getElementById('splash-screen').style.animation = 'fadeOut 2s ease-in-out forwards';
  
      // Depois de 2 segundos (tempo da animação de fade-out), escondemos completamente
      setTimeout(function() {
        document.getElementById('splash-screen').style.display = 'none';
  
        // Exibe o conteúdo principal com a animação de fade-in
        document.getElementById('main-content').style.display = 'block';
        window.location.href = 'login.html';

      }, 2000); // Tempo da animação de fade-out
  
    }, 3000); // 3000ms = 3 segundos
  };
  