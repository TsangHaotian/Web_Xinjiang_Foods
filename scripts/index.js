// ... existing code ...

// 创建点击波纹效果
document.addEventListener('click', function(e) {
  const effect = document.createElement('div');
  effect.classList.add('click-effect');
  effect.style.left = e.clientX + 'px';
  effect.style.top = e.clientY + 'px';
  document.body.appendChild(effect);
  
  setTimeout(() => {
    effect.style.width = '500px';
    effect.style.height = '500px';
    effect.style.opacity = '0';
  }, 10);
  
  setTimeout(() => {
    if (document.body.contains(effect)) {
      document.body.removeChild(effect);
    }
  }, 800);
});

// 修改链接处理，从.jsp改为.html
document.querySelectorAll('.food-item').forEach(item => {
  item.addEventListener('click', function(e) {
    const href = this.getAttribute('href');
    if (href) {
      // 确保链接是.html结尾
      window.location.href = href.endsWith('.html') ? href : href.replace('.jsp', '.html');
    }
  });
});