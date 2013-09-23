window = @
document = window.document
###
* 获取元素
* @param  {Object} id 
* @return {Object} 
###
gId = (id) ->
	return document.getElementById id
###
* 拓展
* @param  {Object} define 默认配置项
* @param  {Object} source    
* @return {Object}
###
extend = (define, source) ->

	for k of source
		define[k] = source[k]
	return define;

###
* 默认参数
* @type {Object}
###

defineConfig = 
	obj: gId 'demo'
	step: 25,
	delay: 1000
	speed:30


###
* 主函数
* @param  {Object} options 参数
* @主函数
###

window.scroll = (options) ->
	options = extend defineConfig, options

	t = null
	step = options.step
	delay = options.delay
	speed = options.speed

	p = 0;
	o = options.obj

	###
	 * 复制一份内容
	###
	o.innerHTML += o.innerHTML
	o.onmouseover = ->
		p = 1
		return
	o.onmouseout = ->
		p = 0
		return

	o.scrollTop = 0
	###
	 * 运动函数
	###
	start = ->
		t = setInterval scrolling,speed
		if !p
			o.scrollTop += 1
		return
	###
	 * 执行函数
	 * @return {[type]} [description]
	###
	scrolling = -> 
		if o.scrollTop % step != 0
			o.scrollTop += 1; 
			if o.scrollTop >= o.scrollHeight/2
				o.scrollTop = 0
		else
			clearInterval t
			setTimeout start,delay
		return

	setTimeout start,delay
	return


