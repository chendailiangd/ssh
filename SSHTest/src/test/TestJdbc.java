package test;

import dao.PeopleDao;
import vo.People;
import action.PeopleAction;

public class TestJdbc {
	public static void main(String[] args) {
		PeopleDao  pd=new PeopleDao();
		People people= pd.findByPid(3);
		System.out.println(people.getName());
		
	}
	

}
