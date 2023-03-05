package hello.core;

import hello.core.member.*;
import hello.core.order.*;

public class OrderApp {
	public static void main(String[] args) {
		
		MemberService memberService = new MemberServiceImpl();
		OrderService orderService = new OrderServiceImpl();
		
		Long memberId1 = 1L;
		Long memberId2 = 2L;
		
		Member member1 = new Member(memberId1, "memberA", Grade.VIP);
		Member member2 = new Member(memberId2, "memberB", Grade.BASIC);
		
		memberService.join(member1);
		memberService.join(member2);
		Order order1 = orderService.createOrder(memberId1, "itemA", 20000);
		Order order2 = orderService.createOrder(memberId2, "itemB", 20000);
		
		System.out.println("order1_vip = " + order1);
		System.out.println("order2_basic = " + order2);
		
	}
}
