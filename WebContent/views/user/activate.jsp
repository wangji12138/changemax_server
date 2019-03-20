<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>关于网站</title>
<%@ include file="/views/common/link.jsp"%>


</head>
<body>

	<%@ include file="/views/common/header.jsp"%>

	<div class="main fly-user-main layui-clear">
		<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="user">
			<li class="layui-nav-item"><a href="home.jsp"> <i
					class="layui-icon">&#xe609;</i> 我的主页
			</a></li>
			<li class="layui-nav-item"><a href="index.jsp"> <i
					class="layui-icon">&#xe612;</i> 用户中心
			</a></li>
			<li class="layui-nav-item"><a href="set.jsp"> <i
					class="layui-icon">&#xe620;</i> 基本设置
			</a></li>
			<li class="layui-nav-item"><a href="message.jsp"> <i
					class="layui-icon">&#xe611;</i> 我的消息
			</a></li>
		</ul>

		<div class="site-tree-mobile layui-hide">
			<i class="layui-icon">&#xe602;</i>
		</div>
		<div class="site-mobile-shade"></div>

		<div class="fly-panel fly-panel-user" pad20>
			<div class="layui-tab layui-tab-brief" lay-filter="user">
				<ul class="layui-tab-title">
					<li class="layui-this">激活邮箱</li>
				</ul>
				<div class="layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
					<ul class="layui-form">
						<li class="layui-form-li"><label for="activate">您的邮箱：</label>
							<span class="layui-form-text">xx@xx.com <!-- <em style="color:#999;">（已成功激活）</em> -->
								<em style="color: #c00;">（尚未激活）</em>
						</span></li>
						<li class="layui-form-li"
							style="margin-top: 20px; line-height: 26px;">
							<div>
								1. 如果您未收到邮件，或激活链接失效，您可以 <a class="layui-form-a"
									style="color: #4f99cf;" id="LAY-activate" href="javascript:;"
									email="{{user.email}}">重新发送邮件</a>，或者 <a class="layui-form-a"
									style="color: #4f99cf;" href="set.jsp">更换邮箱</a>；
							</div>
							<div>2. 如果您始终没有收到 Fly 发送的邮件，请注意查看您邮箱中的垃圾邮件；</div>
							<div>3. 如果你实在无法激活邮件，您还可以联系：admin@xx.com</div>
						</li>
					</ul>
				</div>
			</div>
		</div>

	</div>


	<%@ include file="/views/common/footer.jsp"%>

</body>
</html>