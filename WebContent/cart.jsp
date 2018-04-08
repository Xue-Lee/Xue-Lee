<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>DOTA2神秘商店 - 官方周边商城</title>
<meta name="Description"
	content="DOTA2神秘商店，完美官方实物商城，提供完美游戏周边一站式购物平台，更多限时折扣，绝版手办，秒杀优惠，尽在DOTA2神秘商店，支持支付宝、网银等各种支付方式，即时发货，提供安全交易保障，让您安心享受购物乐趣！" />
<meta name="Keywords"
	content="DOTA2神秘商店,周变商城,实物商城,完美游戏,神秘商店,授权正品,手办,主机周边,Xbox,打折,优惠,dota2,诛仙3,神雕侠侣,御天降魔传" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="author" content="Design:Yimei.Xu; Web Layout:Hongwei.Yu" />
<link rel="stylesheet" type="text/css"
	href="http://static.dota2.com.cn/shop/css/base.css" />
<link rel="stylesheet" type="text/css"
	href="http://static.dota2.com.cn/shop/css/dota2_base.css" />
<link rel="stylesheet" type="text/css"
	href="http://static.dota2.com.cn/shop/css/cart.css" />
</head>
<body>
	<div class="wrap_dota2-top-col">
		<div class="wrap_dota2-top">
			<div class="wrap_dota2-logo-dota2">
				<a href="http://www.dota2.com.cn/index.htm" target="_blank"><img
					src="http://static.dota2.com.cn/shop/images/secretshop/logo-dota2.png"
					alt="" /></a>
			</div>
			<div class="wrap_dota2-logo-shop">
				<a href="/" target="_blank"><img
					src="http://static.dota2.com.cn/shop/images/secretshop/logo-shop.png"
					alt="" /></a>
			</div>
			<div class="wrap_dota2-user-info">
				<a href="javascript:;" class='user-info-btn user-reg needLogin'>登录</a>
				<a
					href="http://passport.wanmei.com/reg/?o=http%3A%2F%secretshop.dota2.com.cn"
					class="user-info-btn user-reg">快速注册</a> <a href="/user/order"
					class="myorder needLogin" target="_blank">我的订单</a> <a
					href="/user/fav" class="myfavorite needLogin" target="_blank">我的关注</a>
				<a href="/cart/" class="mycart top_cart_btn" target="_blank">我的购物车
					(<span class="cartNum">1</span>)
				</a>
			</div>
			<div class="mycart-list top_cart_list" style=""></div>
		</div>
		<div class="wrap_dota2-top-nav">
			<a href="shopping.jsp">首页</a> <a href="details.do?cid=1">游戏手办</a> <a
				href="details.do?cid=2">主题服饰</a> <a href="details.do?cid=3">创意T恤</a>

			<a href="details.do?cid=4">毛绒玩具</a> <a href="details.do?cid=5">生活用品</a>
			<a href="details.do?cid=6">特别限量</a>

			<div class="wrap_dota2-top-search">
				<input type="text" data-old-key="" value="" /> <a
					href="javscript:;" class="btn-search"></a>
			</div>
		</div>
	</div>
	<div class="wrap_dota2-float-nav">
		<a href="/user/profile" target="_blank" title="个人中心"
			class="float-nav-btn float-nav-people needLogin"></a> <a
			href="/user/fav" target="_blank" title="我的关注"
			class="float-nav-btn float-nav-heart needLogin"></a> <a href="/cart/"
			target="_blank" class="float-nav-shop-btn">购<br />物<br />车<span
			class="cartNum">1</span></a> <a
			href="http://cs.wanmei.com/im?imCode=imdotastoregames" title="在线客服"
			class="float-nav-btn float-nav-talk needLogin"></a> <a href="/"
			class="float-nav-back-btn">返回<br />首页
		</a>

	</div>
	<script type="text/template" id="top_cart_tpl">
    {{ if(cartList == null || cartList.length == 0){ }}
    <p class="default">购物车里暂无商品</p>
    {{ } else { }}
    <div class="mycart-box">
        <ul>
            {{ for(var i = 0; i < cartList.length; i++){ }}
            {{   var bean = cartList[i]; }}
            {{   if(bean.productType == 1){ }}
            <li data-pid="{{=bean.pid}}" class="suit">
                <p class="suit-all" style="word-wrap: break-word; word-break: break-all;">
                    <span class="suit_pre">【套装】</span>{{=bean.name}}
                </p>
                {{   for(var j = 0; j < bean.productSuitBean.productList.length; j++){ }}
                {{      var psb = bean.productSuitBean.productList[j]; }}
                <div class="suit-detial">
                    <dl class="cl">
                        <dt><img src="{{=psb.img}}_50.jpg" alt=""></dt>
                        <dd>
                            <h4 class="ellipsis">{{=psb.name}}</h4>
                            {{ if(psb.productSku != null){ }}
                            <p class="ellipsis">{{=psb.productSku.skuStr}}</p>
                            {{ } }}
                        </dd>
                    </dl>
                    <a href="/product/{{=psb.pid}}" class="link" target="_blank"></a>
                </div>
                {{   } }}
                <span class="price">{{=getRmbPrice(bean.price)}} &times; {{=bean.number}}</span>
                <b class="del"></b>
            </li>
            {{   } else { }}
            <li data-pid="{{=bean.pid}}">
                <dl class="cl">
                    <dt><img src="{{=bean.img}}_50.jpg" alt=""></dt>
                    <dd> <h4 class="ellipsis">{{=bean.name}}</h4>
                        {{ if(bean.productSku != null){ }}
                        <p class="ellipsis">{{=bean.productSku.skuStr}}</p>
                        {{ } }}
                    </dd>
                </dl>
                <span class="price">{{=getRmbPrice(bean.price)}} &times; {{=bean.number}}</span>
                <a href="/product/{{=bean.pid}}" class="link" target="_blank"></a>
                <b class="del"></b>
            </li>
            {{   } }}
            {{ } }}
        </ul>
        <div class="totle cl">
            <a href="/cart" target="_blank" class="btn-payforgoods">去购物车结算</a>
            <p class="p-totle">共 <span class="cartNum">{{=sumNum}}</span> 件商品</p>
            <p class="p-totlePrice">￥ {{=getRmbPrice(sumPrice)}}</p>
        </div>
    </div>
    {{ } }}
</script>
	<!-- 顶部导航 -->

	<!-- 面包屑导航 -->
	<div class="nav_bar">
		<div class="wrap">
			<a href="/">首页</a>&gt; <a href="">我的购物车</a>
		</div>
	</div>
	<!-- 购物车商品主体 -->
	<div class="wrap">
		
		<div class="cart_list">
			<form id="cartForm" method="post" action="/buy/preCheckout">
				<table cellpadding="0" cellspacing="0">
					<thead>
						<tr>
							<td class="state"><span class="all_checkbox"><span
									class="checkbox"><label class="curr"></label></span><label>全选</label></span></td>
							<td class="name">商品名称</td>
							<td class="num">数量</td>
							<td class="prices">价格</td>
							<td class="operation">操作</td>
						</tr>
					</thead>
					<tbody>

						<tr data-pid="29">
							<td class="state"><span class="checkbox"> <input
									type="checkbox" name="pids" value="29" checked="checked" /> <label
									class="curr" data-pid="29"></label>
							</span></td>
							<td>



								<dl class="cf">
									<dt class="f_left">
										<a href="/product/29" target="_blank"><img
											src="http://img.wanmei.com/secretshop/sta/icon/20171103/3d0f2f69cded4562856991d756e7e9fb_72.jpg"
											alt="" title="DOTA2 - 痛苦女王 粘土人手办" /></a>
									</dt>
									<dd class="f_left">
										<h1>
											<a href="/product/29" class="name ellipsis2" target="_blank">DOTA2
												- 痛苦女王 粘土人手办</a>
										</h1>

										<h2 class="sub_title ellipsis2">GOODSMILE制作，可摆多种超萌姿势，内含Ti7纯正宝瓶和多种配件</h2>


									</dd>
								</dl>


							</td>
							<td><input id="price_29" type="hidden" value="29800" /> <span
								class="amount number-input"><span class="reduce"></span><input
									id="num_29" name="num_29" data-pid="29" type="text" value="1"
									min="1" data-stock="494" data-suit-number="1" maxlength="3"><span
									class="plus"></span></span>

								<p class="stock">
									库存<font>494</font>件
								</p></td>
							<td class="price">¥<font id="rmbPrice_29">298.00</font></td>
							<td><a href="javascript:void(0)" class="del" data-pid="29"><span></span></a></td>
						</tr>

					</tbody>
				</table>
				<div class="cf total_bar">
					<p class="f_left">
						<span class="all_checkbox"><span class="checkbox"><label
								class="curr"></label></span><label>全选</label></span> <a
							href="javascript:void(0)" class="batch-delete">删除选中商品</a> <a
							href="/">继续购物</a>
					</p>
					<div class="f_right">
						<div class="f_right">
							<input type="button" value="去结算" disabled="disabled"
								class="btn btn_off btn_checkout" />
							<p class="tip tip_checkout" style="display: none;"></p>
						</div>
						<p class="f_right">
							共<span id="num"><font id="checkoutNum">0</font></span>件商品， 合计：<span>¥<font
								id="checkoutPrice">0.00</font></span>
						</p>
					</div>
				</div>
			</form>
		</div>
		
		<div class="cart_null" style="display: none;">
			<span></span>购物车空空的哦~，赶紧<a href="/">去选购</a>吧！
		</div>
		










		<!-- 猜你喜欢 && 我的关注 -->
		<div class="likes">
			<div class="nav">
				<ul class="cf">
					<li class="on">猜你喜欢</li>

				</ul>
			</div>
			<div class="content">
				<div class="like">
					<div class="bd">
						<div class="list"></div>
						<a class="prev" href="javascript:void(0)"><span></span></a> <a
							class="next" href="javascript:void(0)"><span></span></a>
					</div>
				</div>

			</div>
		</div>
		<script type="text/template" id="guess_like_tpl">
    {{ for(var i = 0; i < list.length; i++){ }}
    {{   var product = list[i] }}
    {{   if(i%6==0){ }}
    <ul class="cf">
    {{   } }}
        <li>
            <a href="/product/{{=product.id}}" target="_blank"><img src="{{=product.bigImg}}_120.jpg" alt="" title="{{=product.name}}" /></a>
            <p class="name ellipsis">{{=product.name}}</p>
            <p class="price">¥{{=getRmbPrice(product.price)}}</p>
        </li>
    {{  if(i == list.length - 1 || (i+1)%6 == 0)}}    
    </ul>
    {{ } }}
</script>

	</div>












	<div class="promise-box">
		<ul>
			<li class="icon-zan">正品保证</li>
			<li class="icon-car">快速配送</li>
			<li class="icon-change">无忧退换</li>
		</ul>
	</div>
	<div class="bottom-footer">
		<div class="bottom-footer-wrap">
			<div class="bottom-footer-help cl">
				<dl>
					<dt>购物指南</dt>
					<dd>
						<p>
							<a href="/faq#gwzn-0">常见问题</a>
						</p>
						<p>
							<a href="/faq#gwzn-1">购物流程</a>
						</p>
						<p>
							<a href="/faq#gwzn-2">支付方式</a>
						</p>
					</dd>
				</dl>
				<dl>
					<dt>配送方式</dt>
					<dd>
						<p>
							<a href="/faq#psfs-0">配送范围</a>
						</p>
						<p>
							<a href="/faq#psfs-1">快递费用</a>
						</p>
					</dd>
				</dl>
				<dl>
					<dt>售后服务</dt>
					<dd>
						<p>
							<a href="/faq#shfw-0">退换货流程</a>
						</p>
						<p>
							<a href="/faq#shfw-1">退换货政策</a>
						</p>
						<p>
							<a href="/faq">&ensp;服务政策</a>
						</p>
					</dd>
				</dl>
				<dl>
					<dt>关注我们</dt>
					<dd>
						<p>
							<a href="http://www.dota2.com.cn" target="_blank">刀塔官网</a>
						</p>
						<p>
							<a href="http://weibo.com/dota2comcn" target="_blank">新浪微博</a>
						</p>
						<p>
							<a href="javascript:;" class="wechat"
								style="display: block; position: relative;">官方微信<img
								src="http://www.dota2.com.cn/images/launcher1303/launcher_weixin.png"
								alt="微信二维码" class="wechat-tip"></a>
						</p>
					</dd>
				</dl>
				<div class="bottom-footer-other">
					<div class="bottom-footer-faq">
						<h3>028-68723666</h3>
						周一至周日 0:00 - 24:00 <a
							href="http://cs.wanmei.com/im?imCode=imdotastoregames"
							target="_blank" class="ol">在线客服</a>
					</div>
				</div>
			</div>
		</div>
	</div>












	<script type="text/javascript">
		var ctx = '';
		var host_url = 'http://secretshop.dota2.com.cn';
		var static_image_url = '';
		var sso_service_type = 'wmshop';
		var page_id = 'cart';
		var mobile = ''
	</script>
	<script type="text/javascript"
		src="http://www.wanmei.com/public/js/jq_183.js"></script>
	<script type="text/javascript"
		src="http://www.wanmei.com/public/js/wm.js?v=777" top="false"
		bottom="false"></script>
	<script type="text/javascript"
		src="http://www.wanmei.com/public/js/modules/boxy/jquery.boxy.js"></script>
	<script type="text/javascript"
		src="http://static.dota2.com.cn/shop/js/lib.js?20170622"></script>

	<script type="text/javascript"
		src="http://static.dota2.com.cn/shop/js/page/cart.js"></script>
	<script>
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "https://hm.baidu.com/hm.js?fc832b3073838d9a36ebbef124133884";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>
</body>
</html>
