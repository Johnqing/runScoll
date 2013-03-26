# 滚动

> 注意：obj必须有高度，并且为overflow:hidden  
> 调用方法
scroll({
  obj: document.getElementById('demo'),
	step: 25,
	delay: 1000,
	speed:30
});

可以传入4个值：

1. obj滚动内容父容器
2. step每次滚动步数
3. delay定时滚动
4. speed缓动速率
