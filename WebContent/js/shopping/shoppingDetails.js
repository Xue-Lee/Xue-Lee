//$("document").ready(function(){
//
//});
//轮播
window.onload = function(){
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
	
	var game = document.getElementById("game");
	game.onclick = function(){
		var xmlhttp;
		var cid = document.getElementById("cid");
		if(window.XMLHttpRequest){
			xmlhttp = new XMLHttpRequest();
		}else{
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		
		var url = "DetailsServlet?cid="+cid.value;
		xmlhttp.open("GET",url,true);
		xmlhttp.send();
		xmlhttp.onreadystatechange = function(){
			if(xmlhttp.readystate == 4 && xmlhttp.status == 200){
				var datas = xmlHttp.responseText;
				var jsObject = JSON.parse(datas);
			}
		}
	}
}


	

