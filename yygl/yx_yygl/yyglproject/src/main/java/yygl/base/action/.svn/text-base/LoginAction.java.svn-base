package yygl.base.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import yygl.base.pojo.vo.ActiveUser;
import yygl.base.process.context.Config;
import yygl.base.process.result.ResultUtil;
import yygl.base.process.result.SubmitResultInfo;
import yygl.base.service.UserService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [yyglproject] 
 * @Package:      [yygl.base.action.LoginAction.java]  
 * @ClassName:    [LoginAction]   
 * @Description:  用户登录认证
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015年11月25日 下午1:49:36]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015年11月25日 下午1:49:36]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
@Controller
public class LoginAction {

	@Autowired
	private UserService userService;
	
	/**
	 * @Title: login 
	 * @Description: 用户登录 
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月25日 下午1:50:09]  
	 * @throws  
	 */
	@RequestMapping("login")
	public String login() throws Exception{
		
		return  "/base/login";
	} 
	
	/**
	 * @throws Exception 
	 * @Title: loginSubmit 
	 * @Description: 登录提交
	 * @return  
	 * @return SubmitResultInfo 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月25日 下午1:53:31]  
	 * @throws  
	 */
	@ResponseBody
	@RequestMapping("loginsubmit")
	public SubmitResultInfo loginSubmit(HttpSession session ,String userid,String pwd,String validateCode) throws Exception{
		
		String validateCode_session = (String) session.getAttribute("validateCode");
		if(validateCode_session!=null && !validateCode_session.equals(validateCode)){
			ResultUtil.createSubmitResult(ResultUtil.createSuccess(yygl.base.process.context.Config.MESSAGE, 113, null));
		}
		
		ActiveUser activeUser = userService.checkUserInfo(userid, pwd);
		if(activeUser!=null){
		session.setAttribute(Config.ACTIVEUSER_KEY, activeUser);
		}
		return ResultUtil.createSubmitResult(ResultUtil.createSuccess(yygl.base.process.context.Config.MESSAGE, 107, new Object[]{""}));
	}
	
	/**
	 * @Title: logout 
	 * @Description: 退出登录 
	 * @param session
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月25日 下午3:10:38]  
	 * @throws  
	 */
	@RequestMapping("logout")
	public String logout(HttpSession session) throws Exception{
		session.invalidate();
		return "redirect:login.action";
	}
	
	
	
	
}
