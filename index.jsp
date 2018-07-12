<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>首页</title>
  <link rel="stylesheet" href="css/reset.css">
  <link rel="stylesheet" href="css/index.css">
  <script src="js/jquery-3.3.1.js"></script>
  <script src="js/index.js"></script>
  <script type="text/javascript">
    onload = function() {
      var oSex = '${user.sex}';
      if (oSex == '男') {
        $("#male").attr("checked", "checked");
        $("#female").removeAttr("checked");
      } else {
        $("#male").removeAttr("checked");
        $("#female").attr("checked", "checked");
      }
    }
  </script>
</head>

<body>
  <div id="main" class="abs">
    <!-- 左侧 -->
    <div id="sideBar" class="abs">
      <!-- 左侧伸展按钮 -->
      <div id="userHide" class="abs">
        <div class="show">
          <span>></span>
        </div>
      </div>
      <!-- 个人信息 -->
      <div class="user rel">
        <!-- 用户名 -->
        <h1 id="userMsg">${user.userName}</h1>
        <!-- 个性签名 -->
        <h5>${user.personalitySignature}</h5>
        <!-- 个人其他信息 -->
        <div class="userMsgCon abs">
          <table>
            <tr>
              <th>电话：</th>
              <td>${user.phone}</td>
            </tr>
            <tr>
              <th>性别：</th>
              <td>${user.sex}</td>
            </tr>
            <tr>
              <th>年龄：</th>
              <td>${user.age}</td>
            </tr>
            <tr>
              <th>生日：</th>
              <td>${user.birth}</td>
            </tr>
            <tr>
              <th>邮箱：</th>
              <td>${user.email}</td>
            </tr>
            <tr>
              <th><button id="userMsgChange">修改</button></th>
              <td></td>
            </tr>
          </table>
        </div>
      </div>

    </div>
    <div id="content" class="abs">
      <!-- 设置弹框 -->
      <div id="userMsgChangeCon">
        <form action="mpi" method="post">
          <table>
            <tr style="display:none">
              <td><span class="red">*</span>id：</td>
              <td><input type="text" name="userId" value="${user.userId}"></td>
            </tr>
            <tr>
              <td><span class="red">*</span>昵称：</td>
              <td><input type="text" name="userName" value="${user.userName}"></td>
            </tr>
            <tr>
              <td><span class="red">*</span>密码：</td>
              <td><input type="password" name="password" value="${user.password}"></td>
            </tr>
            <tr>
              <td><span class="red">*</span>电话：</td>
              <td><input type="text" name="phone" value="${user.phone}"></td>
            </tr>
            <tr>
              <td>性别：</td>
              <td class="sex">
                &nbsp;&nbsp;&nbsp;
                <span class="female">
                <input type="radio" id="female" name="sex"/>
                <label for="female">女</label>
              </span> &nbsp;&nbsp;&nbsp;&nbsp;
                <span class="male">
                <input type="radio" id="male" name="sex" />
                <label for="male">男</label>
              </span>
              </td>
            </tr>
            <tr>
              <td>年龄：</td>
              <td><input type="text" name="age" value="${user.age}"></td>
            </tr>
            <tr>
              <td>生日：</td>
               <!-- <input type="date" name="birth" value="<fmt:formatDate value="${birth}" pattern="yyyy/MM/dd" />"/> -->
              <td><input type="date" name="birth" value="${user.birth}"></td>
            </tr>
            <tr>
              <td>邮箱：</td>
              <td><input type="email" name="email" value="${user.email}"></td>
            </tr>
            <tr>
              <td>个性签名：</td>
              <td><textarea name="personalitySignature">${user.personalitySignature}</textarea></td>
            </tr>
            <tr>
              <th colspan="2"><input type="submit" class="button" value="设置">&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" value="取消"></th>
            </tr>
          </table>
        </form>
      </div>
    </div>
  </div>
</body>
</html>
