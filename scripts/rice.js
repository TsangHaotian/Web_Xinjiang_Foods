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

// 修改返回首页链接
document.addEventListener('DOMContentLoaded', function() {
  const backLink = document.querySelector('.back-link');
  if (backLink && backLink.getAttribute('href').endsWith('.jsp')) {
    backLink.setAttribute('href', backLink.getAttribute('href').replace('.jsp', '.html'));
  }
});


    document.addEventListener('DOMContentLoaded', function() {
      // 获取所有步骤盒子和指示器
      const stepBoxes = document.querySelectorAll('.step-box');
      const indicators = document.querySelectorAll('.indicator');
      const carousel = document.querySelector('.step-carousel');
      
      let currentStep = 1;
      let isScrolling = false;
      
      // 更新活动步骤
      function updateActiveStep(step) {
        // 移除所有活动类
        stepBoxes.forEach(box => box.classList.remove('active'));
        indicators.forEach(ind => ind.classList.remove('active'));
        
        // 添加活动类到当前步骤
        document.querySelector(`.step-box[data-step="${step}"]`).classList.add('active');
        document.querySelector(`.indicator[data-step="${step}"]`).classList.add('active');
        
        currentStep = step;
      }
      
      // 监听鼠标滚轮事件
      carousel.addEventListener('wheel', function(event) {
        event.preventDefault();
        
        if (isScrolling) return;
        
        isScrolling = true;
        setTimeout(() => { isScrolling = false; }, 500); // 防抖
        
        if (event.deltaY > 0) {
          // 向下滚动，下一步
          const nextStep = currentStep < 5 ? currentStep + 1 : 1;
          updateActiveStep(nextStep);
        } else {
          // 向上滚动，上一步
          const prevStep = currentStep > 1 ? currentStep - 1 : 5;
          updateActiveStep(prevStep);
        }
      });
      
      // 点击指示器切换步骤
      indicators.forEach(indicator => {
        indicator.addEventListener('click', function() {
          const step = parseInt(this.getAttribute('data-step'));
          updateActiveStep(step);
        });
      });
      
      // 触摸滑动支持（针对移动设备）
      let touchStartX = 0;
      let touchEndX = 0;
      
      carousel.addEventListener('touchstart', function(event) {
        touchStartX = event.changedTouches[0].screenX;
      });
      
      carousel.addEventListener('touchend', function(event) {
        touchEndX = event.changedTouches[0].screenX;
        handleSwipe();
      });
      
      function handleSwipe() {
        if (touchEndX < touchStartX) {
          // 向左滑动，下一步
          const nextStep = currentStep < 5 ? currentStep + 1 : 1;
          updateActiveStep(nextStep);
        } else if (touchEndX > touchStartX) {
          // 向右滑动，上一步
          const prevStep = currentStep > 1 ? currentStep - 1 : 5;
          updateActiveStep(prevStep);
        }
      }
});