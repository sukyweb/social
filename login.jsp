<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>登录</title>
  <link rel="stylesheet" href="css/login.css">
  <link rel="stylesheet" href="css/reset.css">
</head>
<body>
  <div id="logInBg" class="abs">
    <div class="registered">
      <a href="regist.jsp" class="registeredMsg">注册</a><br>
      <a href="#" class="backIndex">>>返回首页</a>
    </div>
    <div id="logIn">
      <form action="login" method="post">
        <table>
		    	<tr>
		    	    <td>用户名：</td>
		    	    <td><input type="text" name="userId"></td>
		    	</tr>
		    	<tr>
		    	    <td>密码：</td>
		    	    <td><input type="password" name="password"></td>
		    	</tr>
		    	<tr>
		    	    <td></td><th><input type="submit" class="button" value="登 录"><a href="#" class="fgs">忘记密码</a></th>
		    	</tr>
		    </table>
      </form>
    </div>
  </div>
</body>
</html>
