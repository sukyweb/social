<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>注册</title>
  <link rel="stylesheet" href="css/reset.css">
  <link rel="stylesheet" href="css/registered.css">

</head>

<body>
  <div id="registeredBg" class="abs">
    <div class="back">
      <a href="login.jsp" class="backLogIn">>>返回登录页</a>
    </div>
    <div id="registered">
      <form action="regist" method="post">
        <table>
          <tr>
            <td><span class="red">*</span>昵称：</td>
            <td><input type="text" name="userName"></td>
          </tr>
          <tr>
            <td><span class="red">*</span>密码：</td>
            <td><input type="password" name="password"></td>
          </tr>
          <tr>
            <td><span class="red">*</span>电话：</td>
            <td><input type="text" name="phone"></td>
          </tr>
          <tr>
            <td>性别：</td>
            <td class="sex">
              &nbsp;&nbsp;&nbsp;
              <span class="female">
                <input type="radio" id="female" name="sex" />
                <label for="female">女</label>
              </span>
              &nbsp;&nbsp;&nbsp;&nbsp;
              <span class="male">
                <input type="radio" id="male" name="sex" />
                <label for="male">男</label>
              </span>
            </td>
          </tr>
          <tr>
            <td>年龄：</td>
            <td><input type="text" name="age"></td>
          </tr>
          <tr>
            <td>生日：</td>
            <td><input type="date" name="birth" id="birth"></td>
          </tr>
          <tr>
            <td>邮箱：</td>
            <td><input type="email" name="birth"></td>
          </tr>
          <tr>
            <td>个性签名：</td>
            <td><textarea name="personalitySignature"></textarea></td>
          </tr>
          <tr>
            <th colspan="2"><input type="submit" class="button" value="注 册"></th>
          </tr>
        </table>
      </form>
    </div>
  </div>
</body>

</html>
