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

	<div class="main layui-clear">

		<div class="fly-panel fly-panel-user" pad20>
			<div class="layui-tab layui-tab-brief">
				<ul class="layui-tab-title">
					<li><a href="login.jsp">登入</a></li>
					<li class="layui-this">注册</li>
				</ul>
				<div class="layui-form layui-tab-content" id="LAY_ucm"
					style="padding: 20px 0;">
					<div class="layui-tab-item layui-show">
						<div class="layui-form layui-form-pane">
							<form
								action="${pageContext.request.contextPath }/user/doReg.action"
								method="post">
								<div class="layui-form-item">
									<label for="L_email" class="layui-form-label">邮箱</label>
									<div class="layui-input-inline">
										<input type="text" id="L_email" name="email" required
											lay-verify="email" autocomplete="off" class="layui-input">
									</div>
									<div class="layui-form-mid layui-word-aux"></div>
								</div>
								<div class="layui-form-item">
									<label for="L_userName" class="layui-form-label">昵称</label>
									<div class="layui-input-inline">
										<input type="text" id="L_userName" name="userName" required
											lay-verify="required" autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-form-item">
									<label for="L_password" class="layui-form-label">密码</label>
									<div class="layui-input-inline">
										<input type="password" id="L_pass" name="password" required
											lay-verify="required" autocomplete="off" class="layui-input">
									</div>
									<div class="layui-form-mid layui-word-aux">6到16个字符</div>
								</div>
								<div class="layui-form-item">
									<label for="L_repassword" class="layui-form-label">确认密码</label>
									<div class="layui-input-inline">
										<input type="password" id="L_repassword" name="repassword"
											required lay-verify="required" autocomplete="off"
											class="layui-input">
									</div>
								</div>
								<div class="layui-form-item">
									<label for="L_vercode" class="layui-form-label">人类验证</label>
									<div class="layui-input-inline">
										<input type="text" id="L_vercode" name="vercode" required
											lay-verify="required" placeholder="请回答后面的问题"
											autocomplete="off" class="layui-input">
									</div>
									<div class="layui-form-mid">
										<span style="color: #c00;"></span>
									</div>
								</div>
								<div class="layui-form-item">
									<button class="layui-btn" lay-filter="*" lay-submit>立即注册</button>
								</div>
								<div class="layui-form-item fly-form-app">
									<span>或者直接使用社交账号快捷注册</span> <a
										href="http://fly.layui.com:8098/app/qq"
										onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})"
										class="iconfont icon-qq" title="QQ登入"></a> <a
										href="http://fly.layui.com:8098/app/weibo/"
										onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})"
										class="iconfont icon-weibo" title="微博登入"></a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>


	<%@ include file="/views/common/footer.jsp"%>

</body>
</html>