package com.asnj.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.asnj.mapper.AsnjMapper;
import com.asnj.entity.Member;

// Ajax 통신을 위해서 사용하는 Controller
@RestController
public class AsnjRestController {
	
	@Autowired
	private AsnjMapper mapper;
	
	// 회원 목록
	@GetMapping("/Member")
	public List<Member> MemberAjax() {
		List<Member> list = mapper.memberSelect();
		return list;
	}
}