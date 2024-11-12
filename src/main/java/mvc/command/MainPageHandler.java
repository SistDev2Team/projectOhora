package mvc.command;

import java.sql.Connection;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.util.ConnectionProvider;
import ohora.domain.ProductDTO;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class MainPageHandler implements CommandHandler {

    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
        System.out.println("MainPageHandler...");

        // AJAX 요청인지 확인
        String isAjax = request.getParameter("ajax");

        // 메인 페이지 요청 처리 (AJAX 요청이 아닐 때)
        if (isAjax == null) {
            ArrayList<ProductDTO> newProducts = null;
            ArrayList<ProductDTO> bestProducts = null;

            try (Connection conn = ConnectionProvider.getConnection()) {
                OhoraDAO dao = new OhoraDAOImpl(conn);

                newProducts = dao.prdCate(1, 8, 121); // 신상품 카테고리
                bestProducts = dao.prdCate(1, 10, 120); // 인기상품 카테고리
            } catch (Exception e) {
                e.printStackTrace();
            }

            request.setAttribute("newProducts", newProducts);
            request.setAttribute("bestProducts", bestProducts);

            String path = "/ohora/oho_main.jsp";
            request.getRequestDispatcher(path).forward(request, response);
            return null;
        }

        // AJAX 요청 처리
        return null; // AJAX 요청은 MainAjaxHandler에서 처리하므로 아무 작업 안함
    }
}