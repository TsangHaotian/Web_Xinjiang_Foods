<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>新疆美食</title>
  <style>
    body, html {
      margin: 0;
      padding: 0;
      width: 100%;
      height: 100%;
      font-family: Arial, sans-serif;
      overflow: auto; /* 改为auto允许滚动 */
      position: relative;
    }
    
    /* 渐变蓝绿色背景 - 保留 */
    .gradient-bg {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: linear-gradient(135deg, #0099cc, #00cc99);
      z-index: -1;
    }
    
    /* 大的div样式 - 缩小宽度，使四边可见 */
    .main-container {
      position: relative;
      width: 90%; /* 宽度从120%改为90% */
      height: 300vh; /* 高度设为视口高度的3倍 */
      margin: 5% auto; /* 使用auto居中，去掉负边距 */
      border: 4px solid rgba(255, 255, 255, 0.7);
      border-radius: 15px;
      background-color: rgba(255, 255, 255, 0.1);
      backdrop-filter: blur(5px);
      box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
      padding-bottom: 100px; /* 底部额外padding */
    }
    
    /* 小的div样式 - 位于中间偏左下方 - 添加明显的边框 */
    .sub-container {
      position: absolute;
      width: 200px;
      height: 150px;
      top: 20%; /* 改用top定位，不用bottom */
      left: 25%;
      background-color: rgba(255, 255, 255, 0.2);
      border-radius: 10px;
      border: 3px solid rgba(255, 255, 255, 0.8); /* 更明显的边框 */
      box-shadow: 0 4px 16px rgba(0, 0, 0, 0.15);
      display: flex;
      flex-direction: column; /* 改为纵向排列 */
      justify-content: center;
      align-items: center;
      color: white;
      font-weight: bold;
    }
    
    /* 右侧盒子样式 - 向右对称移动 */
    .right-container {
      position: absolute;
      width: 200px;
      height: 150px;
      top: 40%;
      left: calc(100% - 25% - 200px); /* 右边距与左边距对称 */
      background-color: rgba(255, 255, 255, 0.2);
      border-radius: 10px;
      border: 3px solid rgba(255, 255, 255, 0.8);
      box-shadow: 0 4px 16px rgba(0, 0, 0, 0.15);
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      color: white;
      font-weight: bold;
    }
    
    /* 第三个盒子样式 - 放在右侧盒子下方 */
    .yogurt-container {
      position: absolute;
      width: 200px;
      height: 150px;
      top: 60%; /* 改用top定位，不用bottom */
      left: 25%;
      background-color: rgba(255, 255, 255, 0.2);
      border-radius: 10px;
      border: 3px solid rgba(255, 255, 255, 0.8);
      box-shadow: 0 4px 16px rgba(0, 0, 0, 0.15);
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      color: white;
      font-weight: bold;
    }
    
    /* 添加一个底部提示元素 */
    .bottom-indicator {
      position: absolute;
      bottom: 50px;
      left: 50%;
      transform: translateX(-50%);
      color: white;
      font-size: 24px;
      text-align: center;
      width: 100%;
    }
    
    /* 跳转按钮样式 */
    .nang-link-button, .rice-link-button, .yogurt-link-button {
      margin-top: 15px;
      padding: 10px 20px;
      background-color: rgba(255, 255, 255, 0.8);
      color: #333;
      border: none;
      border-radius: 50px;
      font-size: 16px;
      cursor: pointer;
      text-decoration: none;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      transition: all 0.3s ease;
      z-index: 100; /* 确保按钮在最上层 */
    }
    
    .nang-link-button:hover, .rice-link-button:hover, .yogurt-link-button:hover {
      transform: scale(1.05);
      background-color: rgba(255, 255, 255, 0.9);
      box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
    }
    
    /* 增强点击效果 */
    .click-effect {
      position: fixed; /* 改为fixed确保在视口中可见 */
      width: 0;
      height: 0;
      border-radius: 50%;
      background-color: rgba(255, 255, 255, 0.5); /* 增加透明度 */
      transform: translate(-50%, -50%);
      pointer-events: none;
      z-index: 9998;
      transition: all 0.8s ease;
    }
  </style>
</head>
<body>
  <!-- 渐变背景 - 保留 -->
  <div class="gradient-bg"></div>
  
  <!-- 大的div容器 -->
  <div class="main-container">
    <!-- 小的div - 位于中间偏左下方 -->
    <div class="sub-container">
      <span>小的div</span>
      <a href="nang.jsp" class="nang-link-button">前往馕页面</a>
    </div>
    
    <!-- 右侧盒子 - 移到小盒子下方 -->
    <div class="right-container">
      <span>右侧盒子</span>
      <a href="rice.jsp" class="rice-link-button">前往手抓饭页面</a>
    </div>
    
    <!-- 第三个盒子 - 放在右侧盒子下方 -->
    <div class="yogurt-container">
      <span>酸奶疙瘩盒子</span>
      <a href="yogurt.jsp" class="yogurt-link-button">前往酸奶疙瘩页面</a>
    </div>
    
    <!-- 添加底部提示 -->
    <div class="bottom-indicator">
      <p>您已到达页面底部</p>
      <p>↑ 向上滚动返回顶部 ↑</p>
    </div>
  </div>

  <script>
    // 页面滚动相关变量
    let currentSection = 0;
    const totalSections = 3;
    let viewportHeight = window.innerHeight;
    let scrolling = false; // 防止滚动重叠
    
    // 创建滚动目标点
    function createScrollTargets() {
      const mainContainer = document.querySelector('.main-container');
      for (let i = 0; i < totalSections; i++) {
        const target = document.createElement('div');
        target.className = 'scroll-target';
        target.id = `section-${i}`;
        target.style.position = 'absolute';
        target.style.top = `${i * 100}vh`;
        target.style.width = '100%';
        target.style.height = '1px';
        mainContainer.appendChild(target);
      }
    }
    
    // 页面加载时创建滚动目标点
    createScrollTargets();
    
    // 实时更新视口高度
    window.addEventListener('resize', () => {
      viewportHeight = window.innerHeight;
      console.log('窗口大小改变，更新视口高度：', viewportHeight);
    });
    
    // 监听主容器点击
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
      
      // 执行滚动 - 传入点击事件
      scrollToClickPosition(e);
    });
    
    // 创建点击波纹效果的函数
    function createClickEffect(e) {
      try {
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
      } catch (error) {
        console.error('创建点击效果时出错：', error);
      }
    }
    
    // 根据点击位置滚动页面
    function scrollToClickPosition(e) {
      if (scrolling) return; // 如果正在滚动，则不执行
      
      scrolling = true;
      
      // 获取点击位置相对于视口的Y坐标
      const clickY = e.clientY;
      console.log('点击位置Y坐标：', clickY, '视口高度：', viewportHeight);
      
      // 计算点击位置在页面中的相对位置（0-1之间）
      const relativePosition = clickY / viewportHeight;
      console.log('点击的相对位置：', relativePosition);
      
      // 计算目标滚动位置
      // 如果点击在视口上半部分，滚动到当前位置
      // 如果点击在视口下半部分，滚动到下一个部分
      let targetPosition;
      
      // 获取当前滚动位置
      const currentScrollY = window.scrollY;
      const currentRelativeSection = Math.floor(currentScrollY / viewportHeight);
      
      if (relativePosition < 0.5) {
        // 点击在上半部分，保持在当前部分但滚动到点击的相对位置
        targetPosition = currentRelativeSection * viewportHeight + clickY;
      } else {
        // 点击在下半部分，滚动到下一部分的相同相对位置
        targetPosition = (currentRelativeSection + 1) * viewportHeight + clickY - viewportHeight;
      }
      
      // 确保不超出页面范围
      const maxScroll = document.body.scrollHeight - viewportHeight;
      targetPosition = Math.min(targetPosition, maxScroll);
      targetPosition = Math.max(targetPosition, 0);
      
      console.log('滚动到位置：', targetPosition);
      
      // 使用绝对位置滚动
      window.scroll({
        top: targetPosition,
        behavior: 'smooth'
      });
      
      // 更新当前部分
      currentSection = Math.floor(targetPosition / viewportHeight);
      
      // 添加视觉指示器
      const indicator = document.createElement('div');
      indicator.style.position = 'fixed';
      indicator.style.right = '20px';
      indicator.style.top = '50%';
      indicator.style.transform = 'translateY(-50%)';
      indicator.style.backgroundColor = 'rgba(255, 255, 255, 0.7)';
      indicator.style.color = '#333';
      indicator.style.padding = '10px';
      indicator.style.borderRadius = '5px';
      indicator.style.zIndex = '9999';
      indicator.textContent = `滚动到Y坐标: ${targetPosition.toFixed(0)}px`;
      document.body.appendChild(indicator);
      
      // 滚动完成后重置标志
      setTimeout(() => {
        scrolling = false;
        if (document.body.contains(indicator)) {
          document.body.removeChild(indicator);
        }
      }, 1000);
    }
    
    // 添加滚轮事件监听
    window.addEventListener('wheel', function(e) {
      if (scrolling) return; // 如果正在滚动，则不执行
      
      if (e.deltaY > 0) {
        // 向下滚动
        scrolling = true;
        currentSection = Math.min(currentSection + 1, totalSections - 1);
        const targetPosition = currentSection * viewportHeight;
        
        window.scroll({
          top: targetPosition,
          behavior: 'smooth'
        });
        
        setTimeout(() => {
          scrolling = false;
        }, 1000);
      } else if (e.deltaY < 0 && currentSection > 0) {
        // 向上滚动
        scrolling = true;
        currentSection--;
        const targetPosition = currentSection * viewportHeight;
        
        window.scroll({
          top: targetPosition,
          behavior: 'smooth'
        });
        
        setTimeout(() => {
          scrolling = false;
        }, 1000);
      }
    });
    
    // 添加键盘事件，方便测试
    document.addEventListener('keydown', function(e) {
      if (e.key === 'ArrowDown') {
        scrolling = true;
        currentSection = Math.min(currentSection + 1, totalSections - 1);
        const targetPosition = currentSection * viewportHeight;
        
        window.scroll({
          top: targetPosition,
          behavior: 'smooth'
        });
        
        setTimeout(() => {
          scrolling = false;
        }, 1000);
      } else if (e.key === 'ArrowUp' && currentSection > 0) {
        scrolling = true;
        currentSection--;
        const targetPosition = currentSection * viewportHeight;
        
        window.scroll({
          top: targetPosition,
          behavior: 'smooth'
        });
        
        setTimeout(() => {
          scrolling = false;
        }, 1000);
      }
    });
    
    // 添加调试信息
    console.log('页面加载完成，视口高度：', viewportHeight);
    console.log('主容器：', mainContainer);
    console.log('主容器高度：', mainContainer.offsetHeight);
  </script>
</body>
</html>
