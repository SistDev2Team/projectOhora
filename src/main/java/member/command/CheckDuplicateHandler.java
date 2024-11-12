package member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.util.ConnectionProvider;

import mvc.command.CommandHandler;
import net.sf.json.JSONObject;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;


import java.io.PrintWriter;
import java.sql.Connection;

public class CheckDuplicateHandler implements CommandHandler {
    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	
        String type = request.getParameter("type"); // id, email, phone
        String value = request.getParameter("value");
              

        boolean isDuplicate = false;

        try (Connection conn = ConnectionProvider.getConnection()) {
            OhoraDAO dao = new OhoraDAOImpl(conn);
            isDuplicate = dao.isDuplicate(type, value);
        }

        response.setContentType("application/json; charset=UTF-8"); //JSON으로 처리하자.
        PrintWriter out = response.getWriter(); // 응답스트림열기..
        JSONObject jsonResponse = new JSONObject();

        if (isDuplicate) {
            jsonResponse.put("status", "duplicate");
        } else {
            jsonResponse.put("status", "available");
        }

        out.print(jsonResponse); // client전송
        out.flush(); // buffer의 모든 data 전송
        return null;
    }
}