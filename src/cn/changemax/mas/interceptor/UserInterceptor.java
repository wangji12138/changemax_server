package cn.changemax.mas.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * <p>
 * Title: AdminLoginInterceptor.java
 * </p>
 * <p>
 * Description:
 * </p>
 * <p>
 * Company: www.changemax.com
 * </p>
 * 
 * @author WangJi
 * @date 2018年11月30日
 * @version 1.0
 */
public class UserInterceptor implements HandlerInterceptor { // 进入Handler方法之前执行
	// 用户身份认证、身份授权
	// 比如身份认证，如果认证通过表示当前用户没有登入，需要此方法拦截不再向下执行
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("AdminInterceptor.......preHandle");

		// 获取请求的url
		String url = request.getRequestURL().toString();

		System.err.println("User：" + url);

		// 表示用户身份需要认证
//		response.sendRedirect(request.getContextPath()+"/admin/login");
//		request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);

		// return false表示拦截，不再向下执行
		// return trueb表示方向

		// 非法入侵
		return true;
	}

	// 执行Handler完成执行此方法
	// 应用场景：统一的异常处理，统一日志处理
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,
			Exception exception) throws Exception {
		System.out.println("AdminInterceptor.......afterComletion");
	}

	// 进入Handler方法之后，再返回modelAndView之前执行
	// 应用场景表示从modelAndView出发：将公用的模型数据（菜单导航）在这里传到视图，也可也在这里指定视图
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("AdminInterceptor.......postHandle");
	}

}
