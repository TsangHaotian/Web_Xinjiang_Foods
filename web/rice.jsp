<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>手抓饭 - 新疆美食</title>
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
  <div class="page-name">手抓饭</div>
  
  <div class="container">
    <header>
      <h1>手抓饭</h1>
      <p>胡萝卜、羊肉和米饭的完美结合</p>
    </header>
    
    <div class="food-content">
      <div class="food-image">
        <img src="images/rice1.png" alt="手抓饭">
      </div>
      
      <div class="food-description">
        <h2>手抓饭的介绍</h2>
        <p>手抓饭是新疆维吾尔族的传统美食，也是中亚各国的国饭。它以大米为主料，配以胡萝卜、洋葱和羊肉等食材烹制而成。手抓饭色泽金黄，香气四溢，肉质鲜嫩，米饭粒粒分明，是新疆最受欢迎的美食之一。</p>
        
        <div class="ingredients">
          <h3>主要原料</h3>
          <ul>
            <li>长粒米</li>
            <li>羊肉（最好是带骨的羊肉）</li>
            <li>胡萝卜</li>
            <li>洋葱</li>
            <li>食用油</li>
            <li>盐</li>
            <li>孜然</li>
            <li>辣椒粉</li>
            <li>葡萄干（可选）</li>
          </ul>
        </div>
        
        <div class="making-process">
          <h3>制作过程</h3>
          <ol>
            <li>将大米淘洗干净，浸泡30分钟</li>
            <li>羊肉切成大块，胡萝卜切成条状，洋葱切丝</li>
            <li>锅中热油，先放入羊肉煸炒至变色</li>
            <li>加入洋葱炒至透明，再加入胡萝卜翻炒</li>
            <li>加入适量的水，放入盐、孜然等调料，大火煮开</li>
            <li>将浸泡好的米铺在肉和胡萝卜上面，不要搅拌</li>
            <li>水烧干后转小火，盖上锅盖焖15-20分钟</li>
            <li>出锅前撒上葡萄干点缀，拌匀即可食用</li>
          </ol>
        </div>
        
        <a href="index.jsp" class="back-link">返回首页</a>
      </div>
    </div>
  </div>
  <script src="scripts/rice.js"></script>
</body>
</html>