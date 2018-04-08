<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>神秘商城</title>
		<link rel="stylesheet" type="text/css" href="css/shopping/shoppingCentre.css"/>
		<link rel="stylesheet" type="text/css" href="css/shopping/iconfont.css"/>		
		<link rel="stylesheet" type="text/css" href="css/shopping/game.css" />
		<script type="text/javascript" src="js/shopping/jquery-3.2.1.js" charset="UTF-8"></script>
		<script type="text/javascript" src="js/shopping/shoppingCentre.js"></script>
	</head>
	<body>
		<div class="login-box" id="login_box">
			<div class="login-left">
				<div>
					
				</div>
			</div>
			<div class="inline"></div>
			<div class="login-right">
				<div class="login-shut">
					<i class="icon-guanbi" id="login_shut">&#xe654;</i>
				</div>
				<h4>账号登录</h4>
				<P id="msg"><%--
					String msg = (String)session.getAttribute("msg");
					if(msg == null){
						msg = " ";
						out.print(msg);
					}else{
						out.print(msg);
					}
				--%></P>
				<%
				Cookie[] cookies = request.getCookies();
				String userName = "";
				String pwd = "";
				for (Cookie cookie : cookies) {
					String cookie_name = cookie.getName();
					if(cookie_name.equals("cookie_userName")){
						userName = cookie.getValue();
					}
					if(cookie_name.equals("cookie_pwd")){
						pwd = cookie.getValue();
					}	
				}
				%>
				<form action="<%=request.getContextPath() %>/login.do" method="post">
					<div class="login-user">
						<i class="iconfont icon-zhanghao"></i><input type="text" name="userName" value="<%=userName %>" placeholder="账号" id="userName"  />
					</div>
					<div class="login-pwd">
						<i class="iconfont icon-password"></i><input type="password" name="pwd" value="<%=pwd %>" placeholder="密码" id="pwd"  />
					</div>
					<div class="login-check">
						&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="verificationCode" value="" placeholder="验证码" id="verificationCode" />
						<img class="check-img" alt="null" src="<%=request.getContextPath() %>/ValidateServlet">
					</div>	
					3天自动登录<input type="checkbox" name="checkbox" checked="checked" style="width:14px;height:14px" id="checkbox" ><br>
					<c:choose>
						<c:when test="${requestScope.msg == '用户或密码三次输入错误!'}">
							<input type="submit" value="登录" class="login-submit" disabled="disabled" id="btn" />
						</c:when>
						<c:otherwise>
							<input type="submit" value="登录" class="login-submit" id="btn" />
						</c:otherwise>
					</c:choose>
					
					
					
					
				</form>
				<div class="login-reg">
					<a href="">注册新账号</a>
					|
					<a href="">忘记密码</a>
				</div>
			</div>
		</div>
		<div class="shop-box">
			<!--右侧悬浮导航条-start-->
			<div class="float-nav">
				<div class="float-nav-myOrder">
					<a href=""><i class="float-icon-touxiang">&#xe6a0;</i></a>
				</div>
				<div class="float-nav-myFocus">
					<a href=""><i class="float-icon-likefil">&#xe62b;</i></a>
				</div>
				<div class="float-nav-myCart">
					<a href=""><i class="float-icon-gouwuche1">&#xe603;</i><br />
						购<br />
						物<br />
						车<br />
						<span class="goods-num">0</span>
						<div class="float-nav-myCart-opacity">
				    		</div>
					</a>					
				</div>
				<div class="float-nav-xinxi">
					<a href=""><i class="float-icon-xinxi">&#xe633;</i></a>
				</div>
				<!--<div class="float-nav-return">
					<a href="">
						返回<br />
						首页
					</a>					
				</div>-->
			</div>
			<!--右侧悬浮导航条-end-->
			
			<!--头部悬浮导航条-start-->
			<div class="shop-header">
				<div class="shop-topper">
					<div class="shop-topper-box">
						<div class="logo-dota2-div">
							<a href="#">
								<img class="logo-dota2" src="img/shopping/logo-dota2.png" alt="" />
							</a>
						</div>
						<div class="logo-shop-div">
							<a href="#">
								<img class="logo-shop" src="img/shopping/logo-shop.png" alt="" />
							</a>
						</div>
						<div class="shop-login-div">
							<%
								String msg_sueccess = (String)session.getAttribute("msg_sueccsess");
								if(msg_sueccess == null){
									%>
									<a class="shop-login" href="#" id="login_up">登录</a>
									<a class="shop-reg" href="register.jsp">快速注册</a>
									<%
								}else{
									%>
									<a class="shop-login-name" href="#"><%=msg_sueccess %>,</a>
									<a class="shop-leave" href="<%=request.getContextPath() %>/SignOutServlet">&nbsp;&nbsp;&nbsp;&nbsp;退出</a>
									<%
								}
							%>
							<a class="myOrder" href="#"><i class="iconfont icon-touxiang"></i>&nbsp;我的订单</a>
							<a class="myFocus" href="#"><i class="iconfont icon-likefill"></i>&nbsp;我的关注</a>
							<a class="myCart" href="#"><i class="iconfont icon-gouwuche1"></i>&nbsp;我的购物车 (<span>0</span>)</a>
						</div>
					</div>
				</div>
				<div class="shop-nav">
					<div class="shop-nav-box">
						<div class="shop-nav-div" id="shop_nav_div">
							<a class="" href="shoppingCentre.jsp" style="border-bottom-color:  #f85535; color:  #f85535;">首页</a>
							<a class="" href="detailsServlet?cid=1">游戏手办</a>
							<a class="" href="DetailsServlet?cid=2">主题服饰</a>
							<a class="" href="DetailsServlet?cid=3">创意T恤</a>
							<a class="" href="DetailsServlet?cid=4">毛绒玩具</a>
							<a class="" href="DetailsServlet?cid=5">生活用品</a>
							<a class="" href="DetailsServlet?cid=6">特别限量</a>
						</div>	
						<div class="search-box">
							<form action="#" method="post">
								<input class="btn-submit icon-sousuo" type="submit" value="&#xe960;"/>
								<input class="text-input" type="text" name="text" value=""/>							
							</form>
						</div>
					</div>
				</div>
			</div>
			<!--头部悬浮导航条-end-->
			
			<!--主要内容-start-->
			<div class="shop-homepage-content" id="shop_homepage_content">
				<!--耳机大图片-start-->
				<div class="img-change-div" id="imgChangeDiv">
					<a href="#">
						<img class="img-change" name="imgChange" src="img/shopping/steelseries耳机.jpg" style="opacity: 1;"/>
					</a>
					<a href="#">
						<img class="img-change" name="imgChange" src="img/shopping/Q版手办.jpg" style="opacity: 0;"/>
					</a>
					<a href="#">
						<img class="img-change" name="imgChange" src="img/shopping/圣诞限量神秘珍藏.jpg" style="opacity: 0;"/>
					</a>
					<a href="#">
						<img class="img-change" name="imgChange" src="img/shopping/神秘商店的新年礼物.jpg" style="opacity: 0;"/>
					</a>
					<ul>
						<a href=""><li name="liChange" style="background-color: #f85535;"></li></a>
						<a href=""><li name="liChange"></li></a>
						<a href=""><li name="liChange"></li></a>
						<a href=""><li name="liChange"></li></a>
					</ul>
				</div>
				<!--耳机大图片-end-->
				
				<!--产品图片-start-->
				<div class="product-img">
					<a href="#">
						<div>
							<img src="img/shopping/大师赛雨伞.png" alt="" />
						</div>
					</a>
					<a href="#">
						<div>
							<img src="img/shopping/Q版手办.png" alt="" />
						</div>
					</a>
					<a href="#">
						<div>
							<img src="img/shopping/购买冲锋衣即赠变色马克杯.png" alt="" />
						</div>
					</a>
				</div>
				<!--产品图片-end-->
				
				<!--热门商品-start-->
				<div class="product-hot">
					<div class="product-hot-title">
						最近热销
						<div class="color-block"></div>
					</div>
					<div class="product-hot-goods">												
						<a href="">
							<div>
								<img src="img/shopping/2017国际邀请赛主题背包.png" alt="" />
							</div>
						</a>
						
						<a href="">
							<div>							
								<img src="img/shopping/全英雄选择主题手机壳.jpg" alt="" />							
							</div>
						</a>					
						<a href="">
							<div>							
								<img src="img/shopping/主宰抱枕.png" alt="" />							
							</div>
						</a>	
						<a href="">
							<div>							
								<img src="img/shopping/DOTA2主题创意T恤.png" alt=""/>							
							</div>
						</a>	
						<a href="">
							<div>							
								<img src="img/shopping/潮汐马克杯.png"" />							
							</div>
						</a>	
						<a href="">
							<div>
								<img src="img/shopping/英雄至宝金属徽章.png" alt="" />
							</div>
						</a>							
					</div>
				</div>
				<!--热门商品-end-->
				
				<!--新出商品-start-->
				<div class="product-new">
					<div class="product-new-title-div">
						<div class="product-new-title">
							新品首售
							<div class="color-block"></div>
						</div>
					</div>
					<div class="img-phoneShell-div">
						<a href="#">
							<img class="img-phoneShell" src="img/shopping/全英雄选择主题手机克.png" alt="" />
						</a>
					</div>
					<div class="img-poker-div">
						<a href="#">
							<img class="img-poker" src="img/shopping/全英雄扑克.png" alt="" />
						</a>
					</div>
					<div class="img-badge-div">
						<a href="#">
							<img class="img-badge" src="img/shopping/全英雄金属徽章.png" alt="" />
						</a>
					</div>
				</div>
				<!--新出商品-start-->
				<!--限时折扣-start-->
					<!--<div class="product-discount">
						<div class="product-discount-title">
							限时折扣
							<div class="color-block"></div>
						</div>
						<div class="product-discount-goods">
							<ul>
								<a href="#">
									<li>
										<img src="img/高级冲锋衣.png" alt="" />
										<h3>DOTA2 - TI7 高级冲锋衣 【欧美码】</h3>
										<h4>RMB 698.00</h4>
										<h5>RMB 698.00</h5>
									</li>
								</a>								
								
								<a href="#">
									<li>
										<img src="img/主题选手衣.png" alt="" />
										<h3>DOTA2 - TI7 主题选手服</h3>
										<h4>RMB 398.00</h4>
										<h5>RMB 398.00</h5>
									</li>
								</a>
								<a href="#">
									<li>
										<img src="img/高级卫衣.png" alt="" />
										<h3>DOTA2 - TI7 高级卫衣</h3>
										<h4>RMB 328.00</h4>
										<h5>RMB 328.00</h5>
									</li>
								</a>
								<a href="#">
									<li>
										<img src="img/主题足球衫.png" alt="" />
										<h3>DOTA2 - TI7 主题足球衫</h3>
										<h4>RMB 698.00</h4>
										<h5>RMB 698.00</h5>
									</li>
								</a>
								<a href="#">
									<li>
										<img src="img/冶金术士帽子.png" alt="" />
										<h3>DOTA2 - 冶金术士帽子</h3>
										<h4>RMB 349.00</h4>
										<h5>RMB 329.00</h5>
									</li>
								</a>
								<a href="#">
									<li>
										<img src="img/主题领带.png" alt="" />
										<h3>DOTA2 - TI7 主题领带</h3>
										<h4>RMB 150.00</h4>
										<h5>RMB 129.00</h5>
									</li>
								</a>
								<a href="#">
									<li>
										<img src="img/熊战士毛绒玩具.png" alt="" />
										<h3>DOTA2 - 熊战士毛绒玩具</h3>
										<h4>RMB 328.00</h4>
										<h5>RMB 280.00</h5>
									</li>
								</a>
							</ul>
						</div>
					</div>-->
				<!--限时折扣-end-->											
			</div>
			<!--主要内容-end-->
			
			<!--底部内容-start-->
			<div class="shop-footer">
				<!--承诺、保证、快递-start-->
				<div class="promise">
					<div class="promise-box">
						<div class="promise-cont"><i class="iconfont icon-zan2"></i>正品保障</div>
						<div class="promise-cont"><i class="iconfont icon-kuaidichaxun"></i>快递配送</div>
						<div class="promise-cont"><i class="iconfont icon-tuihuo"></i>无忧退换</div>
					</div>
				</div>
				<!--承诺、保证、快递-end-->
				
				<!--客服、售后-start-->
				<div class="bottom-footer">
					<div class="bottom-box">
						<div class="bottom-customer">
							<dl>
								<dt>购物指南</dt>
								<dd>
									<a href="">常见问题</a>
								</dd>
								<dd>
									<a href="">购物流程</a>
								</dd>
								<dd>
									<a href="">支付方式</a>
								</dd>
							</dl>
							<dl>
								<dt>配送方式</dt>
								<dd>
									<a href="">配送范围</a>
								</dd>
								<dd>
									<a href="">快递费用</a>
								</dd>
							</dl>
							<dl>
								<dt>	售后服务</dt>
								<dd>
									<a href="">退换货流程</a>
								</dd>
								<dd>
									<a href="">退换货政策</a>
								</dd>
								<dd>
									<a href="">服务政策</a>
								</dd>
							</dl>
							<dl>
								<dt>关注我们</dt>
								<dd>
									<a href="">刀塔官网</a>
								</dd>
								<dd>
									<a href="">新浪微博</a>
								</dd>
								<dd>
									<a href="">官方微信
										<img class="launcher-weixin" src="img/shopping/launcher_weixin.png" alt="" />
									</a>
								</dd>
							</dl>
							<div class="bottom-contact">
								<h1>028-<br />68723666</h1>
								<p>周一至周日 0:00 - 24:00</p>
								<p><a href="">在线客服</a></p>
							</div>
						</div>						
					</div>
				</div>
				<!--客服、售后-end-->
			</div>
			<!--底部内容-end-->
		</div>		
	</body>
</html>