package mybatis;

import java.io.Reader;



import org.apache.ibatis.io.Resources;

import org.apache.ibatis.session.SqlSessionFactory;

import org.apache.ibatis.session.SqlSessionFactoryBuilder;



public class SqlMapConfig {
	private static SqlSessionFactory sqlSession;
	public static SqlSessionFactory getSqlSession(){
		return sqlSession;
	}
/*  SqlMapConfig.java -는 SqlSessionFactory sqlSession을 우선 static으로 선언함.
 *  Configuration.xml을 resourse로 해서 org.apache.ibatis.io의 (클래스일까 패키지 일까)안의 메소드인 getResourceAsReader(resourse)로 한다음 
 *  Reader라는 클래스의 객체인 reader로 저장한다. SqlSessionFactoryBuilder의 객체인 factory의 build메소드에 reader를 집어 넣는다. 		 */
	static{
		try {
			String resource = "mybatis/Configuration.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			SqlSessionFactoryBuilder factory = new SqlSessionFactoryBuilder();
			sqlSession = factory.build(reader);
		} catch (Exception e) {
			System.out.println("SqlMapConfig err : " + e);
		}
	}
}




