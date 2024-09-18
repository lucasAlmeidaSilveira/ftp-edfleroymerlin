function openAddress(evento, loja) {
  const tabContent = document.getElementsByClassName('loja');
  const tabInfo = document.getElementsByClassName('loja_button');

  for (let i = 0; i < tabContent.length; i++) {
    tabContent[i].style.visibility = 'hidden'; // Altera a visibilidade em vez de display
    tabContent[i].style.height = '0'; // Ajusta a altura para zero para simular o "display: none"
    tabContent[i].style.overflow = 'hidden'; // Garante que o conteúdo escondido não ocupe espaço
  }
  for (let i = 0; i < tabInfo.length; i++) {
    tabInfo[i].className = tabInfo[i].className.replace('ativo', '');
  }

  const lojaAtiva = document.getElementById(loja);
  lojaAtiva.style.visibility = 'visible'; // Torna a aba ativa visível
  lojaAtiva.style.height = 'auto'; // Restaura a altura original
  lojaAtiva.style.overflow = 'visible'; // Restaura o overflow
  evento.currentTarget.className += ' ativo';
}

/*
function openAddress(evento, loja) {
  const tabContent = document.getElementsByClassName('loja');
  const tabInfo = document.getElementsByClassName('loja_button');

  for (i = 0; i < tabContent.length; i++) {
    tabContent[i].style.display = 'none';
  }
  for (i = 0; i < tabInfo.length; i++) {
    tabInfo[i].className = tabInfo[i].className.replace('ativo', '');
  }

  document.getElementById(loja).style.display = 'flex';
  evento.currentTarget.className += ' ativo';
}*/
document.getElementById('defaultOpen').click();

document.querySelectorAll('.smooth-scroll').forEach(anchor => {
  anchor.addEventListener('click', function(e) {
      e.preventDefault();
      document.querySelector(this.getAttribute('href')).scrollIntoView({
          behavior: 'smooth'
      });
  });
});