package com.core.web.controller;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.core.po.User;
import com.core.service.UserService;
/**
 * 控制器类
 */
@Controller
public class UserController {
	// 依赖注入
	@Autowired
	private UserService userService;
	/**
	 * 登录
	 */
	@RequestMapping(value = "/login.action", method = RequestMethod.POST)
	public String login(String usercode,String password, Model model, 
                                                          HttpSession session) {
		// 通过账号和密码查询
		User user = userService.findUser(usercode, password);
		if(user != null){		
			// 将对象添加到Session
			session.setAttribute("USER_SESSION", user);
			// 跳转到主页面
			//return "movie";
			return "redirect:movie/list.action";
		}
		model.addAttribute("msg", "账号或密码错误，请重新输入！");
         // 返回到登录页面
		return "login";
	}
	
	/**
	 * 模拟其他类中跳转到管理页面的方法
	 */
	@RequestMapping(value = "/toMovie.action")
	public String toMovie() {
		return "movie";
	}
	
	/**
	 * 退出登录
	 */
	@RequestMapping(value = "/logout.action")
	public String logout(HttpSession session) {
	    // 清除Session
	    session.invalidate();
	    // 重定向到登录页面的跳转方法
	    return "redirect:login.action";
	}
	/**
	 * 向登陆页面跳转
	 */
	@RequestMapping(value = "/login.action", method = RequestMethod.GET)
	public String toLogin() {
	    return "login";
	}


}
