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

// 页面加载时触发光束动画
window.addEventListener('load', function() {
  const beam = document.querySelector('.light-beam');
  
  // 重置动画以便可以重复触发
  setTimeout(() => {
    if (beam) {
      beam.style.animation = 'none';
      beam.offsetHeight; // 触发重绘
      beam.style.animation = 'beam 3s ease-in-out';
    }
  }, 10);
});

// 添加华为风格光束效果
document.addEventListener('DOMContentLoaded', function() {
  const beamContainer = document.getElementById('beam-container');
  const nangText = document.querySelector('h1 .highlight');
  
  if (beamContainer && nangText) {
    // 创建两个光束元素，错开动画时间
    const beam1 = document.createElement('div');
    beam1.className = 'light-beam';
    beam1.style.animation = 'moveBeam 8s infinite alternate ease-in-out, beamFade 3s infinite ease-in-out';
    beamContainer.appendChild(beam1);
    
    const beam2 = document.createElement('div');
    beam2.className = 'light-beam light-beam-2';
    beam2.style.animation = 'moveBeam 8s infinite alternate-reverse ease-in-out, beamFade 3s infinite ease-in-out 1.5s';
    beamContainer.appendChild(beam2);
    
    // 定位光束到"馕"字上方
    function positionBeams() {
      const nangRect = nangText.getBoundingClientRect();
      const headerRect = document.querySelector('header').getBoundingClientRect();
      
      // 第一束光位置
      beam1.style.left = (nangRect.left + nangRect.width / 2 - 20) + 'px';
      beam1.style.top = (headerRect.top - 150) + 'px';
      
      // 第二束光位置，稍微错开
      beam2.style.left = (nangRect.left + nangRect.width / 2 + 20) + 'px';
      beam2.style.top = (headerRect.top - 150) + 'px';
    }
    
    // 初始定位
    positionBeams();
    
    // 窗口大小改变时重新定位
    window.addEventListener('resize', positionBeams);
    
    // 滚动时重新定位
    window.addEventListener('scroll', positionBeams);
    
    // 添加鼠标移动时光束微调效果
    document.addEventListener('mousemove', function(e) {
      const windowWidth = window.innerWidth;
      const mouseXRatio = e.clientX / windowWidth;
      
      // 根据鼠标位置微调光束角度
      const angle1 = -15 + mouseXRatio * 30; // -15° 到 15°
      const angle2 = 15 - mouseXRatio * 30; // 15° 到 -15°
      
      beam1.style.transform = `rotate(${angle1}deg)`;
      beam2.style.transform = `rotate(${angle2}deg)`;
    });
  }
});