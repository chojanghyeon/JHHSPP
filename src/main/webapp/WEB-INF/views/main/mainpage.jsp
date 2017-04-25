<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
/*Now the styles*/
* {
    margin: 0; 
	padding: 0;
}
body {
	font-family: arial, verdana, tahoma;
}

/*Time to apply widths for accordian to work
Width of image = 640px
total images = 5
so width of hovered image = 640px
width of un-hovered image = 40px - you can set this to anything
so total container width = 640 + 40*4 = 800px;
default width = 800/5 = 160px;
*/

.accordian {
	width: 805px; height: 320px;
	overflow: hidden;
	
	/*Time for some styling*/
	margin: 100px auto;
	box-shadow: 0 0 10px 1px rgba(0, 0, 0, 0.35);
	-webkit-box-shadow: 0 0 10px 1px rgba(0, 0, 0, 0.35);
	-moz-box-shadow: 0 0 10px 1px rgba(0, 0, 0, 0.35);
}

/*A small hack to prevent flickering on some browsers*/
.accordian ul {
	width: 2000px;
	/*This will give ample space to the last item to move
	instead of falling down/flickering during hovers.*/
}

.accordian li {
	position: relative;
	display: block;
	width: 160px;
	float: left;
	
	border-left: 1px solid #888;
	
	box-shadow: 0 0 25px 10px rgba(0, 0, 0, 0.5);
	-webkit-box-shadow: 0 0 25px 10px rgba(0, 0, 0, 0.5);
	-moz-box-shadow: 0 0 25px 10px rgba(0, 0, 0, 0.5);
	
	/*Transitions to give animation effect*/
	transition: all 0.5s;
	-webkit-transition: all 0.5s;
	-moz-transition: all 0.5s;
	/*If you hover on the images now you should be able to 
	see the basic accordian*/
}

/*Reduce with of un-hovered elements*/
.accordian ul:hover li {width: 40px;}
/*Lets apply hover effects now*/
/*The LI hover style should override the UL hover style*/
.accordian ul li:hover {width: 640px;}


.accordian li img {
	display: block;
}

/*Image title styles*/
.image_title {
	background: rgba(0, 0, 0, 0.5);
	position: absolute;
	left: 0; bottom: 0;	
width: 640px;	

}
.image_title a {
	display: block;
	color: #fff;
	text-decoration: none;
	padding: 20px;
	font-size: 16px;
}
</style>
</head>

<body>
<!-- We will make a simple accordian with hover effects 
The markup will have a list with images and the titles-->

<div>
<form action="login.do">
아이디 : <input type="text" name="user_id">
비밀번호 : <input type="text" name="user_pw">
<button type="submit">로그인</button>
</form>
</div>
<div>
<a href="join.do" style="margin: right">회원가입</a>
</div>
<div class="accordian">
    <ul>
		<li>
			<div class="image_title">
				<a href="#">지역 선택하기</a>
			</div>
			<a href="selectregion.do">
				<img src="http://thecodeplayer.com/uploads/media/3yiC6Yq.jpg"/>
			</a>
		</li>
		<li>
			<div class="image_title">
				<a href="#">지가 변동률</a>
			</div>
			<a href="page.do">
				<img src="http://thecodeplayer.com/uploads/media/40Ly3VB.jpg"/>
			</a>
		</li>
		<li>
			<div class="image_title">
				<a href="#">마이페이지</a>
			</div>
			<a href="#">
				<img src="http://thecodeplayer.com/uploads/media/00kih8g.jpg"/>
			</a>
		</li>
		<li>
			<div class="image_title">
				<a href="#">매매 게시판</a>
			</div>
			<a href="#">
				<img src="http://thecodeplayer.com/uploads/media/2rT2vdx.jpg"/>
			</a>
		</li>
		<li>
			<div class="image_title">
				<a href="#">공지사항</a>
			</div>
			<a href="#">
				<img src="http://thecodeplayer.com/uploads/media/8k3N3EL.jpg"/>
			</a>
		</li>
	</ul>
</div>

</body>
</html>