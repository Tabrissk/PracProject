package DAO;
import java.io.UnsupportedEncodingException;
import java.util.List;
import org.apache.ibatis.session.SqlSession;

import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlMapConfig;
import javax.servlet.http.HttpServletRequest;
import DTO.SangpumDto;
import javax.servlet.http.HttpServletResponse;

public class SangpumModelDAO {
	static SangpumModelDAO model = new SangpumModelDAO();
	public static SangpumModelDAO instance(){
		return model;
		//SangpumImpl에서 SangpumModel.instance()로    SangpumModel의 객체를 return함
	}

	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	/*mybatis.SqlMapConfig을 import하고 private SqlSessionFactory factory = SqlMapConfig.getSqlSession(); 을 하고 
	 * SqlSession sqlSession = factory.openSession()하는데
	 *  mybatis.SqlMapConfig은 mybatis.Configuration.xml을 지정해서 실행하겠다 */

	public List<SangpumDto> selectSangpum(){
		List<SangpumDto> list = null;
		SqlSession sqlSession = factory.openSession();
		list = sqlSession.selectList("selectSangpum");
		//sqlsession.selectList("mybatis패키지의 Datamapper의 select 쿼리의 id")로 select * from testmybatis ;을 실행, 실행후 db연결을 close
		System.out.println("SangpumModel에서 sqlSession.selectList(selectSangpum)을 실행후 나오는 확인용 글,list의 size는 "+list.size());
		sqlSession.close();
		return list;
	}
	
	public void insertSangpum(SangpumDto ddto) {
		 SqlSession sqlSession = factory.openSession();

		sqlSession.insert("insertSangpum",ddto);
		sqlSession.commit();
		System.out.println("SangpumModel에서 sqlSession.insert을 실행후 나오는 확인용 글"+ddto.getBoard1_NUM()+" & "+
		ddto.getBoard1_NAME()+" & "+ddto.getBoard1_PASS()+" & "+ddto.getBoard1_SUBJECT()+"  "+ddto.getBoard1_CONTENT()+" .");
		sqlSession.close(); 
	}
	
	public void deleteSangpum(SangpumDto ddto){
		 SqlSession sqlSession = factory.openSession();

		sqlSession.delete("deleteSangpum", ddto);
		sqlSession.commit();
		System.out.println("SangpumModel에서 sqlSession.delete을 실행후 나오는 확인용 글");
		sqlSession.close(); 
	}
	
	public void updateSangpum(SangpumDto ddto){
		 SqlSession sqlSession = factory.openSession();

		 sqlSession.update("updateSangpum", ddto);
		sqlSession.commit();
		System.out.println("SangpumModel에서 sqlSession.update을 실행후 나오는 확인용 글");
		sqlSession.close(); 
	}
}



