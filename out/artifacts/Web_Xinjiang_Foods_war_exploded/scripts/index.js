// 页面滚动相关变量
let currentPage = 0;
const totalPages = 3;
let pageHeight = window.innerHeight;

// 实时更新页面高度
window.addEventListener('resize', () => {
  pageHeight = window.innerHeight;
  console.log('窗口大小改变，更新页面高度：', pageHeight);
});

// 页面加载完成后初始化
document.addEventListener('DOMContentLoaded', function() {
  // 只监听主容器点击
  const mainContainer = document.querySelector('.main-container');
  mainContainer.addEventListener('click', function(e) {
    console.log('点击事件触发，目标元素：', e.target.tagName, e.target.className);
    
    // 如果点击的是按钮或按钮内的元素，直接返回
    if (e.target.classList.contains('nang-link-button') ||
        e.target.closest('.nang-link-button') ||
        e.target.classList.contains('rice-link-button') ||
        e.target.closest('.rice-link-button') ||
        e.target.classList.contains('yogurt-link-button') ||
        e.target.closest('.yogurt-link-button')) {
      console.log('点击了按钮，不执行滚动');
      return;
    }
    
    // 创建点击波纹效果
    createClickEffect(e);
    
    // 页面强制下滑 - 使用更直接的方式
    scrollPage();
  });
  
  // 添加调试信息
  console.log('页面加载完成，页面高度：', pageHeight);
  console.log('主容器：', mainContainer);
  console.log('主容器高度：', mainContainer.offsetHeight);
  
  // 添加键盘事件，方便测试
  document.addEventListener('keydown', function(e) {
    if (e.key === 'ArrowDown') {
      scrollPage();
    } else if (e.key === 'ArrowUp') {
      window.scrollBy({
        top: -pageHeight,
        behavior: 'smooth'
      });
    }
  });
});

// 创建点击波纹效果的函数
function createClickEffect(e) {
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
    document.body.removeChild(effect);
  }, 800);
}

// 页面滚动函数
function scrollPage() {
  console.log('执行滚动，当前高度：', pageHeight, '当前滚动位置：', window.scrollY);
  
  // 使用更可靠的滚动方法
  window.scrollBy({
    top: pageHeight,
    behavior: 'smooth'
  });
  
  // 如果到达底部，可以选择回到顶部
  if (window.scrollY + pageHeight >= document.body.scrollHeight - 50) {
    console.log('已到达底部，可以回到顶部');
    // 取消注释下面的代码可以实现回到顶部
    // setTimeout(() => {
    //   window.scrollTo({
    //     top: 0,
    //     behavior: 'smooth'
    //   });
    // }, 1000);
  }
}