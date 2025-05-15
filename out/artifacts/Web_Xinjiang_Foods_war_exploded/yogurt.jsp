<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>酸奶疙瘩 - 新疆美食</title>
  <style>
    body, html {
      margin: 0;
      padding: 0;
      width: 100%;
      height: 100%;
      color: white;
      font-family: Arial, sans-serif;
      position: relative;
      overflow: auto;
    }
    
    /* 渐变蓝绿色背景 */
    .gradient-bg {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: linear-gradient(135deg, #0099cc, #00cc99);
      z-index: -1;
    }
    
    /* 页面名称标签 */
    .page-name {
      position: fixed;
      top: 20px;
      right: 30px;
      background-color: rgba(255, 255, 255, 0.2);
      padding: 8px 15px;
      border-radius: 20px;
      font-weight: bold;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
      backdrop-filter: blur(5px);
    }
    
    .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 50px 20px;
    }
    
    header {
      text-align: center;
      margin-bottom: 50px;
    }
    
    h1 {
      font-size: 36px;
      margin-bottom: 10px;
    }
    
    .food-content {
      display: flex;
      flex-wrap: wrap;
      gap: 30px;
    }
    
    .food-image {
      flex: 1;
      min-width: 300px;
    }
    
    .food-image img {
      width: 100%;
      border-radius: 10px;
      box-shadow: 0 0 15px rgba(255, 255, 255, 0.3);
    }
    
    .food-description {
      flex: 2;
      min-width: 300px;
    }
    
    .food-description h2 {
      border-bottom: 1px solid rgba(255, 255, 255, 0.3);
      padding-bottom: 10px;
      margin-top: 0;
    }
    
    .food-description p {
      line-height: 1.6;
      margin-bottom: 20px;
    }
    
    .ingredients, .making-process {
      margin-top: 30px;
    }
    
    .ingredients h3, .making-process h3 {
      color: #f0c040;
    }
    
    .ingredients ul {
      list-style-type: circle;
      padding-left: 20px;
    }
    
    .making-process ol {
      padding-left: 20px;
    }
    
    .making-process li {
      margin-bottom: 10px;
    }
    
    .back-link {
      display: inline-block;
      margin-top: 30px;
      color: #f0c040;
      text-decoration: none;
      border: 1px solid #f0c040;
      padding: 10px 20px;
      border-radius: 5px;
      transition: all 0.3s;
    }
    
    .back-link:hover {
      background-color: #f0c040;
      color: black;
    }
    
    /* 点击特效 */
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
  <!-- 渐变背景 -->
  <div class="gradient-bg"></div>
  
  <!-- 页面名称标签 -->
  <div class="page-name">酸奶疙瘩</div>
  
  <div class="container">
    <header>
      <h1>酸奶疙瘩</h1>
      <p>选用优质牛奶制作的传统乳制品</p>
    </header>
    
    <div class="food-content">
      <div class="food-image">
        <img src="images/yogurt1.png" alt="酸奶疙瘩">
      </div>
      
      <div class="food-description">
        <h2>酸奶疙瘩的介绍</h2>
        <p>酸奶疙瘩是新疆地区特有的传统乳制品，由牛奶或羊奶发酵制成。它质地细腻，口感酸甜，富含乳酸菌和多种营养物质。在新疆，酸奶疙瘩不仅是日常饮食，也是待客的佳品，常与馕、水果一起食用。</p>
        
        <div class="ingredients">
          <h3>主要原料</h3>
          <ul>
            <li>新鲜牛奶或羊奶</li>
            <li>酸奶发酵剂（或老酸奶）</li>
            <li>蜂蜜（可选）</li>
            <li>干果（可选）</li>
          </ul>
        </div>
        
        <div class="making-process">
          <h3>制作过程</h3>
          <ol>
            <li>将新鲜牛奶煮沸后，冷却至40-45℃</li>
            <li>加入少量老酸奶或酸奶发酵剂，搅拌</li>
            <li>将混合好的奶液倒入干净的容器中，盖上盖子</li>
            <li>放在温暖处发酵6-8小时，直到凝固成块状</li>
            <li>发酵好的酸奶放入冰箱冷藏2-3小时</li>
            <li>食用时可加入蜂蜜调味，或撒上干果增加口感</li>
            <li>传统上，新疆人会将酸奶装在布袋中沥干水分，制成更浓稠的酸奶疙瘩</li>
          </ol>
        </div>
        
        <a href="index.jsp" class="back-link">返回首页</a>
      </div>
    </div>
  </div>
  <script src="scripts/yogurt.js"></script>
</body>
</html>