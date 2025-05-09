package PaymentPackege;

public class Payment {
	
	private int id;
	private String studentid;
	private String specialization;
	private String email;
	private String amount;
	private String date;
	private String pmethod;
	
	
	public Payment(int id, String studentid, String specialization, String email, String amount, String date,
			String pmethod) {
		
		this.id = id;
		this.studentid = studentid;
		this.specialization = specialization;
		this.email = email;
		this.amount = amount;
		this.date = date;
		this.pmethod = pmethod;
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
	
	
	public String getSpecialization() {
		return specialization;
	}
	
	
	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}
	
	
	public String getEmail() {
		return email;
	}
	
	
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public String getAmount() {
		return amount;
	}
	
	
	public void setAmount(String amount) {
		this.amount = amount;
	}
	
	
	public String getDate() {
		return date;
	}
	
	
	public void setDate(String date) {
		this.date = date;
	}
	
	
	public String getPmethod() {
		return pmethod;
	}
	
	
	public void setPmethod(String pmethod) {
		this.pmethod = pmethod;
	}
	
	

}
