package kr.co.hangsho.customers.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.hangsho.customers.vo.PwdCheckResult;

@Controller
@RequestMapping("/customers")
public class CustomerAjaxController {

	@RequestMapping("/pwdcheck.do")
	public @ResponseBody String pwdCheck(String pwd, HttpSession session) {
		String checked = "false";
		if("asdf".equals(pwd))
//			checked.setChecked(true);
			checked = "true";
		/*
		 * Customer customer = (Customer) session.getAttribute("LOGIN_USER");
		 * if(pwd.equals())		// pwd  --> sha256으로
		 * {
		 *  PwdCheckResult pcr = new  PwdCheckResult();
		 *  pcr.checked = true;
		 * }
		*/
			
			return checked;
	}
}
