package mvc.command;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import ohora.domain.ProductDTO;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class MainPageHandler implements CommandHandler {

    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

        ArrayList<ProductDTO> newProducts;
        ArrayList<ProductDTO> bestProducts;

        // DB 작업 수행
        try (Connection conn = ConnectionProvider.getConnection()) {
            OhoraDAO dao = new OhoraDAOImpl(conn);

            // 신상품과 인기상품 가져오기
            newProducts = dao.prdCate(1, 8, 121); // 신상품 카테고리 번호 수정
            bestProducts = dao.prdCate(1, 10, 120); // 인기상품 카테고리 번호 수정
        } catch (Exception e) {
            e.printStackTrace();
            // 예외 발생 시 에러 페이지로 리다이렉트
            request.setAttribute("errorMessage", "데이터를 가져오는 중 오류가 발생했습니다.");
            return "/ohora/error.jsp"; // 에러 처리 페이지 경로
        }

        // request에 데이터 추가
        request.setAttribute("newProducts", newProducts);
        request.setAttribute("bestProducts", bestProducts);

        // System.out.println(newProducts.toString());
        // System.out.println(bestProducts.toString());
        
        // JSP 경로 설정
        String path = "/ohora/oho_main.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(path);
        dispatcher.forward(request, response); // 데이터를 JSP로 전달
        
        return null; // forward를 사용하므로 null 반환
    }
}
