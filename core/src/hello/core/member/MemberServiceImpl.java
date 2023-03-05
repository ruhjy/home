package hello.core.member;

import hello.core.repository.*;

public class MemberServiceImpl implements MemberService {

	MemberRepository memberRepository = new MemoryMemberRepository();

	@Override
	public void join(Member member) {
		memberRepository.save(member);
	}

	@Override
	public Member findByName(Long memberId) {
		return memberRepository.findById(memberId);
	}

}
