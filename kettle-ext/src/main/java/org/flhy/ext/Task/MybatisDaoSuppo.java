package org.flhy.ext.Task;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.defaults.DefaultSqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

public class MybatisDaoSuppo implements ApplicationContextAware {
	protected static DefaultSqlSessionFactory sessionFactory;
	@Override
	public void setApplicationContext(ApplicationContext context) throws BeansException {
		BasicDataSource dataSource=(BasicDataSource)context.getBean("dataSource");
		sessionFactory=(DefaultSqlSessionFactory)context.getBean("sqlSessionFactory");
	}

}
