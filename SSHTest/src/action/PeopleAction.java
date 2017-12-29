package action;
import java.util.List;
import org.apache.struts2.ServletActionContext;
import vo.People;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.PeopleDao;

public class PeopleAction extends ActionSupport implements ModelDriven<People>{
	private static final long serialVersionUID = 1L;
	private People people =new People();
	public People getModel() {
		return people;
	}
	private int page;//���յ�ǰҳ
	public void setPage(int page) {
		this.page = page;
	}
	//ע��������ݿ��peopleDao
	private PeopleDao peopleDao;
	public void setPeopleDao(PeopleDao peopleDao) {
		this.peopleDao = peopleDao;
	}
	
	/**
	 * ͨ��Ajax��ѯ���ݿ�
	 */
	public String findByPhone(){
	    People peopleByPhone=peopleDao.findByPhone(people.getPhone());
		if(peopleByPhone!=null){
			this.addActionMessage("�Ѿ����ڸú��룡");
			return "msg";
		}else{
			this.addActionMessage("���ֻ���δע�ᣡ");
		}
		return "msg";
	}
	
	
	/**
	 * �޸�People��Ϣ
	 */
	public String updatePeople(){
		System.out.println("��ַ:"+people.getAddress());
		peopleDao.updatePeople(people);
		return "index";
	}
	
	/**
	 * ��ת����Ҫ�޸ĵ�ҳ�沢����pid��ѯ����������
	 */
	public String toUpdatePeople(){
		People singlePeople =peopleDao.findByPid(people.getPid());
		ServletActionContext.getRequest().getSession().setAttribute("singlePeople", singlePeople);
		return "toUpdate";
	}
	
	
	/**
	 * ɾ��һ������
	 */
	public String deletePeople(){
		peopleDao.deletePeple(people.getPid());
		return "index";
	}
	
	/**
	 * ����Ϣ�������ݿ�
	 */
	public String insertPeople(){
		if(people!=null){
			peopleDao.save(people);
		}
		this.addActionMessage("���ݲ���ɹ���");
		return "index";
	}
	
	/**
	 * ��ҳ�в�ѯǰʮ������
	 */
	public String execute(){
		List<People> peopleListTen =peopleDao.findAll();
		
		for(People p:peopleListTen){
			int c=1;
			System.out.println(c+":"+p.getPhone()+p.getEmail());
			c++;
			System.out.println(c);
		}
		ActionContext.getContext().getValueStack().set("plistTen", peopleListTen);
		return "index";
	}

	/**
	 * ��ת��������Ϣ��ҳ��
	 */
	public String findOnePage(){
		PageBean<People> pageBean= findByPage(page);
		ActionContext.getContext().getValueStack().set("pageBean",pageBean);
		return "findOnePage";
	}
	//ͨ����ǰҳ��ѯ��ҳ������
	public PageBean<People> findByPage(int page) {
		PageBean<People> pageBean =new PageBean<People>();
		pageBean.setPage(page);//���õ�ǰҳ������ҳ�洫����Ϊ1��
		int pageSize=5;//ÿҳ������5������
		pageBean.setPageSize(pageSize);
		int totalCount=0;
		totalCount=peopleDao.findTotalCount();
		pageBean.setTotalCount(totalCount);//�������ݿ��ܵ�����
		int totalPage=0;
		if(totalCount%pageSize==0){
			totalPage=totalCount/pageSize;
		}else{
			totalPage=totalCount/pageSize+1;
		}
		pageBean.setTotalPage(totalPage);//���ܵ�ҳ�����pageBean
		System.out.println("111111111"+totalPage);
		
		int begin =(page-1)*pageSize;
		List<People> list=peopleDao.findByPageCid(begin,pageSize);
		pageBean.setList(list);
		return pageBean;
	}
	
	
	
	
	
	
}
