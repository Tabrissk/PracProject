package DAO;
import java.util.*;
import java.sql.*;
import DTO.*;

public class DAOclass {
	private final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private final String DB_URL = "jdbc:mysql://localhost/money?useUnicode=true&characterEncoding=utf8"; // 맨끝은 작업할 디비명

	private final String USER_NAME = "root";
	private final String PASSWORD = "sqlll"; // 비번
	Connection conn = null;
	Statement state = null;
	
	public DAOclass() { // 생성자로 처리!! public으로..
		try {
			Class.forName(JDBC_DRIVER); // mysql연결 <<- 반복연결을 할 필요는 없다, 전체를 통틀어 한번만해도 됨, 여러 메소드중 처음 한번만 부르면된다.
		} catch (Exception e) {
		}
	}
	
	void dbconnect() {
		try {
			conn = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD); // db연결, db안에 테이블을 뭐 쓸지를 모르니 이거는 매번..
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	void closedb() { // 닫겠습니다. 나중에 열린거 부터 닫음
		if (state != null) {
			try {
				state.close();
			} catch (Exception e) {
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (Exception e) {
					// TODO: handle exception
				}
			}
		}
	}
	
public ArrayList<DTOdata> addputting() {
	
		ArrayList<DTOdata> aryliststbean = new ArrayList<DTOdata>();
	
		 // DTOclass dtobean = new DTOclass(); // while반복문안에서 매번 객체를 생성해야지 여기에 두면 객체가 생성된 1개만에 마지막에 생성된건만 저장된
		dbconnect();
		try {
			

			state = conn.createStatement();
			
			String comd= "select * from noticebrddb;" ; //sql 명령어
			ResultSet aa= state.executeQuery(comd); 

			while(aa.next()) { //delete는 여러개가 지울수 있으니 yy ==1 로 조건을 만들면 정상 삭제,업데이트도 조건문에 안 걸리니
				DTOdata dtobean = new DTOdata(); //매번 객체를 생성해야지 
				dtobean.setNum(aa.getInt("num"));
				dtobean.setTitleck(aa.getString("titleck"));		
				dtobean.setQnoticesaying(aa.getString("qnoticesaying"));
				dtobean.setQnoticewriter(aa.getString("qnoticewriter"));
				dtobean.setQnoticedate(aa.getString("qnoticedate"));
				aryliststbean.add(dtobean);
			}
			aa.close();
			state.close();			
			
		}catch (Exception e) {			
		}finally {
			closedb();
		}
		return aryliststbean;
}

public ArrayList<DTOdata> boardclicking(int numinput) {
	
	ArrayList<DTOdata> aryliststbean = new ArrayList<DTOdata>();

	 // DTOclass dtobean = new DTOclass(); // while반복문안에서 매번 객체를 생성해야지 여기에 두면 객체가 생성된 1개만에 마지막에 생성된건만 저장된
	dbconnect();
	try {
		state = conn.createStatement();
		
		String comd= "select * from noticebrddb where num="+numinput+";" ; //sql 명령어
		ResultSet aa= state.executeQuery(comd); 

		while(aa.next()) { //delete는 여러개가 지울수 있으니 yy ==1 로 조건을 만들면 정상 삭제,업데이트도 조건문에 안 걸리니
			DTOdata dtobean = new DTOdata(); //매번 객체를 생성해야지 
			dtobean.setNum(aa.getInt("num"));
			dtobean.setTitleck(aa.getString("titleck"));		
			dtobean.setQnoticesaying(aa.getString("qnoticesaying"));
			dtobean.setQnoticewriter(aa.getString("qnoticewriter"));
			dtobean.setQnoticedate(aa.getString("qnoticedate"));
			aryliststbean.add(dtobean);
		}
		aa.close();
		state.close();			
		
	}catch (Exception e) {			
	}finally {
		closedb();
	}
	return aryliststbean;
}

	public void insertting(String titleck, String saying, String qnoticewriter) {

		try {
			dbconnect();
			state = conn.createStatement();
			DTOdata dtobean = new DTOdata();
			System.out.println(titleck + " 들어옴");
			System.out.println(saying + " 들어옴");
			System.out.println(qnoticewriter + " 들어옴");
			dtobean.setTitleck(titleck);
			dtobean.setQnoticesaying(saying);
			dtobean.setQnoticewriter(qnoticewriter);
			System.out.println(dtobean.getTitleck() + " 들어옴");
			System.out.println(dtobean.getQnoticesaying() + " 들어옴");
			System.out.println(dtobean.getQnoticewriter() + " 들어옴");

			String comd = "insert into noticebrddb(titleck,qnoticesaying,qnoticewriter,qnoticedate) values('" + dtobean.getTitleck()
					+ "','" + dtobean.getQnoticesaying() + "','" + dtobean.getQnoticewriter() + "',now());";
 // now()대신 sysdate()도 있다
//			그 긴 쿼리( 쿼리 단위 )가 실행 될 때를 기준으로 날짜와 시간을 맞추고 싶다면 NOW를 사용하고,
//			중간중간 날짜를 조회할 때를 기준으로 각각 날짜와 시간을 사용하고 싶다면 SYSDATE를 사용합니다.
//			즉, SYSDATE() 함수는 함수가 실행되는 시점의 시각을 반환하지만, NOW()는 하나의 쿼리 단위로 동일한 값을 반환합니다.
			int rowNum = state.executeUpdate(comd); // sql에서 Query ok, 1 row affected나 나오니 1값이 나와서 int로 return한다고 표시되는거다

			state.close();

		} catch (Exception e) {
		} finally {
			closedb();
		}
	}

	public void deletting(int numck) {

		try {
			dbconnect();
			state = conn.createStatement();

			String comd = "delete from noticebrddb where num=" +numck+ ";";

			int rowNum = state.executeUpdate(comd); // sql에서 Query ok, 1 row affected나 나오니 1값이 나와서 int로 return한다고 표시되는거다

			state.close();

		} catch (Exception e) {
		} finally {
			closedb();
		}
	}
	
	public void updatting(int numck,String titleck, String saying) {
		try {
			dbconnect();
			state = conn.createStatement();

			String comd = "update noticebrddb set titleck='"+titleck+"',qnoticesaying='"+saying+"' where num="+numck+";";
			
			System.out.println(titleck+" 들어옴"); System.out.println(saying+" 들어옴"); System.out.println(numck+" 들어옴");
			
			int rowNum = state.executeUpdate(comd); // sql에서 Query ok, 1 row affected나 나오니 1값이 나와서 int로 return한다고 표시되는거다
			if(rowNum>0) {
			System.out.println(titleck+" 실행후 들어옴"); System.out.println(saying+" 실행후 들어옴"); System.out.println(numck+" 실행후 들어옴");
			}
			state.close();

		} catch (Exception e) {
		} finally {
			
			closedb();
		}
	}
 
 public void testing() {

	System.out.println(" 테스트 중입니다.");
	
}



}
