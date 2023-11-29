package ClassBeans;

public class ClassBeans {
	private String name;
	private String description;
	private String profName;
	private String[] ClassNum;
	
	public ClassBeans() {}
	public ClassBeans(String name,String description,String profName,String[] ClassNum) {
		this.name = name;
		this.description = description;
		this.profName = profName;
		this.ClassNum = ClassNum;
	}
	public String getname() {
		return name;
	}
	public String getdescription() {
		return description;
	}
	public String getprofName() {
		return profName;
	}
	public String[] getClassNum() {
		return ClassNum;
	}
	
	public void setname(String name) {
		this.name = name;
	}
	public void setdescription(String description) {
		this.description = description;
	}
	public void setprofName(String profName) {
		this.profName = profName;
	}
	public void setClassNum(String[] ClassNum) {
		this.ClassNum = ClassNum;
	}
}


