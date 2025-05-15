// ... existing code ...

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

// ... existing code ...