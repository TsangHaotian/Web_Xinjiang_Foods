// 点击动效
document.addEventListener('click', (e) => {
  const clickEffect = document.createElement('div');
  clickEffect.className = 'click-effect';
  clickEffect.style.left = e.clientX + 'px';
  clickEffect.style.top = e.clientY + 'px';
  document.body.appendChild(clickEffect);
  
  // 点击波纹动画
  setTimeout(() => {
    clickEffect.style.width = '100px';
    clickEffect.style.height = '100px';
    clickEffect.style.opacity = '0';
  }, 10);
  
  // 移除点击效果元素
  setTimeout(() => {
    document.body.removeChild(clickEffect);
  }, 500);
  
  // 点击后显示内容
  const clickPrompt = document.querySelector('.click-prompt');
  const contentWrapper = document.querySelector('.content-wrapper');
  
  clickPrompt.style.opacity = '0';
  setTimeout(() => {
    clickPrompt.style.display = 'none';
    contentWrapper.classList.add('show');
    
    // 显示介绍部分
    const intro = document.querySelector('.intro-section');
    setTimeout(() => {
      intro.style.opacity = '1';
    }, 500);
    
    // 滚动动画
    const boxes = document.querySelectorAll('.box');
    window.addEventListener('scroll', function() {
      boxes.forEach(box => {
        const boxTop = box.getBoundingClientRect().top;
        if(boxTop < window.innerHeight - 100) {
          box.style.transform = 'translateY(0)';
        }
      });
    });
  }, 500);
});