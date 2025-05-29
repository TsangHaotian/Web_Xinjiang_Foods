// 点击特效JavaScript - 波纹效果
document.addEventListener('DOMContentLoaded', function() {
    // 创建点击效果元素
    const clickEffect = document.createElement('div');
    clickEffect.className = 'click-effect';
    document.body.appendChild(clickEffect);

    // 监听点击事件
    document.addEventListener('click', function(e) {
        // 创建新的波纹元素（每次点击创建新元素，避免动画冲突）
        const ripple = document.createElement('div');
        ripple.className = 'ripple';
        document.body.appendChild(ripple);
        
        // 设置波纹起始位置为鼠标点击位置
        // 注意：减去一半宽度使波纹中心与点击位置对齐
        ripple.style.left = (e.pageX - 20) + 'px';
        ripple.style.top = (e.pageY - 20) + 'px';
        
        // 添加动画效果
        ripple.classList.add('animate');
        
        // 动画结束后移除元素
        setTimeout(function() {
            ripple.remove();
        }, 700);
    });
});
document.addEventListener('DOMContentLoaded', function() {
    // 创建点击效果元素
    const clickEffect = document.createElement('div');
    clickEffect.className = 'click-effect';
    document.body.appendChild(clickEffect);

    // 监听点击事件
    document.addEventListener('click', function(e) {
        // 设置点击效果的位置
        clickEffect.style.left = e.pageX + 'px';
        clickEffect.style.top = e.pageY + 'px';
        
        // 重置点击效果
        clickEffect.style.width = '0';
        clickEffect.style.height = '0';
        
        // 触发重绘
        void clickEffect.offsetWidth;
        
        // 添加动画效果
        clickEffect.style.width = '500px';
        clickEffect.style.height = '500px';
        
        // 动画结束后重置
        setTimeout(function() {
            clickEffect.style.width = '0';
            clickEffect.style.height = '0';
        }, 700);
    });
});