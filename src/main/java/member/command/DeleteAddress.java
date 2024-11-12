package member.command;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import mvc.command.CommandHandler;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class DeleteAddress implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String[] selectedIds = request.getParameterValues("ma_idx[]");
		
		System.out.println("selectedIds : " + Arrays.toString(selectedIds));

		if(selectedIds != null ) {
			
			OhoraDAO ohoraDAO = new OhoraDAOImpl(ConnectionProvider.getConnection());
			
			//오 이거쩐다 int 변환 필수임
			for (String addrId : selectedIds) {
                ohoraDAO.deleteAddress(Integer.parseInt(addrId));
            }
						
		}
		
		 response.sendRedirect(request.getContextPath() + "/addrstart.do");
		 
	     return null;		
	}

}
