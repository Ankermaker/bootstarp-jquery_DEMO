<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/image/shop.ico"/>
  <!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet" media="screen">
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="css/bootstrap-responsive.css" rel="stylesheet" media="screen">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">

<title>登陆页面</title>  
<script type="text/javascript" src="jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script src="http://code.jquery.com/jquery.js"></script>
<script src="bootstrap/bootstrap.min.js"></script>

<style type="text/css">      
 body{           
        background-size:cover;  
        /* background-repeat:no-repeat;   */
     }  
 </style>  
 
 <script type="text/javascript">
 
 //页面加载函数
 $(document).ready(function(){
	 
	 var int=self.setInterval("changeimge()",5000);//5秒换一次背景图片

 })
 function changeimge(){	
	 	var randnumb = Math.floor(Math.random()*10+1)
	 	console.log("随机数",randnumb);
	 	//更换掉 body 背景属性值
	 	var imgURL = "image/bg0"+randnumb+".jpg";
	 	/* alert(imgURL); *///调试使用	
	 	//用jquery 去跟换背景色属性	 	
	 	$("body").attr("background",imgURL); 
	 	/* $("#div1").fadeOut();
	 	//主登陆界面 缓缓出现
	 	 $("#div1").fadeIn("slow"); */
		/* alert($("body").attr("background")); */	
	};
	
 function stop(){
		 
		clearInterval();
		 
	 };

 </script>
</head>
<body id="test" background="image/bg03.jpg" >

<div class="container" id="div1">


	<!-- 登陆框架 模板 -->
	<div style="
	/* background-color:#DBDBDB;  */
    position:absolute;
	/* text-align:center; */
    top:50%;
    left:50%;
    -webkit-transform:translate(-50%, -50%);
    -moz-transform:translate(-50%, -50%);
    -ms-transform:translate(-50%, -50%);
    -o-transform:translate(-50%, -50%);
    transform:translate(-50%, -50%);" 
    >
    <img src="image/log01.png" class="img-responsive" class="img-circle" alt="Logn CO" ><br/>
    &#160;<br/>
    
	<form  action="indexServlet?method=login" method="post">	
	
		<div class="form-group">
			 <span class="input-group-addon"><font size="4" >用户名&#160;&#160;</font></span>
			<input type="text" name="login_name" class="form-control" placeholder="邮箱/注册号码">
		</div>
		<br>
		<div class="form-group">
 			<span class="glyphicon glyphicon-user"><font size="4" >密　码&#160;&#160;</font></span>
			<input type="text" name="password" class="form-control" placeholder="密码">
		</div>
		
		
	<p class="login-remember-me-container">
          <a tabindex="-1" class="forget-password pull-right" href="保留page接口">忘记密码?</a>
          <label class="auto-login">
          <input type="checkbox" name="remember_me" id="remember_me" value="true" class="no-need-transform" checked="checked"/>下次自动登录
          </label>
    </p>
    
    <!-- msg 显示区域 -->
	<div class="field error-message-field helper-error-message-container identity-validate-container gd-hide"></div>
	
	<button type="submit" class="btn btn-info btn-block" >login</button>
	</form>
	
	</div>
	</div>
	</div>


</body>
</html>