package Ticket;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




public class StudentController {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
public static boolean insertdata(String studentid,String name,String module,String email,String no,String description) {
		
		boolean isSuccess = false;
		

		
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement(); 
			String sql ="insert into student values (0,'"+studentid+"','"+name+"','"+module+"','"+email+"','"+no+"','"+description+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

public static List<Student> getById (String Id){
	
	int convertedID = Integer.parseInt(Id);
	 
	 ArrayList <Student> student = new ArrayList<>();
	 
	 try {
		 
		 con = DBConnection.getConnection();
		 stmt = con.createStatement();
		 
		 String sql = "select * from student where id '"+convertedID+"'";
		 
		 rs = stmt.executeQuery(sql);
		 
		 while(rs.next()) {
			 int id = rs.getInt(1);
			 String studentid = rs.getString(2);
			 String name = rs.getString(3);
			 String module = rs.getString(4);
			 String email = rs.getString(5);
			 String no = rs.getString(6);
			 String description = rs.getString(7);
			 
			 Student st = new Student(id,studentid,name,module,email,no,description);
			 student.add(st);
			 
		 }
	 }
	 catch(Exception e) {
		 
		 e.printStackTrace();
		 
	 }
	 
	 return student;
	}

public static List<Student> getAllStudent (){
	 
	 ArrayList <Student> students = new ArrayList<>();
	 
try {
		 
		 con = DBConnection.getConnection();
		 stmt = con.createStatement();
		 
		 String sql = "select * from student ";
		 
		 rs = stmt.executeQuery(sql);
		 
		 while(rs.next()) {
			 int id = rs.getInt(1);
			 String studentid = rs.getString(2);
			 String name = rs.getString(3);
			 String module = rs.getString(4);
			 String email = rs.getString(5);
			 String no = rs.getString(6);
			 String description = rs.getString(7);
			 
			 Student st = new Student(id,studentid,name,module,email,no,description);
			 students.add(st);
			 
		 }
	 }
	 catch(Exception e) {
		 
		 e.printStackTrace();
		 
	 }
	 
	 return students;
	 
	}

public static boolean updatedata(String id,String studentid,String name,String module,String email,String no,String description) {
		
	try {
		 int convID = Integer.parseInt(id);
		 con = DBConnection.getConnection();
		 stmt = con.createStatement();
		 
		 String sql = "UPDATE student SET studentid = '"+studentid+"',name = '"+name+"',module = '"+module+"',email = '"+email+"',phone = '"+no+"',description = '"+description+"' WHERE ticketid = '"+convID+"';";
		 
		 int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		 
	}
	catch(Exception e) {
		 
		 e.printStackTrace();
		 
	 }
	 
	 return isSuccess;
	 
	}

	public static boolean deletedata(String id) {
		
		int convID = Integer.parseInt(id);
		
		
		
		try {
			 
			 con = DBConnection.getConnection();
			 stmt = con.createStatement();
			 
			 String sql = "delete from student where ticketid= '"+convID+"'";
			 int rs = stmt.executeUpdate(sql);
			 
			 if(rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
			 
		}
		catch(Exception e) {
			 
			 e.printStackTrace();
			 
		 }
		 
		 return isSuccess;
		
	}


}
