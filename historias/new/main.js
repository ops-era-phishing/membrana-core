// main.js

document.addEventListener('DOMContentLoaded', () => {
  const acessarBtn = document.getElementById('acessar-btn');
  const mensagemOculta = document.getElementById('mensagem-oculta');

  acessarBtn.addEventListener('click', () => {
    acessarBtn.style.display = 'none';
    mensagemOculta.style.display = 'block';
  });
});

let clickCount = 0;

const refreshBtn = document.getElementById('refresh-feed');
const feed = document.getElementById('feed');

const newPosts = [
  {
    user: '@ghostbyte',
    message: 'Sistema detectando anomalias na matriz... Prepare-se para o inesperado.',
    time: 'há poucos segundos'
  },
  {
    user: '@glitchmaster',
    message: 'Fazendo upload de fragmentos da consciência QSR-0...',
    time: 'agora mesmo'
  }
];

refreshBtn.addEventListener('click', () => {
  clickCount++;

  if (clickCount === 1) {
    // Adiciona novos posts
    newPosts.forEach(post => {
      const article = document.createElement('article');
      article.classList.add('post', 'glitch-text');
      article.innerHTML = `
        <p><strong>Usuário:</strong> ${post.user}</p>
        <p>${post.message}</p>
        <span class="timestamp">${post.time}</span>
      `;
      feed.appendChild(article);
    });
  } else if (clickCount === 2) {
    // Mensagem de atualização da versão
    const updateMsg = document.createElement('article');
    updateMsg.classList.add('post', 'glitch-text');
    updateMsg.innerHTML = `
      <p><strong>Sistema:</strong> Sua versão foi atualizada para 0.99.1.</p>
      <span class="timestamp">agora mesmo</span>
    `;
    feed.appendChild(updateMsg);
    feed.scrollIntoView({ behavior: 'smooth', block: 'end' });
  } else if (clickCount === 3) {
    // Mensagem final e botão some
    const finalMsg = document.createElement('article');
    finalMsg.classList.add('post', 'glitch-text');
    finalMsg.innerHTML = `
      <p><strong>Sistema:</strong> Você foi atualizado para a última versão. Não há mais retorno.</p>
      <span class="timestamp">agora mesmo</span>
    `;
    feed.appendChild(finalMsg);
    refreshBtn.style.display = 'none';
    feed.scrollIntoView({ behavior: 'smooth', block: 'end' });
  }
});
setTimeout(() => {
  window.location.href = 'motherwawe.html';
}, 10000);

