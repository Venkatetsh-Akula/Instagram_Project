package org.jsp.app.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.jsp.app.entity.InstagramRepository;
import org.jsp.app.entity.PostClass;
import org.jsp.app.entity.PostRepo;
import org.jsp.app.entity.UserAccount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("username")
public class InstagramController {
	
	@Autowired
	private PostRepo pr;
	@Autowired
	private InstagramRepository instarepo;
	
	
	@Autowired
	private UserAccount uacc;
	@Autowired
	private PostClass pocl;
	
	
	@RequestMapping(value="/loginrequest",method=RequestMethod.GET)
	public String loginMethodGet() {
		return "loginweb";
	}
	
	@RequestMapping(value="/loginrequest",method=RequestMethod.POST)
	public String loginMethodPost(@RequestParam String username,@RequestParam String password,ModelMap model) {
		if(instarepo.existsByUsername(username)&& instarepo.existsByPassword(password)) {
			model.put("username",username);
			return "redirect:profilerequest";
		}else {
			model.put("msg","No Account Exist SignUp");
			return "loginweb";
		}
	}
	
	@RequestMapping(value="/signuprequest",method=RequestMethod.GET)
	public String signUpGetMethod(ModelMap model) {
		UserAccount us=new UserAccount("","","",LocalDate.now(),"","");
		model.put("UserAccount", us);
		return "signupweb";
	}
	
	@RequestMapping(value="/signuprequest",method=RequestMethod.POST)
	public String signUpPostMethod(UserAccount ua) {
		instarepo.save(ua);
		return "redirect:loginrequest";
	}
	
	
	@RequestMapping(value="/profilerequest")
	public String profileMethod(ModelMap model) {
		String username=(String)model.get("username");
		UserAccount ua=instarepo.findByUsername(username);
		model.put("UserAccount",ua);
		List<PostClass> poli=ua.getPost();
		//System.out.println(poli+"poli +++++++++++++>");
		if(poli==null || poli.size()==0) {
			model.put("No Post Are Avaliable", "msg");
			return "profileweb";
		}
		else {
			model.put("posts",poli);
			return "profileweb";
		}
	}
	
	@RequestMapping(value="/editprofilerequest",method=RequestMethod.GET)
	public String editMethodGet(ModelMap model) {
		String username=(String)model.get("username");
		UserAccount ua=instarepo.findByUsername(username);
		model.put("UserAccount", ua);
		return "editprofileweb";
	}
	@RequestMapping(value="/editprofilerequest",method=RequestMethod.POST)
	public String editMethodPost(ModelMap model,UserAccount us) {
		instarepo.updateAllById(us.getId(),us.getUsername(),us.getPassword(),us.getEmail(),us.getDob(),us.getImage(),us.getVideo());
		return "redirect:profilerequest";
	}
	@RequestMapping(value="/postrequest",method=RequestMethod.GET)
	public String postMethodGet(ModelMap model) {
		PostClass pc=new PostClass();
		//System.out.println(pc+ "empty post class------------------->");
		model.put("PostClass", pc);
		return "uploadpostweb";
	}
	@RequestMapping(value="/postrequest",method=RequestMethod.POST)
	public String postMethodPost(PostClass pc,ModelMap model,@RequestParam String url) {
		//System.out.println(pc);
		//System.out.println(url);
		String username=(String) model.get("username");
		
		PostClass poc=new PostClass();
		poc.setUrl(url);
		pr.save(poc);
		
		//System.out.println(poc);
		
		UserAccount uacc=instarepo.findByUsername(username);
		//System.out.println(uacc+ "finded useracc class------------------->");
		
		List<PostClass> pli=uacc.getPost();
		//System.out.println(pli+ "poli post class------------------->");
		
		pli.add(poc);
		//System.out.println(pli+" post list+++==>");
		uacc.setPost(pli);
		instarepo.save(uacc);
		System.out.println(uacc+ "new user account class------------------->");
		return "redirect:profilerequest";
	}
	
	
	@RequestMapping(value="/scrollrequest")
	public String scrollMethod(ModelMap model) {
		String username=(String)model.get("username");
		List<UserAccount> eua=instarepo.findAllUsersExcept(username);
		List<PostClass> allpost=new ArrayList<>();
		for(UserAccount uspli:eua) {
			System.out.println(uspli);
			allpost.addAll(uspli.getPost());
		}
		model.put("posts", allpost);
		return "scrollweb";
	}
}
