//$("document").ready(function(){
//
//});
//轮播
window.onload = function(){
		var imgChange = document.getElementsByName("imgChange");
	var liChange = document.getElementsByName("liChange");
	var num;
	var idx = 0;
	liChange[0].onmouseover = function(){
		num = 0;
		moveChange();
		idx = num;
	}
	liChange[1].onmouseover = function(){
		num = 1;
		moveChange();
		idx = num;
	}
	liChange[2].onmouseover = function(){
		num = 2;
		moveChange();
		idx = num;
	}
	liChange[3].onmouseover = function(){
		num = 3;
		moveChange();
		idx = num;
	}
	function moveChange(){
		for(var i=0;i<imgChange.length;i++){			
			if(i == num){
				imgChange[i].style.opacity = "1";
				liChange[i].style.backgroundColor = "#f85535";
			}else{
				imgChange[i].style.opacity = "0";
				liChange[i].style.backgroundColor = "";
			}
			
		}
	}
	var imgChangeDiv = document.getElementById("imgChangeDiv");
	var setChange = setInterval(setChangeFun,3000);	
	function setChangeFun(){
		idx++;
		if(idx >= imgChange.length){
			idx = 0;
		}
		for(var i=0;i<imgChange.length;i++){			
			if(i == idx){
				imgChange[i].style.opacity = "1";
				liChange[i].style.backgroundColor = "#f85535";
			}else{
				imgChange[i].style.opacity = "0";
				liChange[i].style.backgroundColor = "";
			}				
		
		}
	}
	
	imgChangeDiv.onmouseover = function(){
		clearInterval(setChange);
	}
	imgChangeDiv.onmouseout = function(){
		setChange = setInterval(setChangeFun,3000);
	}
	//登录窗口弹窗
	var login_box = document.getElementById("login_box");
	var login_shut = document.getElementById("login_shut");
	var login_up = document.getElementById("login_up");

	login_up.onclick = function(){
		login_box.style.display = "block";
	}
	login_shut.onclick = function(){
		login_box.style.display = "none";
	}	
	//登录窗口错误提示信息
//	var btn = document.getElementById("btn");
//	btn.onclick = function(){
//		var xmlhttp;
//		var userName = document.getElementById("userName");
//		var pwd = document.getElementById("pwd");
//		var verificationCode = document.getElementById("verificationCode");
//		var checkbox = document.getElementById("checkbox");
//		var msg = document.getElementById("msg");
//			if(window.XMLHttpRequest){
//				xmlhttp = new XMLHttpRequest();
//			}else{
//				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
//			}
//			xmlhttp.onreadystatechange = function (){
//				if(xmlhttp.readyState==4 && xmlhttp.status==200){
//					msg.innerText = xmlhttp.responseText;
//					alert(xmlhttp.responseText);
//				}
//			}
//			var url = "LoginServlet1?userName="+userName.value+"&pwd="+pwd.value+"&verificationCode="+verificationCode.value+"&checkbox="+checkbox.value;
//			xmlhttp.open("GET",url,true);
//			xmlhttp.send();
//	}
}




	

