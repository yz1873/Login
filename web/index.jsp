<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/1 0001
  Time: 下午 7:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<html>
<head>
  <title>登陆界面</title>
  <!-- Libraries -->
  <link type="text/css" href="<%=request.getContextPath()%>/css/index.css" rel="stylesheet" />
  <link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
  <!-- End of Libraries -->
</head>
<body>
<section class="login-form-wrap">
  <h1>欢迎登陆我的主页</h1>
  <form class="login-form" method="post" action="servlet/LoginServlet">
    <label>
      <input type="text" name="username" required placeholder="账号">
    </label>
    <label>
      <input type="password" name="password" required placeholder="密码">
    </label>
    <input type="submit" value="登陆">
  </form>
    <a href="TechView.jsp" target="_blank">查看登陆界面的技术构成</a>
    <a href="http://blog.csdn.net/koches/article/details/7654629" target="_blank">此界面分别用Model1和Model2开发模式实现过，点击了解有关Model1与Model2开发模式的知识。</a>
</section>
</body>
</html>
