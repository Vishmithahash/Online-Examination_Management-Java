package Ticket;

public class Student {
	

	private int id;
	private String studentid;
	private String name;
	private String module;
	private String email;
	private String no;
	private String description;
	
	public Student(int id, String studentid,String name, String module, String email, String no, String description) {
		this.id = id;
		this.studentid = studentid;
		this.name = name;
		this.module = module;
		this.email = email;
		this.no = no;
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStudentid() {
		return studentid;
	}

	public void setStudentid(String studentid) {
		this.studentid = studentid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getModule() {
		return module;
	}

	public void setModule(String module) {
		this.module = module;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	
	
}