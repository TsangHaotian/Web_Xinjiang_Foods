<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>馕 - 新疆美食</title>
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
  <div class="page-name">馕</div>
  
  <div class="container">
    <header>
      <h1>馕</h1>
      <p>新疆传统面食，千年不变的美味</p>
    </header>
    
    <div class="food-content">
      <div class="food-image">
        <img src="images/nang1.png" alt="馕">
      </div>
      
      <div class="food-description">
        <h2>馕的介绍</h2>
        <p>馕是新疆地区最具代表性的传统面食，已有两千多年的历史。它外形圆形，中间稍厚，边缘较薄，外脆里软，香气扑鼻。馕是维吾尔族等少数民族的主食，也是待客的必备食品。</p>
        
        <div class="ingredients">
          <h3>主要原料</h3>
          <ul>
            <li>高筋面粉</li>
            <li>酵母</li>
            <li>温水</li>
            <li>盐</li>
            <li>芝麻（可选）</li>
            <li>葱花（可选）</li>
          </ul>
        </div>
        
        <div class="making-process">
          <h3>制作过程</h3>
          <ol>
            <li>将面粉、酵母、盐混合，加入温水揉成面团</li>
            <li>将面团盖上湿布，放置温暖处发酵1-2小时</li>
            <li>将发酵好的面团揉匀，擀成圆形，中间稍厚，边缘薄</li>
            <li>用专门的馕印在面饼上压出花纹</li>
            <li>撒上芝麻或葱花等配料</li>
            <li>将面饼贴在预热的馕坑内壁上烤制</li>
            <li>烤至表面金黄色，取出即可食用</li>
          </ol>
        </div>
        
        <a href="index.jsp" class="back-link">返回首页</a>
      </div>
    </div>
  </div>
  <script src="scripts/nang.js"></script>
</body>
</html>