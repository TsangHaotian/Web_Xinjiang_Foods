// ... existing code ...

// 创建点击波纹效果
document.addEventListener('click', function (e) {
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
  item.addEventListener('click', function (e) {
    const href = this.getAttribute('href');
    if (href) {
      // 确保链接是.html结尾
      window.location.href = href.endsWith('.html') ? href : href.replace('.jsp', '.html');
    }
  });
});

// 滚动背景动画效果
window.addEventListener('load', function () {
  const parallaxBg = document.querySelector('.parallax-bg');
  const hero = document.querySelector('.hero');
  const featuredSection = document.querySelector('.featured');
  const foodCards = document.querySelectorAll('.food-card');

  // 添加淡入效果类
  foodCards.forEach(card => {
    card.classList.add('fade-in');
  });

  // 滚动事件监听
  window.addEventListener('scroll', function () {
    // 视差背景效果
    let scrollPosition = window.scrollY;
    if (parallaxBg) {
      parallaxBg.style.transform = `translateY(${scrollPosition * 0.4}px)`;
    }

    // 当滚动到特色美食区域时改变背景颜色
    if (featuredSection) {
      const featuredTop = featuredSection.getBoundingClientRect().top;
      if (featuredTop < window.innerHeight / 2) {
        document.body.classList.add('bg-transition');
      }
    }

    // 元素淡入效果
    const fadeElements = document.querySelectorAll('.fade-in');
    fadeElements.forEach(element => {
      const elementTop = element.getBoundingClientRect().top;
      const elementBottom = element.getBoundingClientRect().bottom;

      // 当元素进入视口时添加可见类
      if (elementTop < window.innerHeight - 100 && elementBottom > 0) {
        element.classList.add('visible');
      }
    });
  });

  // 初始触发一次滚动事件，确保页面加载时就应用效果
  window.dispatchEvent(new Event('scroll'));
});

// 点击特效
document.addEventListener('click', function (e) {
  // 创建点击特效元素
  const clickEffect = document.createElement('div');
  clickEffect.classList.add('click-effect');
  document.body.appendChild(clickEffect);

  // 设置特效位置
  clickEffect.style.left = e.pageX + 'px';
  clickEffect.style.top = e.pageY + 'px';

  // 触发特效动画
  setTimeout(function () {
    clickEffect.style.width = '300px';
    clickEffect.style.height = '300px';
    clickEffect.style.opacity = '0';
  }, 10);

  // 移除特效元素
  setTimeout(function () {
    document.body.removeChild(clickEffect);
  }, 800);
});

// 平滑滚动效果
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
  anchor.addEventListener('click', function (e) {
    e.preventDefault(); // 阻止默认的跳转行为

    const targetId = this.getAttribute('href');
    const targetElement = document.querySelector(targetId);

    if (targetElement) {
      targetElement.scrollIntoView({
        behavior: 'smooth' // 启用平滑滚动
      });
    }
  });
});

// 鼠标拖尾效果
let colorIndex = 0;
const colors = ['#FF0000', '#FF7F00', '#FFFF00', '#00FF00', '#0000FF', '#4B0082', '#9400D3']; // 彩虹颜色数组

document.addEventListener('mousemove', function (e) {
  // 创建拖尾元素
  const trail = document.createElement('div');
  trail.classList.add('mouse-trail');
  document.body.appendChild(trail);

  // 设置拖尾元素位置
  trail.style.left = e.pageX + 'px';
  trail.style.top = e.pageY + 'px';

  // 设置拖尾颜色并更新颜色索引
  trail.style.backgroundColor = colors[colorIndex];
  colorIndex = (colorIndex + 1) % colors.length; // 循环使用颜色

  // 动画效果：逐渐缩小并淡出
  setTimeout(function () {
    trail.style.transform = 'scale(0)';
    trail.style.opacity = '0';
  }, 50); // 稍微延迟开始动画，形成拖尾效果

  // 移除拖尾元素
  setTimeout(function () {
    document.body.removeChild(trail);
  }, 550); // 动画时间 + 延迟时间
});

document.addEventListener('DOMContentLoaded', function() {
    const foodImages = document.querySelectorAll('.halo-effect');
    
    window.addEventListener('scroll', function() {
        const scrollPosition = window.scrollY;
        
        foodImages.forEach(img => {
            const imgPosition = img.getBoundingClientRect().top;
            
            if (imgPosition < window.innerHeight * 0.8) {
                img.classList.add('active');
            } else {
                img.classList.remove('active');
            }
        });
    });
});