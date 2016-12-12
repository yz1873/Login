<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/23 0023
  Time: 下午 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <title>Test程序列表</title>
      <link type="text/css" href="<%=request.getContextPath()%>/css/ListView.css" rel="stylesheet" />
  </head>
  <body>
    <div id="nav">
      <form action="" method="get">
        <ul>
          <!-- 	注意此处button标签的用法，formaction为重新提交处理的文件名 -->
          <li><button type="submit" formaction="http://sunzz.top/GoodsCart/GoodsView.jsp" formtarget="_blank"><img src="<%=request.getContextPath()%>/images/1.png"/></button></li>
          <li><button type="submit" formaction="http://sunzz.top/CheckCode/" formtarget="_blank"><img src="<%=request.getContextPath()%>/images/2.png"/></button></li>
          <li><img src="<%=request.getContextPath()%>/images/3.png"/></li>
          <li><img src="<%=request.getContextPath()%>/images/4.png"/></li>
          <li><img src="<%=request.getContextPath()%>/images/5.png"/></li>
          <li class="mar"><img src="<%=request.getContextPath()%>/images/4.png"/></li>
          <li><img src="<%=request.getContextPath()%>/images/7.png"/></li>
          <li><img src="<%=request.getContextPath()%>/images/8.png"/></li>
          <li><img src="<%=request.getContextPath()%>/images/9.png"/></li>
          <li><img src="<%=request.getContextPath()%>/images/10.png"/></li>
          <li><img src="<%=request.getContextPath()%>/images/11.png"/></li>
          <li><img src="<%=request.getContextPath()%>/images/12.png"/></li>
          <li><img src="<%=request.getContextPath()%>/images/13.png"/></li>
          <li><img src="<%=request.getContextPath()%>/images/14.png"/></li>
        </ul>
      </form>
    </div>
  </body>
</html>
