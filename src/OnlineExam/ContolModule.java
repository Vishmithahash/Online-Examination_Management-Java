package OnlineExam;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ContolModule 
{
	
	//Connect DB
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	//Insert Data Function
	public static boolean insertdata (String subjectName, String examinationDate, String examinationTime, String totalMarks, String passingMarks, String duration, String questionFormat, String studentGroup, String gradingMethod)
	{
		boolean isSuccess = false;
		try {
			//DB CONNECTION CALL
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL QUERY
			String sql = "insert into modules values(0, '"+subjectName+"', '"+examinationDate+"', '"+examinationTime+"', '"+totalMarks+"', '"+passingMarks+"', '"+duration+"', '"+questionFormat+"', '"+studentGroup+"', '"+gradingMethod+"')";
			int rs = stmt.executeUpdate(sql);
			if(rs>0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	//GetById
	public static List<ModuleModel> getById (String Id)
	{
		int convertedID = Integer.parseInt(Id);
		
		ArrayList <ModuleModel> modules = new ArrayList<>();
		
		try
		{
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//query
			String sql = "select * from modules where id '"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				int id = rs.getInt(1);
				String subjectName = rs.getString(2);
				String examinationDate = rs.getString(3);
				String examinationTime = rs.getString(4);
				String totalMarks = rs.getString(5);
				String passingMarks = rs.getString(6);
				String duration = rs.getString(7);
				String questionFormat = rs.getString(8);
				String studentGroup = rs.getString(9);
				String gradingMethod = rs.getString(10);
				
				ModuleModel mm = new ModuleModel(id, subjectName, examinationDate, examinationTime, totalMarks, passingMarks, duration, questionFormat, studentGroup, gradingMethod);
				modules.add(mm);
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return modules;
	}
	
	//GetAll Data
	public static List <ModuleModel> getAllmodule()
	{
		ArrayList <ModuleModel> moduless = new ArrayList<>();
		
		try
		{
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//query
			String sql = "select * from modules"; 
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				int id = rs.getInt(1);
				String subjectName = rs.getString(2);
				String examinationDate = rs.getString(3);
				String examinationTime = rs.getString(4);
				String totalMarks = rs.getString(5);
				String passingMarks = rs.getString(6);
				String duration = rs.getString(7);
				String questionFormat = rs.getString(8);
				String studentGroup = rs.getString(9);
				String gradingMethod = rs.getString(10);
				
				ModuleModel mm = new ModuleModel(id, subjectName, examinationDate, examinationTime, totalMarks, passingMarks, duration, questionFormat, studentGroup, gradingMethod);
				moduless.add(mm);
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return moduless;
	}
	
	//Update Data
	public static boolean updatedata(String id, String subjectName, String examinationDate, String examinationTime, String totalMarks, String passingMarks, String duration, String questionFormat, String studentGroup, String gradingMethod)
	{
		try
		{
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL QUERY
			String sql = "update modules set subjectName='"+subjectName+"', examinationDate='"+examinationDate+"',examinationTime='"+examinationTime+"',totalMarks='"+totalMarks+"',passingMarks='"+passingMarks+"',duration='"+duration+"',questionFormat='"+questionFormat+"',studentGroup='"+studentGroup+"',gradingMethod='"+gradingMethod+"'"
			+"where id='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
		}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return isSuccess;
			
	}
	
	//Delete Data
	public static boolean deletedata(String id)
	{
		int convID = Integer.parseInt(id);
		
		try
		{
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//query
			String sql = "delete from modules where id='"+convID+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
		}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return isSuccess;
	}
	
}
