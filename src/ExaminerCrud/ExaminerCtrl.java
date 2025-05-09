package ExaminerCrud;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ExaminerCtrl {

	
	//connect db
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//insert function
	public static boolean insertdata(String eid, String name, String paperid, String question, String marks){
		boolean isSuccess = false;
		
		try {
			//DB CONNECTION CALL 
			con = DBconnectionExaminer.getConnection();
			stmt = con.createStatement();
			
			//SQL query
			String sql = "insert into newexaminer values(0, '"+eid+"', '"+name+"', '"+paperid+"', '"+question+"', '"+marks+"')";
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
	
			
		public static List<Examiner> getById (String Id){
			int convertedID =Integer.parseInt(Id);
			
			ArrayList <Examiner> exam = new ArrayList<>();
			
			
			try {
				//DBconnection
				con = DBconnectionExaminer.getConnection();
				stmt=con.createStatement();
				
				//query
				String sql = "select * from newexaminer where id '"+convertedID+"'";
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id = rs.getInt(1);
					String eid = rs.getString(2);
					String name = rs.getString(3);
					String paperid = rs.getString(4);
					String question = rs.getString(5);
					String marks = rs.getString(6);
					
					Examiner ex = new Examiner(id,eid,name,paperid,question,marks);
					exam.add(ex);
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return exam;
			
		}
			
			
			//get all data
			 static List<Examiner> getAllExaminer() {
				
				ArrayList <Examiner> exams = new ArrayList<>();
				
				try {
					//DBconnection
					con = DBconnectionExaminer.getConnection();
					stmt=con.createStatement();
					
					//query
					String sql = "select * from newexaminer";
					
					rs = stmt.executeQuery(sql);
					
					while(rs.next()) {
						int id = rs.getInt(1);
						String eid = rs.getString(2);
						String name = rs.getString(3);
						String paperid = rs.getString(4);
						String question = rs.getString(5);
						String marks = rs.getString(6);
						
						Examiner ex = new Examiner(id,eid,name,paperid,question,marks);
						exams.add(ex);
					}
					
				}
				catch(Exception e) {
					e.printStackTrace();
				}
				return exams;
			
		}
			 
			 //update data
			 public static boolean updatedata(String id, String eid, String name, String paperid, String question, String marks ){
				 try {
					 //dbconnection
					 int convID = Integer.parseInt(id);
					 con=DBconnectionExaminer.getConnection();
					 
					 stmt=con.createStatement();
					 
					 //sql query
					 String sql = "UPDATE newexaminer SET eid='"+eid+"',name = '"+name+"',paperid = '"+paperid+"',question = '"+question+"',marks = '"+marks+"' WHERE id = '"+convID+"';";
					 int rs = stmt.executeUpdate(sql);
					 
					 if(rs > 0) {
							isSuccess = true;
						}
						
						else {
							isSuccess = false;
						}
					 
					 
					 
				 }
				 catch(Exception e){
					 e.printStackTrace();
				 }
				 
				 return isSuccess;
			 }
			 
			 
			 //delete data 
			 public static boolean deletedata(String id) {
				 int convID = Integer.parseInt(id);
				 try{
					 //DBconnection
					 con=DBconnectionExaminer.getConnection();
					 stmt=con.createStatement();
					 String sql = "delete from newexaminer where id='"+convID+"'";
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
