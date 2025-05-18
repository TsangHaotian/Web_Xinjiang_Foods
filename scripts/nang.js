
// 页面点击时触发动画
document.body.addEventListener('click', function handler() {
    // 只触发一次
    document.body.removeEventListener('click', handler);
    // 获取所有需要动画的元素
    const flyElements = document.querySelectorAll('.fly-in-init');
    flyElements.forEach((el, idx) => {
        // 延迟依次飞出
        setTimeout(() => {
            el.classList.add('fly-in-active');
        }, idx * 120);
    });
});
// 页面加载时，确保初始状态
window.addEventListener('DOMContentLoaded', () => {
    const flyElements = document.querySelectorAll('.fly-in-init');
    flyElements.forEach(el => {
        el.classList.remove('fly-in-active');
    });
});

// 页面转场动画逻辑
document.addEventListener('DOMContentLoaded', function () {
    var mask = document.getElementById('pageTransitionMask');
    // 拦截所有本地页面跳转链接
    document.querySelectorAll('a[href]').forEach(function (link) {
        var href = link.getAttribute('href');
        // 只拦截本地html页面跳转
        if (href && href.endsWith('.html')) {
            link.addEventListener('click', function (e) {
                e.preventDefault();
                mask.classList.add('active');
                setTimeout(function () {
                    window.location.href = href;
                }, 500); // 动画时长与CSS一致
            });
        }
    });
    // 页面进入时淡出遮罩
    mask.classList.remove('active');
});
