package eltest;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EltestServ
 */
@WebServlet("/EltestServ")
public class EltestServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public EltestServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] arr = {"키위","바나나","귤"};
		request.setAttribute("fruit", arr); //forward로 페이지넘김
		
		Member[] arr2 = {new Member("choi","최길동"),
						 new Member("hong","홍길동")
		};
		//객체배열
		request.setAttribute("user", arr2); // arr2로 저장
		
		//Map (map객체는 key와 value 쌍으로 데이터저장하고 있는 객체 EL header랑 같다)
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("title","첫번째");
		map.put("content","첫번째 내용"); //key는 content
		request.setAttribute("board", map);
		//VO
		request.setAttribute("login", new Member("kim","김기자")); 
		
		//list
		ArrayList<Member> list = new ArrayList<Member>();
		list.add(new Member("kang","강기자"));
		list.add(new Member("ma","마기자"));
		request.setAttribute("memberList", list); //setAttribute에 속성명 보고 적기
		
		request.getRequestDispatcher("eltest1.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
