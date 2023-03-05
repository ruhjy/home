package hello.core;

import hello.core.member.*;
import hello.core.order.*;

public class OrderApp {
	public static void main(String[] args) {
		
		MemberService memberService = new MemberServiceImpl();
		OrderService orderService = new OrderServiceImpl();
		
		Long memberId = 1L;
		Member member = new Member(memberId, "memberA", Grade.VIP);
		
		memberService.join(member);
		Order order = orderService.createOrder(memberId, "itemA", 20000);
		
		System.out.println("order = " + order);
		System.out.println("discountPrice = " + order.getDiscountPrice());
	}
}
