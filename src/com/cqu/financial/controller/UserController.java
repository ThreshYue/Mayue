package com.cqu.financial.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cqu.financial.entity.User;
import com.cqu.financial.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {

	@Resource
	private UserService userService;

	@RequestMapping("/dologin")
	public String goAddemp() {
		return "login";
	}

	@RequestMapping("/check")
	public String gocheck(User user) {

		User tempuser = userService.checkUser(user.getUserName(), user.getUserPass());
		if (tempuser != null) {
			return "main";
		}
		return "login";
	}
	@RequestMapping("goToSignUp")
	public String goSignUp(){
		return "signup";
	}
	@RequestMapping("/signUp")
	public String signUp(String username, String password) {
		User user = new User();
		userService.addUser(user);
		return "main";
	}

	@RequestMapping(value = "validUserName", method = RequestMethod.POST)
	public void validUserName(HttpServletRequest request, HttpServletResponse response) {
		PrintWriter printWriter = null;
		try {
			printWriter = response.getWriter();
			printWriter.print(userService.isExistUserName(request.getParameter("username")));
		} catch (IOException e) {
			Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, e);
		} finally {
			if (printWriter != null) {
				printWriter.flush();
				printWriter.close();
			}
		}
	}

}
