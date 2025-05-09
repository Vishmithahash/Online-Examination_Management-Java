package ExaminerCrud;

public class Examiner {
	private int id;
	private String eid;
	private String name;
	private String paperid;
	private String question;
	private String marks;
	
	public Examiner(int id, String eid, String name, String paperid, String question, String marks) {
		
		this.id = id;
		this.eid = eid;
		this.name = name;
		this.paperid = paperid;
		this.question = question;
		this.marks = marks;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPaperid() {
		return paperid;
	}

	public void setPaperid(String paperid) {
		this.paperid = paperid;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getMarks() {
		return marks;
	}

	public void setMarks(String marks) {
		this.marks = marks;
	}

	
}
