//$("document").ready(function(){
//	$("#allcheck").click(function(){
//		if(this.checked){
//			$("[name=check]").attr("checked",true);	
//			$("#allcheck").attr("checked",true);	
//			$("#jiesuan").css("background-color","#e32332");
//			$("#jiesuan").css("color","white");
//		}else{
//			$("[name=check]").attr("checked",false);	
//			$("#allcheck").attr("checked",false);
//			$("#jiesuan").css("background-color","");
//			$("#jiesuan").css("color","");
//		}
//	});
//	
//	var add = document.getElementById("add");
//	var reduce = document.getElementById("reduce");
//	var num = document.getElementById("num");
//	var sum = document.getElementById("sum");
////	var danjia = document.getElementById("sum").value;
////	var del = document.getELementById("delete");
//	var i = 1;
//	var j = sum.innerHTML;
//	add.onclick = function(){
//		i++;
//		num.value = i;
//		sum.innerHTML =j*num.value;
//	}
//	reduce.onclick = function(){
//		if(num.value > 1){
//			i--;
//			num.value = i;
//			sum.innerHTML = j*num.value;
//		}	
//	}
//	
//	num.onblur = function(){
//		sum.innerHTML = j*num.value;
//		if(num.value < 1){
//			num.value = 1;
//		}
//	}
//	
//	$("#del").click(function(){
//		$("#tr1").remove();
//	});
//	
//	
//	
//});

window.onload = function(){
	(function(){
		var items = document.getElementsByClassName("item");
		foreach(items, function(){
			var price = parseInt(this.getElementsByClassName("price")[0].innerText);
			var itemNum = this.getElementsByClassName("numInput")[0];
			var add = this.getElementsByClassName("add")[0];
			var sub = this.getElementsByClassName("sub")[0];
			var priceBlock = this.getElementsByClassName("price")[0];
			var currentNum = 1;
			
			add.onclick = function(){
				currentNum++;
				itemNum.value = currentNum;
				priceBlock.innerText = currentNum * price;
			}
			sub.onclick = function(){
				currentNum = currentNum == 1 ? 1 : currentNum - 1;
				itemNum.value = currentNum;
				priceBlock.innerText = currentNum * price;			
			}
			itemNum.onchange = function(){
				currentNum = this.value;
				priceBlock.innerText = currentNum * price;				
			}
		})
	})();
			
	(function(){
		var allPick = document.getElementById("allcheck");
		var checkBoxes = document.getElementsByClassName("checkBox");
		var jiesuan = document.getElementById("jiesuan");
		
		allPick.onclick = function(){
			
			for (var i=0;i<checkBoxes.length;i++) {
				if(allPick.checked == !checkBoxes[i].checked){
					checkBoxes[i].checked = !checkBoxes[i].checked;
					jiesuan.style.color = "white";
					jiesuan.style.backgroundColor = "#e32332";
				}
			}		    
//			alert(allPick.value)
//			foreach(checkBoxes, function(){
//				this.checked = !this.checked;
//			});
	       }			
	})();
	
}
function foreach(list, callback){
	for(var i=0; i<list.length; i++){
		callback.call(list[i], i)
	}
}
