package com.cqu.financial.test;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.cqu.financial.entity.User;
import com.cqu.financial.mapper.UserMapper;

public class TestCase {
	/*
	 * @Test public void testDataSource() throws SQLException {
	 * ApplicationContext ac = new
	 * ClassPathXmlApplicationContext("applicationContext.xml"); BasicDataSource
	 * ds = ac.getBean("ds", BasicDataSource.class); Connection conn =
	 * ds.getConnection(); System.out.println(conn); }
	 */

	@Test
	public void testSelect1() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		SqlSessionFactory sf = ac.getBean("sqlSessionFactory", SqlSessionFactory.class);
		SqlSession session = sf.openSession();

		UserMapper mapper = session.getMapper(UserMapper.class);
		User user = mapper.getUserByName("谢方奎");

		System.out.println(user.getUserName() + "|");

	}

}
