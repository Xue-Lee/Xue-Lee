$("document").ready(function(){
	$("#allcheck").click(function(){
		if(this.checked){
			$("[name=check]").attr("checked",true);	
			$("#allcheck").attr("checked",true);	
			$("#jiesuan").css("background-color","#e32332");
			$("#jiesuan").css("color","white");
		}else{
			$("[name=check]").attr("checked",false);	
			$("#allcheck").attr("checked",false);
			$("#jiesuan").css("background-color","");
			$("#jiesuan").css("color","");
		}
	});
	
	var add = document.getElementById("add");
	var reduce = document.getElementById("reduce");
	var num = document.getElementById("num");
	var sum = document.getElementById("sum");
//	var danjia = document.getElementById("sum").value;
//	var del = document.getELementById("delete");
	var i = 1;
	var j = sum.innerHTML;
	add.onclick = function(){
		i++;
		num.value = i;
		sum.innerHTML =j*num.value;
	}
	reduce.onclick = function(){
		if(num.value > 1){
			i--;
			num.value = i;
			sum.innerHTML = j*num.value;
		}	
	}
	
	num.onblur = function(){
		sum.innerHTML = j*num.value;
		if(num.value < 1){
			num.value = 1;
		}
	}
	
	$("#del").click(function(){
		$("#tr1").remove();
	});
	
	
	
});
