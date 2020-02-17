package DAO;
import java.io.UnsupportedEncodingException;
import java.util.List;
import org.apache.ibatis.session.SqlSession;

import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlMapConfig;
import javax.servlet.http.HttpServletRequest;
import DTO.SawonDto;
import javax.servlet.http.HttpServletResponse;

public class SawonModelDAO {
	static SawonModelDAO model = new SawonModelDAO();
	public static SawonModelDAO instance(){
		return model;
	}

	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();

	public List<SawonDto> selectSawon(){
		List<SawonDto> list = null;
		SqlSession sqlSession = factory.openSession();
		list = sqlSession.selectList("selectSawon");
		//sqlsession.selectList("mybatis패키지의 Datamapper의 select 쿼리의 id")로 select * from testmybatis ;을 실행, 실행후 db연결을 close
		System.out.println("SawonModel에서 sqlSession.selectList(selectSawon)을 실행후 나오는 확인용 글,list의 size는 "+list.size());
		sqlSession.close();
		return list;
	}
	
	public void insertSawon(SawonDto ddto) {
		 SqlSession sqlSession = factory.openSession();

		sqlSession.insert("insertSangpum",ddto);
		sqlSession.commit();
		System.out.println("SangpumModel에서 sqlSession.insert을 실행후 나오는 확인용 글"+ddto.getBoard2Num()+" & "+
		ddto.getBoard2Name()+" & "+ddto.getBoard2Pass()+" & "+ddto.getBoard2Subject()+"  "+ddto.getBoard2Content()+" .");
		sqlSession.close(); 
	}
	
	public void deleteSawon(SawonDto ddto){
		 SqlSession sqlSession = factory.openSession();

		sqlSession.delete("deleteSangpum", ddto);
		sqlSession.commit();
		System.out.println("SangpumModel에서 sqlSession.delete을 실행후 나오는 확인용 글");
		sqlSession.close(); 
	}
	
	public void updateSawon(SawonDto ddto){
		 SqlSession sqlSession = factory.openSession();

		 sqlSession.update("updateSangpum", ddto);
		sqlSession.commit();
		System.out.println("SangpumModel에서 sqlSession.update을 실행후 나오는 확인용 글");
		sqlSession.close(); 
	}
}



