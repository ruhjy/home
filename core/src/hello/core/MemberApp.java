package hello.core;

import hello.core.member.*;

public class MemberApp {
	public static void main(String[] args) {
		
		MemberService memberService = new MemberServiceImpl();
		
		Member member = new Member(1L, "memberA", Grade.BASIC);
		
		memberService.join(member);
		Member findMember = memberService.findByName(1L);
		
		System.out.println("new member = " + member.getName());
		System.out.println("find member = " + findMember.getName());
	}
}
