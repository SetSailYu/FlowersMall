/**
 * 动态轮播图脚本
 */

var imgIndex=0;
var iDot=document.getElementsByClassName("font-dot");//获取所有圆点的节点
var img=document.getElementsByClassName("img-slide");//获取所有轮播图片的节点
var swi=document.getElementsByClassName("switcher");//获取所有切换箭头的节点
//改变图片
function ChangeImg(index) {
	if(index>=img.length)
		index = imgIndex = 0;
	imgIndex = index;
	
	$(img[imgIndex]).addClass("slide-img-active").siblings().addClass("slide-img-out").removeClass("slide-img-active");
	
	for(let i=0;i<iDot.length;i++){
	    iDot[i].style.color = 'rgba(0, 0, 0, 0.175)';
		}
	iDot[index].style.color = '#FF6600';
}
//计数器
function Count() {
	imgIndex++;
	ChangeImg(imgIndex);
}
//设置定时器，每隔六秒切换一张图片
setInterval(Count,5000);

//浮动圆点单击事件
function DotClick(dotIndex) {
	ChangeImg(dotIndex);
}

////切换箭头的隐藏/浮现
//function Over() { //隐藏
//	swi[0].style.left='0px';
//	swi[1].style.right='0px';
//}
//function Out() { //浮现
//	swi[0].style.left='-30px';
//	swi[1].style.right='-30px';
//}
//浮动圆点鼠标悬停/离开事件,防止css的:hover失效
function DotHover(index){
	iDot[index].onmouseover=function(){
		//悬停
	    iDot[index].style.color = '#FF6600';
		//Over();
	};
	iDot[index].onmouseout=function(){
		//离开
		if (index != imgIndex)
		    iDot[index].style.color = 'rgba(0, 0, 0, 0.175)';
		//Out();
	};
}
//切换箭头点击事件
function SwitcherClick(num) {
	if (num == 0){ //向左滑动
		imgIndex--;
		if (imgIndex < 0) imgIndex=4;
	}else{ //向右滑动
		imgIndex++;
		if (imgIndex > 4) imgIndex=0;
	}
	ChangeImg(imgIndex);
}
function FFSwitcherClick(num) {
    if (num == 0) { //向左滑动
        imgIndex--;
        if (imgIndex < 0) imgIndex = 2;
    } else { //向右滑动
        imgIndex++;
        if (imgIndex > 2) imgIndex = 0;
    }
    ChangeImg(imgIndex);
}
////动态轮播图区鼠标悬停/离开事件
//function CenterImgHover() {
//	for (let i=0;i<3;i++) { //所有轮播图片
//		img[i].onmouseover=function(){
//			//悬停
//			Over();
//		};
//		img[i].onmouseout=function(){
//			//离开
//			Out();
//		};
//	}
//	for (let i=0;i<2;i++) { //所有切换箭头
//		swi[i].onmouseover=function(){
//			//悬停
//			Over();
//		};
//		swi[i].onmouseout=function(){
//			//离开
//			Out();
//		};
//	}
//}






