<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<title>${title }</title>

</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="block box">
		<div class="blank"></div>
		<div id="ur_here">
			当前位置: <a href=".">首页</a>
			<code> &gt; </code>
			用户中心
			<code> &gt; </code>
			我的收藏
		</div>
	</div>
	<div class="blank"></div>

	<div class="blank"></div>
	<div class="block clearfix">

		<div class="AreaL">
			<div class="box">
				<div class="box_1">
					<div class="userCenterBox">
						<jsp:include page="usermenu.jsp"></jsp:include>
					</div>
				</div>
			</div>
		</div>


		<div class="AreaR">
			<div class="box">
				<div class="box_1">
					<div class="userCenterBox boxCenterList clearfix" style="_height: 1%;">
						<h5>
							<span>我的收藏</span>
						</h5>
						<div class="blank"></div>
						<table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
							<tr align="center" bgcolor="#FFFFFF">
								<td class="text-center">&nbsp;</td>
								<td class="text-center">音乐</td>
								<td class="text-center">播放数</td>
								<td class="text-center">日期</td>
								<td class="text-center">操作</td>
							</tr>
							<c:forEach items="${favList}" var="fav">
								<tr align="center" bgcolor="#FFFFFF">
									<td bgcolor="#ffffff" align="center" style="width: 300px;"><a
										href="index/detail.action?id=${fav.musicid }" target="_blank"><img style="width: 80px; height: 80px;"
											src="${fav.image }" border="0" title="${fav.musicname }" /> </a> <br /> <a
										href="index/detail.action?id=${fav.musicid }" target="_blank" class="f6">${fav.musicname }</a></td>
									<td><a href="index/detail.action?id=${fav.musicid}">${fav.musicname}</a></td>
									<td>${fav.num}</td>
									<td>${fav.addtime}</td>
									<td><a href="index/play.action?id=${fav.musicid }">播放音乐</a>&nbsp;&nbsp;&nbsp;<a
										href="index/download.action?id=${fav.musicid }">下载音乐</a>&nbsp;&nbsp;&nbsp; <a
										href="index/deletefav.action?id=${fav.favid}" onclick="{if(confirm('确定要删除吗?')){return true;}return false;}">删除</a></td>
								</tr>
							</c:forEach>
						</table>
						<div class="blank5"></div>
						<table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
							<tr>
								<td align="center" bgcolor="#ffffff">${html}</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>

	</div>
	<div class="blank"></div>



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
