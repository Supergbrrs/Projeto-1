document.addEventListener('DOMContentLoaded', function() {
  const themeToggleBtn = document.getElementById('theme-toggle-btn');
  const body = document.body;

  function applyTheme(theme) {
    if (theme === 'light') {
      body.classList.add('light-theme');
    } else {
      body.classList.remove('light-theme');
    }
    updateButtonIcon();
  }

  function updateButtonIcon() {
    if (!themeToggleBtn) return;

    const isLight = body.classList.contains('light-theme');
    themeToggleBtn.textContent = isLight ? '☀️' : '🌙';
    themeToggleBtn.setAttribute('aria-label', isLight ? 'Alternar para tema escuro' : 'Alternar para tema claro');
  }

  const savedTheme = localStorage.getItem('theme');
  const defaultTheme = window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light';
  applyTheme(savedTheme || defaultTheme);

  if (!themeToggleBtn) return;

  themeToggleBtn.addEventListener('click', function() {
    const nextTheme = body.classList.contains('light-theme') ? 'dark' : 'light';
    applyTheme(nextTheme);
    localStorage.setItem('theme', nextTheme);
  });
});