<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1"/>
    <meta name="Keywords"
          content="完美世界通行证,完美世界账号,注册完美通行证,登录完美世界账号,完美世界会员中心,完美账号挂失,修改密码,完美世界账号安全,完美世界密保工具,密保卡,手机令牌,完美神盾,完美充值管理,完美充值记录,完美点券,绑定手机,绑定邮箱"/>
    <meta name="Description"
          content="完美世界是一家网络游戏研发、运营、销售和服务公司，以自主原创为根本、以精品游戏研发为宗旨、以中国文化推广为目标，致力于为全球用户提供优质的互联网娱乐服务。完美娱乐，世界同享！"/>
    <title>注册账号 - 完美世界通行证</title>
    <link type="image/x-icon" href="https://safestatic.games.wanmei.com/common/ico/favicon.ico" rel="shortcut icon">
    <link rel="stylesheet" href="https://safestatic.games.wanmei.com/passport/css/style.css"/>
    <link rel="stylesheet" href="https://safestatic.games.wanmei.com/passport/reg/css/default.css?v=20180201"/>
    
</head>
<body>
<div class="topbar-register cl">
    <h1 class="fl logo fl"><a target="_blank" href="http://www.wanmei.com/"><img src="https://safestatic.games.wanmei.com/passport/reg/images/logo.png" alt=""></a>
    </h1>
    <div class="lan_tab fr">
        <a class="ch" locale="zh-CN" href="javascript:void(0);">简体中文</a><i>|</i><a
            class="en" locale="en" href="javascript:void(0);">English</a>
    </div>
</div>
<div class="as_register">
    <div class="lan_tab">
        <a class="ch" locale="zh-CN" href="javascript:void(0);">简体中文</a><i>|</i><a
            class="en" locale="en" href="javascript:void(0);">English</a>
    </div>
    <div class="as_wrap ">
        <a class="logo" href="javascript:void(0);"></a>
        
<div id="tabCh" class="lan_tabpage tabch">
    <h2 class="tit">注册完美通行证</h2>${mag}
    <p class="vicetit">创建完美世界账号，抢先享受全方位的游戏服务</p>
    <div class="func_tab cl">
        <a href="javascript:void(0);">手机注册（推荐）<i></i></a>
        <a href="javascript:void(0);">邮箱注册 <i></i></a>
    </div>
    <div class="func_tabpage">
        <form action="" autocomplete="off">
            <input type="hidden" name="from" value="0" />
            <input type="hidden" name="s" value="" />
            <div class="ibox mb17">
                <input name="username" required="required" class="t_phone" type="text" placeholder="手机号" />
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="ibox ibox_eye">
                <label class="pwshow">密码（由6-16位字母、数字及字符组成）</label>
                <input required="required" class="pwhide password" type="password" />
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="pwlevel">
                <ul class="cl pwLv" style="display: none;">
                    <li class="l cur"><span>低</span></li>
                    <li class="m"><span>中</span></li>
                    <li class="h"><span>高</span></li>
                </ul>
            </div>
            <div class="ibox ibox_eye mb34">
                <label class="pwshow">重复密码</label>
                <input required="required" class="pwhide repeat" type="password" />
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="ibox mb17">
                <input name="truename" required="required" type="text" placeholder="真实姓名" />
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="ibox mb17">
                <input name="idnumber" required="required" type="text" placeholder="身份证" />
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="cl vbox">
                <div class="fl vboxl">
                    <div class="ibox">
                        <input name="rand" type="text" placeholder="验证码" />
                        <i></i>
                    </div>
                </div>
                <div class="fl vboxr">
                    <a class="getMobileRand" href="javascript:void(0);">获取验证码</a>
                </div>
            </div>
            <div class="cbox">
                <input class="acceptcb" type="checkbox" checked="checked" />
                <i class="check"></i>
                <span>我接受<a target="_blank" href="http://static.wanmei.com/passport/agreement/003.html">《完美通行证用户协议》</a>&nbsp;&nbsp;<a target="_blank" href="http://static.wanmei.com/passport/agreement/005.html">《隐私政策》</a></span>
            </div>
            <a class="rbtn_com rbtn_s1 mb15" href="javascript:void(0);" onclick="checkin(this)"  >免费注册通行证</a>
            <a class="rbtn_com rbtn_s2" href="/">已经有通行证了？</a>
        </form>
    </div>
    <div class="func_tabpage">
        <form action="RegisterServlet" autocomplete="off" method="post">
            <input type="hidden" name="from" value="0" />
            <input type="hidden" name="s" value="" />
            <div class="ibox mb17">
                <input name="username" required="required" class="t_email" type="text" placeholder="邮箱账号" />
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="ibox ibox_eye">
                <label class="pwshow">密码（由6-16位字母、数字及字符组成）</label>
                <input required="required" class="pwhide password" type="password" name="password"/>
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="pwlevel">
                <ul class="cl pwLv" style="display: none;">
                    <li class="l cur"><span>低</span></li>
                    <li class="m"><span>中</span></li>
                    <li class="h"><span>高</span></li>
                </ul>
            </div>
            <div class="ibox ibox_eye mb34">
                <!-- <input class="pwshow" type="text" placeholder="重复密码" /> -->
                <label class="pwshow">重复密码</label>
                <input required="required" class="pwhide repeat" type="password" />
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="ibox mb17">
                <input name="truename" required="required" type="text" placeholder="真实姓名" />
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="ibox mb17">
                <input name="idnumber" required="required" type="text" placeholder="身份证" />
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="ibox mb17">
                <input name="mobile" required="required" class="t_phone" type="text" placeholder="手机号" />
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="cl vbox mb17">
                <div class="fl vboxl">
                    <div class="ibox">
                        <input name="check_number" type="text" placeholder="请输入验证码" />
                        <i></i>
                    </div>
                </div>
                <div class="fl vboxr">
                    <img style="vertical-align: middle;" alt="null" src="ValidateServlet" />
                </div>
            </div>
            <div class="cbox">
                <input class="acceptcb" type="checkbox" checked="checked" />
                <i class="check"></i>
                <span>我接受<a target="_blank" href="http://static.wanmei.com/passport/agreement/003.html">《完美通行证用户协议》</a>&nbsp;&nbsp;<a target="_blank" href="http://static.wanmei.com/passport/agreement/005.html">《隐私政策》</a></span>
            </div>
            <input type="submit" value="免费注册通行证" style="display:block;width:394px;height:40px;font-size: 16px;background: #ed1919;border: 1px solid #dbdbdb;border-radius: 4px;color:white">
            <a class="rbtn_com rbtn_s2" href="/">已经有通行证了？</a>
        </form>
    </div>
    <div class="layer_verify" style="display: none;">
        <span class="close"></span>
        <div class="libox">
            <input name="randimgipt" type="text" placeholder="输入验证码" />
        </div>
        <div class="lvbox">
            <img class="randimg" src="" alt="" />
            <span class="refreshimg">换一张</span>
        </div>
        <a class="rbtn_com rbtn_s1 sendmobilecode" href="javascript:void(0);">确认发送</a>
    </div>
</div>
<div id="tabEn" class="lan_tabpage taben">
    <h2 class="tit">Sign up for free</h2>
    <p class="vicetit">Enjoy perfect game service by creating Perfect World account</p>
    <div class="func_tab cl">
        <a href="javascript:void(0);">Phone <i></i></a>
        <a href="javascript:void(0);">Email (Recommended)<i></i></a>
    </div>
    <div class="func_tabpage">
        <form action="" autocomplete="off">
            <input type="hidden" name="from" value="0" />
            <input type="hidden" name="s" value="" />
            <div class="ibox mb17">
                <input name="username" required="required" class="t_phone" type="text" placeholder="Phone number" />
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="ibox ibox_eye">
                <label class="pwshow">Password(Must be 6-16 letters, numbers or character)</label>
                <input required="required" class="pwhide password" type="password" />
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="pwlevel">
                <ul class="cl pwLv" style="display: none;">
                    <li class="l cur"><span>low</span></li>
                    <li class="m"><span>medium</span></li>
                    <li class="h"><span>high</span></li>
                </ul>
            </div>
            <div class="ibox ibox_eye mb34">
                <label class="pwshow">Repeat password</label>
                <input required="required" class="pwhide repeat" type="password" />
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="ibox mb17">
                <input name="truename" required="required" type="text" placeholder="Real Name" />
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="ibox mb17">
                <input name="idnumber" required="required" type="text" placeholder="ID Number" />
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="cl vbox">
                <div class="fl vboxl">
                    <div class="ibox">
                        <input name="rand" type="text" placeholder="Verification Code " />
                        <i></i>
                    </div>
                </div>
                <div class="fl vboxr">
                    <a class="getMobileRand" text="Send again" href="javascript:void(0);"> Get Verification Code</a>
                </div>
            </div>
            <div class="cbox">
                <input class="acceptcb" type="checkbox" checked="checked" />
                <i class="check"></i>
                <span>I accept to <a target="_blank" href="http://static.wanmei.com/passport/agreement/003.html">Terms and Data Policy of Wanmei Passport</a>&nbsp;&nbsp;<a target="_blank" href="http://static.wanmei.com/passport/agreement/005.html">Privacy Policy</a></span>
            </div>
            <a class="rbtn_com rbtn_s1 mb15" href="javascript:void(0);" onclick="checkin(this)">Sign up for Free!</a>
            <a class="rbtn_com rbtn_s2" href="/"> Already have a Wanmei Passport?</a>
        </form>
    </div>
    <div class="func_tabpage">
        <form action="" autocomplete="off">
            <input type="hidden" name="from" value="0" />
            <input type="hidden" name="s" value="" />
            <div class="ibox mb17">
                <input name="username" required="required" class="t_email" type="text" placeholder="Email" />
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="ibox ibox_eye">
                <label class="pwshow">Password(Must be 6-16 letters, numbers or character)</label>
                <input required="required" class="pwhide password" type="password" />
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="pwlevel">
                <ul class="cl pwLv" style="display: none;">
                    <li class="l cur"><span>low</span></li>
                    <li class="m"><span>medium</span></li>
                    <li class="h"><span>high</span></li>
                </ul>
            </div>
            <div class="ibox ibox_eye mb34">
                <label class="pwshow">Repeat password</label>
                <input required="required" class="pwhide repeat" type="password" />
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="ibox mb17">
                <input name="truename" required="required" type="text" placeholder="Real Name" />
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="ibox mb17">
                <input name="idnumber" required="required" type="text" placeholder="ID Number" />
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="ibox mb17">
                <input name="mobile" required="required" class="t_phone" type="text" placeholder="Phone number" />
                <i></i>
                <span class="ihint ihint_error" style="display: none;"></span>
            </div>
            <div class="cl vbox mb17">
                <div class="fl vboxl">
                    <div class="ibox">
                        <input name="rand" type="text" placeholder="Phone Verification Code" />
                        <i></i>
                    </div>
                </div>
                <div class="fl vboxr">
                    <a class="getMobileRand" href="javascript:void(0);">Get Verification Code</a>
                </div>
            </div>
            <div class="cbox">
                <input class="acceptcb" type="checkbox" checked="checked" />
                <i class="check"></i>
                <span>I accept to <a target="_blank" href="http://static.wanmei.com/passport/agreement/003.html">Terms and Data Policy of Wanmei Passport</a>&nbsp;&nbsp;<a target="_blank" href="http://static.wanmei.com/passport/agreement/005.html">Privacy Policy</a></span>
            </div>
            <a class="rbtn_com rbtn_s1 mb15" href="javascript:void(0);" onclick="checkin(this)">Sign up for Free!</a>
            <a class="rbtn_com rbtn_s2" href="/"> Already have a Wanmei Passport?</a>
        </form>
    </div>
    <div class="layer_verify" style="display: none;">
        <span class="close"></span>
        <div class="libox">
            <input name="randimgipt" type="text" placeholder="Verification Code" />
        </div>
        <div class="lvbox">
            <img class="randimg" src="" alt="" />
            <span class="refreshimg">Change</span>
        </div>
        <a class="rbtn_com rbtn_s1 sendmobilecode" href="javascript:void(0);">Submit</a>
    </div>
</div>

    </div>
</div>

<script src="https://safestatic.games.wanmei.com/passport/script/jquery.min.js" type="text/javascript"></script>
<script src="https://safestatic.games.wanmei.com/passport/script/is.min.js" type="text/javascript"></script>
<script src="https://safestatic.games.wanmei.com/passport/reg/js/register.js" type="text/javascript"></script>
<script src="https://safestatic.games.wanmei.com/passport/reg/js/common.js?201712" type="text/javascript"></script>
<script type="text/javascript" src="https://csafestatic.wanmei.com/vanguard/client/js/vanguard-common.js"></script>
<script src="https://safestatic.games.wanmei.com/passport/script/jsencrypt.min.js"></script>


<!--插入圆圈-->
<script type="text/javascript">
    (function(){
        if(!$('.as_register').length){ return }
        var circle = ["<div class='circle-box'><div class='circle-1'></div>"];
        circle.push("<div class='circle-2'></div>");
        circle.push("<div class='circle-3'></div>");
        circle.push("<div class='element-1'></div>");
        circle.push("<div class='element-2'></div></div>");
        $('body').append(circle.join(''));
    })();
</script>
<script type="text/javascript">
    var ekey = 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCjfeE0MIYsZes/HwV06/kvRw34Hmhn9WPt0feLPp1PVqdqZz1/xFvPPEAJ/lAvfqt5kyn+A06bvYXIhizTjlOzPgLE4897ihuSYXgfwcUshPZvydRLbftU6Exj5SLbv5tw4GInbgQv7RWLWOKyQA81q6lWae2Kcgd1XpDRsQNXVwIDAQAB';
    function refreshRandImg(node) {
        node.attr('src', 'https://captchas.wanmei.com/various_captcha/wanmei_captcha?appId=f3ba1af9293e48a08d96a7128ed6dfb8&r=' + Math.random());
        $('input[name="randimgipt"]').val('');
    }

    function checkin(node) {
        var formnode = $(node).closest('form');
        if (!formnode.find('.acceptcb').prop("checked")) {
            alert(msgNoAccept[getLocale()]);
            return;
        }
        if (formnode.find('input.repeat').val() != formnode.find('input.password').val()) {
            alert(msgInvalidPwdRepeat[getLocale()]);
            return;
        }
        if ($(node).closest('form').find('input').hasError()) {
            $(node).closest('form').find('.ihint_error').closest('.ibox').addClass('error');
            return;
        }


        var e = new JSEncrypt();
        e.setPublicKey(ekey);
        var enc = e.encrypt(formnode.find('input.password').val());

        var passwordNode = formnode.find('input[name="password"]');
        if(passwordNode.size() == 0){
            var passwordInput = $('<input type="hidden" name="password" />');
            passwordInput.val(enc);
            formnode.append(passwordInput);
        }else {
            passwordNode.val(enc);
        }

        var param = formnode.serialize();
        if (formnode.find('input[name="username"]').hasClass('t_email')) {
            $.post('/reg/sendactivate', param, function (data) {
                if (data.code == 0) {
                    location.href = "/reg/activatePage";
                } else {
                    alert(data.message);
                }
            }, 'json');
        } else {
            $.post('/reg/register', param, function (data) {
                if (data.code == 0) {
                    location.href = "/reg/success?s=";
                } else {
                    alert(data.message);
                }
            }, 'json');
        }
    }

    $(function () {
        $('.layer_verify .refreshimg').click(function () {
            refreshRandImg($(this).prevAll('.randimg'));
        });
        $('.getMobileRand').click(function () {
            if ($(this).hasClass('btn_disable')) return;
            var phoneinput = $(this).closest('form').find('.t_phone');
            phoneinput.blur();
            if (!phoneinput.hasError()) {
                var randNode = $(this).closest('.lan_tabpage').find('.layer_verify');
                randNode.prop('mobile', phoneinput.val());
                refreshRandImg(randNode.find('.randimg'));
                randNode.show();
            }
        });
        $('.sendmobilecode').click(function () {
            trackEvent('1102', 'get_mobile_code');
            var self = this;
            var sendBtnNode = $(this).closest('.lan_tabpage').find('.getMobileRand');
            var randNode = $(this).closest('.layer_verify');
            var randInput = randNode.find('input[name="randimgipt"]');
            $(this).sendCode('/reg/sendmobile', {
                'mobile': randNode.prop('mobile'),
                'rand': randInput.val()
            }, function (data) {
                if (data.code == 0) {
                    randNode.hide();
                } else {
                    alert(data.message);
                    refreshRandImg(randNode.find('.randimg'));
                }
            }, sendBtnNode);
        });
        $('.layer_verify .close').click(function () {
            $(this).closest('.layer_verify').hide();
        });
        $('input[required]').on('blur', function (e) {
            var v = $(this).val();
            if (is.empty(v)) {
                $(this).showCueMessage(msgNoEmpty[getLocale()], false);
                e.stopImmediatePropagation();
                return;
            }
        });
        $('input.t_phone').on('blur', function (e) {
            var v = $(this).val();
            if (!checkCellPhone(v)) {
                $(this).showCueMessage(msgInvalidMobile[getLocale()], false);
                e.stopImmediatePropagation();
                return;
            } else {
                $(this).showCueMessage('', true);
            }
        });
        $('input.t_email').on('blur', function (e) {
            var v = $(this).val();
            if (!is.email(v)) {
                $(this).showCueMessage(msgInvalidEmail[getLocale()], false);
                e.stopImmediatePropagation();
                return;
            } else {
                $(this).showCueMessage('', true);
            }
        });
        $('input[name="username"]').on('blur', function () {
            var v = $(this).val();
            var self = this;
            invokeAjaxJson('/reg/checkuser', {username: v}, function (data) {
                if (data.code == 0) {
                    $(self).showCueMessage(data.message, true);
                } else {
                    $(self).showCueMessage(data.message, false);
                }
            });
        });
        $('input.password').keyup(function () {
            $(this).passwordLevel();
        });
        $('input.password').blur(function () {
            $(this).passwordLevel();
        });
        $('input.repeat').blur(function () {
            if ($(this).val() == $(this).closest('form').find('input.password').val()) {
                $(this).showCueMessage('', true);
            } else {
                $(this).showCueMessage(msgInvalidPwdRepeat[getLocale()], false);
            }
        });
        $('input[name="truename"]').blur(function () {
            var v = $(this).val();
            if (checkTruename(v)) {
                $(this).showCueMessage('', true);
            } else {
                $(this).showCueMessage(msgInvalidTruename[getLocale()], false);
            }
        });
        $('input[name="idnumber"]').blur(function () {
            var v = $(this).val();
            if (checkIdnumber(v) == 0) {
                if (isTeenager(v)) {
                    $(this).showCueMessage(msgTeenager[getLocale()], true);
                } else {
                    $(this).showCueMessage('', true);
                }
            } else {
                $(this).showCueMessage(msgInvalidIdnumber[getLocale()], false);
            }
        });
        //手机或邮箱注册切换
        $(".lan_tabpage.tabch").tabOn({
            toggleClass: "cur",
            menu: ".func_tab a",
            box: ".func_tabpage"
        });
        $(".lan_tabpage.taben").tabOn({
            toggleClass: "cur",
            menu: ".func_tab a",
            box: ".func_tabpage",
            page: 1
        });

        //模拟input placeholder属性
        $(":text").placeholder();

        //密码提示及输入切换
        //其中提示用label而不是input，是避免切换时输入太快 缺失输入内容
        var pwShow = $(".pwshow"),
            pwHide = $(".pwhide"),
            pwtxt = [];
        var len = pwShow.length;
        //label提示
        for (var m = 0; m < len; m++) {
            pwtxt.push($(pwShow[m]).html());
        }

        var iSp = function isSupport() {
            if ("placeholder" in document.createElement("input")) {
                return true;
            } else {
                return false;
            }
        }

        pwShow.click(function () {
            $(this).hide().siblings("input").show().focus();
        });
        pwHide.blur(function () {
            if ($(this).val() == "") {
                $(this).hide().siblings("label").show();
                $(".ibox").removeClass("onfocus");
            }
        });

        //模拟input checkbox样式及功能
        $(".cbox i").click(function () {
            $(this).toggleClass("check");
            //$(this).siblings("input").click();
            if ($(this).hasClass("check")) {
                $(this).siblings("input").prop("checked", "checked");
                //console.log($(this).siblings("input").prop("checked"));
            } else {
                $(this).siblings("input").removeAttr("checked");
            }
        });

        //当input有内容时才展示右侧小图标
        $(".ibox input").keyup(function () {
            if ($(this).val() != "") {
                $(this).siblings("i").show();
            } else {
                $(this).siblings("i").hide();
            }
        });


        //点击input右侧叉号图标，则删除input值，重现显示提示语，并获得焦距
        $(".ibox i").click(function () {
            $(".ibox").removeClass("onfocus");
            $(this).parent().addClass("onfocus");
            if (!$(this).parent().hasClass("ibox_eye")) {
                var temp1 = $(this).siblings("input"),
                    placeholder = temp1.attr("placeholder");
                if (iSp()) {
                    temp1.val("").focus();
                } else {
                    temp1.val(placeholder).focus();
                }
            } else {
                $(this).siblings(".pwhide").focus();
            }
        });

        //长按input右侧眼睛图标，则展示明文密码
        $(".ibox_eye i").mousedown(function () {
            //$(this).siblings(".pwhide").attr("type","text").addClass("on");
            $(this).addClass("icolt");
            $(this).siblings(".pwshow").html($(this).siblings(".pwhide").val()).addClass("txtlt").show();
            $(this).siblings(".pwhide").hide();
        });

        //鼠标弹起，则显示暗文密码，且该input获得焦距
        // ie cannot change input type automatically and ie7 refresh has problem
        $(".ibox_eye i").each(function (index) {
            $(this).mouseup(function () {
                $(this).removeClass("icolt");
                var temp2 = $(this).siblings(".pwshow"),
                    temp2V = temp2.val();
                if (temp2V != temp2.html(pwtxt[index])) {
                    temp2.html(pwtxt[index]).removeClass("txtlt");
                }
                $(this).siblings(".pwshow").hide();
                $(this).siblings(".pwhide").show().focus;
            });
        });

        $(".ibox input").focus(function () {
            $(".ibox").removeClass("onfocus");
            $(this).parent().addClass("onfocus");
        });
    });
</script>
<script src="https://static.games.wanmei.com/public/js/footer.js"></script>
<script type="text/javascript" src="https://static.games.wanmei.com/public/js/stat.js"></script>
</body>
</html>