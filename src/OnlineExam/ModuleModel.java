package OnlineExam;

public class ModuleModel {
	
	private int id;
	private String subjectName;
	private String examinationDate;
	private String examinationTime;
	private String totalMarks;
	private String passingMarks;
	private String duration;
	private String questionFormat;
	private String studentGroup;
	private String gradingMethod;
	
	public ModuleModel(int id, String subjectName, String examinationDate, String examinationTime, String totalMarks, String passingMarks,
			String duration, String questionFormat, String studentGroup, String gradingMethod) {
		super();
		this.id = id;
		this.subjectName = subjectName;
		this.examinationDate = examinationDate;
		this.examinationTime = examinationTime;
		this.totalMarks = totalMarks;
		this.passingMarks = passingMarks;
		this.duration = duration;
		this.questionFormat = questionFormat;
		this.studentGroup = studentGroup;
		this.gradingMethod = gradingMethod;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getExaminationDate() {
		return examinationDate;
	}

	public void setExaminationDate(String examinationDate) {
		this.examinationDate = examinationDate;
	}

	public String getExaminationTime() {
		return examinationTime;
	}

	public void setExaminationTime(String examinationTime) {
		this.examinationTime = examinationTime;
	}

	public String getTotalMarks() {
		return totalMarks;
	}

	public void setTotalMarks(String totalMarks) {
		this.totalMarks = totalMarks;
	}

	public String getPassingMarks() {
		return passingMarks;
	}

	public void setPassingMarks(String passingMarks) {
		this.passingMarks = passingMarks;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getQuestionFormat() {
		return questionFormat;
	}

	public void setQuestionFormat(String questionFormat) {
		this.questionFormat = questionFormat;
	}

	public String getStudentGroup() {
		return studentGroup;
	}

	public void setStudentGroup(String studentGroup) {
		this.studentGroup = studentGroup;
	}

	public String getGradingMethod() {
		return gradingMethod;
	}

	public void setGradingMethod(String gradingMethod) {
		this.gradingMethod = gradingMethod;
	}
	

}
