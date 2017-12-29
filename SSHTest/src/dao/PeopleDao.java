package dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import vo.People;

public class PeopleDao extends HibernateDaoSupport{
	//查询表中的前十条数据
	public List<People> findAll() {
		DetachedCriteria criteria =DetachedCriteria.forClass(People.class);
		List<People> plist =this.getHibernateTemplate().findByCriteria(criteria,0,10);
		return plist;
	}
	
	//将信息插入数据库
	public void save(People people) {
		this.getHibernateTemplate().save(people);
	}
	
	//删除数据库中的一条数据
	public void deletePeple(int pid) {
		People people=findByPid(pid);
		this.getHibernateTemplate().delete(people);
	}
	
	//通过pid查询一条数据
	public People findByPid(int pid) {
		String hql="from People where pid =?";
		Object [] params={pid};
		List<People> listp=super.getHibernateTemplate().find(hql,params);
		if(!listp.isEmpty()){
			return listp.get(0);
		}
		return null;
	}
	
	//修改一条数据
	public void updatePeople(People people) {
		this.getHibernateTemplate().update(people);
		
		
	}
	//通过phone查找
	public People findByPhone(String phone) {
		String hql="from People where phone=?";
		Object [] params={phone};
		List<People> listpp=this.getHibernateTemplate().find(hql,params);
		if(!listpp.isEmpty()){
			return listpp.get(0);
		}
		return null;
	}

	//查询总共有多少条数据
	public int findTotalCount() {
		String hql="select count(*) from People";
		List<Long> list=this.getHibernateTemplate().find(hql);
		if(list!=null&&list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}
	//根据开始和页容量查询当页数据
	public List<People> findByPageCid(int begin, int pageSize) {
		String hql="from People";
//		List<People> list=(List<People>) this.getHibernateTemplate().execute(
//				new HibernateCallback<People>(hql, new Object[]{cid}, begin, pageSize));
		
		DetachedCriteria criteria =DetachedCriteria.forClass(People.class);
		List<People> list =this.getHibernateTemplate().findByCriteria(criteria, begin, pageSize);
		return list;
	}
	
	
	
	
	
	

}
