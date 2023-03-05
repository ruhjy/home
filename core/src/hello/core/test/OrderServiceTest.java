package hello.core.test;

import org.junit.jupiter.api.*;

import hello.core.member.*;
import hello.core.order.*;
import hello.core.order.Order;

class OrderServiceTest {

	MemberService memberService = new MemberServiceImpl();
	OrderService orderService = new OrderServiceImpl();
	
	@Test
	void createOrder() {
		
		Long memberId = 1L;
		Member member = new Member(memberId, "member1", Grade.VIP);
		
		memberService.join(member);
		Order order = orderService.createOrder(memberId, "item1", 30000);
		
		Assertions.assertEquals(order.getDiscountPrice(), 1000);
		
	}

}
