package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ohora.domain.NoticeDTO;
import mvc.service.NoticeViewService;

public class NoticeViewHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("> NoticeViewHandler.process...");
		
		int seq = Integer.parseInt( request.getParameter("seq") );

		NoticeViewService contentService = NoticeViewService.getInstance();
		NoticeDTO dto = contentService.selectOne(seq);

		request.setAttribute("dto", dto);
		
		// 현재 글 번호
	    int currentSeq = Integer.parseInt(request.getParameter("seq"));
	    
	    // 이전글과 다음글 조회
	    NoticeDTO previousPost = contentService.findPreviousPost(seq);
	    NoticeDTO nextPost = contentService.findNextPost(seq);

	    // 데이터를 request에 설정
	    request.setAttribute("previousPost", previousPost);
	    request.setAttribute("nextPost", nextPost);

	    return "/ohora/board/notice_view.jsp";
	}

}
