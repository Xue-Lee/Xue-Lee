<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.chinasofti.dota2.entity.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
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
	href="http://static.dota2.com.cn/shop/css/item.css" />
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
					(<span class="cartNum">0</span>)
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
			class="cartNum">0</span></a> <a
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
			<a href="shopping.jsp">首页</a> &gt; <a href="/dota2">DOTA2</a> &gt; <a
				href="/product/list?cid=5">游戏手办</a> &gt; <a href="">DOTA2 - 痛苦女王
				粘土人手办</a>
		</div>
	</div>
	<!-- 商品细节 -->
	<input id="isSkuProduct" type="hidden" value="false" />
	<input id="productId" type="hidden" value="29" />
	<input id="skuId" type="hidden" value="" />
	<div class="goods_detail">
		<div class="wrap cf">
			<div class="gallery f_left">
				<div class="picFocus">
					<div class="bd">
						<ul>
							<%
								ArrayList datu = (ArrayList) request.getAttribute("datu");
								for (Object dat : datu) {
							%>
							<li><img src="img/shopping/<%=dat%>" width="430"
								height="430" /></li>
							<%
								}
							%>
						</ul>
					</div>
					<div class="hd">
						<ul>
							<%
								Product pro = (Product) request.getAttribute("pro");
								ArrayList xiaotu = (ArrayList) request.getAttribute("xiaotu");
								for (Object dat : xiaotu) {
							%>
							<li><img src="img/shopping/<%=dat%>" width="100"
								height="100" alt="<%=pro.getProductName()%>"
								title="<%=pro.getProductName()%>" /></li>
							<%
								}
							%>
						</ul>
					</div>
				</div>
				<div class="share">
					<dl class="cf">
						<dt class="f_left">
							<a href="javascript:void(0)" data-pid="29" class="like "><span></span>关注<font>6</font></a>
						</dt>
					</dl>
				</div>
			</div>
			<div class="property f_left">
				<div class="title">
					<h1><%=pro.getProductName()%></h1>

					<p><%=pro.getProductDesc()%></p>

				</div>
				<p id="productShowPrice" class="price">
					¥
					<%=pro.getProductPrice()%></p>


				<table>
					<tbody>
						<tr>
							<th>运费：</th>
							<td>
								<div class="meta">
									<span class="from"><%=pro.getProductCity()%></span>至<span
										class="to shippingTo"></span><font>快递：￥18.00<span
										class="shippingFee"></span></font>
									<div class="popup shippingPopup">
										<p class="close">
											<span></span>
										</p>
										<div class="nav">
											<ul class="cf">
												<li class="province curr"></li>
												<li class="city" style="display: none;"></li>
												<li class="regions" style="display: none;"></li>
											</ul>
										</div>
										<div class="pane">
											<dl class="cf"></dl>
											<dl class="cf" style="display: none;"></dl>
											<dl class="cf" style="display: none;"></dl>
										</div>

									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<table style="margin-left: -4px;" id="product_sku_table">

								</table>
							</td>
						</tr>
						<tr>
							<th>数量：</th>
							<td><span class="amount number-input"><span
									class="reduce"></span><input id="buyNumber" type="text"
									value="1" min="1" stock="494" maxlength="3" /><span
									class="plus"></span></span> <span class="sold">已售出<font
									id="sold_num"><%=pro.getViewCount()%></font>件
							</span></td>
						</tr>





					</tbody>
				</table>
				<div class="btns">

					<a href="cart.jsp" class="">立即购买</a> <a href="cart.jsp" class=""><span></span>加入购物车</a>


				</div>
			</div>
		</div>
	</div>
	<!-- 套餐 -->

	<!-- 介绍 -->
	<div class="presentation">
		<div class="wrap cf">
			<!-- 猜你喜欢 -->
			<div class="guess_like f_left">
				<dl>
					<dt>猜你喜欢</dt>
				</dl>
			</div>
			<!-- 详情 -->
			<div class="product_detail details f_left">
				<ul class="cf details_nav desc_tab">
					<li class="curr"><a href="javascript:void(0)">商品介绍</a></li>
					<li><a href="javascript:void(0)">产品评论<span>(2)</span></a></li>
				</ul>
				<div class="desc_pane cf">
					<div class="content cf">
						<p>
							<%
								ArrayList zhanshi = (ArrayList) request.getAttribute("zhanshi");
								for (Object dat : zhanshi) {
									if(dat!=null){
							%>
							<img src="img/shopping/<%=dat%>"
								title="c93051789271400e856b076db31e3013.jpg"
								alt="手办_痛苦女王_750.jpg">
							<%
									}
								}
							%>

						</p>
					</div>
					<div class="content cf" style="display: none;">
						<div class="comment">
							<div class="cf rate_header">
								<div class="f_left rate_score">
									<p class="num">100%</p>
									<p class="stars stars5"></p>
									<span>好评度</span>
								</div>
								<div class="f_left rate_bar">
									<table cellspacing="0" cellpadding="0">
										<tbody>
											<tr>
												<th>好评(100%)</th>
												<td><p>
														<span style="width: 100%"></span>
													</p></td>
											</tr>
											<tr>
												<th>中评(0%)</th>
												<td><p>
														<span style="width: 0%"></span>
													</p></td>
											</tr>
											<tr>
												<th>差评(0%)</th>
												<td><p>
														<span style="width: 0%"></span>
													</p></td>
											</tr>
										</tbody>
									</table>
								</div>
								<dl class="cf f_right">
									<dt class="f_left">买家印象：</dt>
									<dd class="f_left">

										<a href="javascript:void(0)">痛苦女王(0)</a>

									</dd>
								</dl>
							</div>
							<div class="rate_toolbar">
								<a data-type="0" href="javascript:void(0)" class="curr">全部评价（<span>2</span>）
								</a> <a data-type="4" href="javascript:void(0)">晒图（<span>0</span>）
								</a> <a data-type="1" href="javascript:void(0)">好评（<span>2</span>）
								</a> <a data-type="3" href="javascript:void(0)">中评（<span>0</span>）
								</a> <a data-type="2" href="javascript:void(0)">差评（<span>0</span>）
								</a>
							</div>
							<div class="comment_list"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/template" id="sku_tpl">
        <div class="promptChenge">
            {{ for(var i = 0; i < salePropList.length; i++){ }}
            {{   var prop = salePropList[i]; }}
            <div>
                <p class="title">{{=prop.propName}}:</p>
                <p class="option_size">
                    {{ for(var j = 0; j < prop.propValueList.length; j++){ }}
                    {{   var propV = prop.propValueList[j]; }}
                    <a href="javascript:void(0)" data-value="{{=prop.id}}:{{=propV.id}}" class="sku-item">{{=propV.name}}</a>
                    {{ } }}
                </p>
            </div>
            {{ } }}
            <p class="btn">
                <input type="button" value="确定" class="confirm" />
                <input type="button" value="取消" class="cancel" />
            </p>
        </div>
    </script>
	<script type="text/template" id="like_tpl">
        {{ for(var i = 0; i < list.length; i++){ }}
        {{   var product = list[i] }}
        {{   if(product != null) { }}
        <dd>
            <a href="/product/{{=product.id}}" target="_blank"><img src="{{=product.bigImg}}_120.jpg" alt="{{=product.name}}" title="{{=product.name}}" /></a>
            <p class="name ellipsis">{{=product.name}}</p>
            <p class="price">¥{{=getRmbPrice(product.price)}}</p>
        </dd>
        {{   } }}
        {{ } }}
    </script>












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
		var page_id = 'product';
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
		src="http://static.dota2.com.cn/shop/js/jquery.AddressSelect.js"></script>
	<script type="text/javascript"
		src="http://static.dota2.com.cn/shop/js/jquery.sku.js"></script>
	<script type="text/javascript"
		src="http://static.dota2.com.cn/shop/js/page/product.js"></script>
	<script>
		$(function() {
			linkKeyword($(".property .title p"), '玩家工坊',
					'http://fx.wanmei.com/dota2/zb');

		});
	</script>
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
