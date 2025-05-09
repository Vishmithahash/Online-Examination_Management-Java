package PaymentPackege;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PaymentController {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
public static boolean insertdata(String studentid,String specialization,String email,String amount,String date,String pmethod) {
		
		boolean isSuccess = false;
		

		
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement(); 
			String sql ="insert into payment values (0,'"+studentid+"','"+specialization+"','"+email+"','"+amount+"','"+date+"','"+pmethod+"')";
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



public static List<Payment> getById (String Id){
	
	int convertedID = Integer.parseInt(Id);
	 
	 ArrayList <Payment> payment = new ArrayList<>();
	 
	 try {
		 
		 con = DBConnection.getConnection();
		 stmt = con.createStatement();
		 
		 String sql = "select * from payment where id '"+convertedID+"'";
		 
		 rs = stmt.executeQuery(sql);
		 
		 while(rs.next()) {
			 int id = rs.getInt(1);
			 String studentid = rs.getString(2);
			 String specialization = rs.getString(3);
			 String email = rs.getString(4);
			 String amount = rs.getString(5);
			 String date = rs.getString(6);
			 String pmethod = rs.getString(7);
			 
			 Payment pay = new Payment(id,studentid,specialization,email,amount,date,pmethod);
			 payment.add(pay);
			 
		 }
	 }
	 catch(Exception e) {
		 
		 e.printStackTrace();
		 
	 }
	 
	 return payment;
	}

public static List<Payment> getAllPayment (){
	 
	 ArrayList <Payment> payments = new ArrayList<>();
	 
try {
		 
		 con = DBConnection.getConnection();
		 stmt = con.createStatement();
		 
		 String sql = "select * from payment ";
		 
		 rs = stmt.executeQuery(sql);
		 
		 while(rs.next()) {
			 int id = rs.getInt(1);
			 String studentid = rs.getString(2);
			 String specialization = rs.getString(3);
			 String email = rs.getString(4);
			 String amount = rs.getString(5);
			 String date = rs.getString(6);
			 String pmethod = rs.getString(7);
			 
			 Payment pays = new Payment(id,studentid,specialization,email,amount,date,pmethod);
			 payments.add(pays);
			 
		 }
	 }
	 catch(Exception e) {
		 
		 e.printStackTrace();
		 
	 }
	 
	 return payments;
	 
	}

	//update data
	public static boolean updatedata(String id,String studentid,String specialization,String email,String amount,String date,String pmethod  ) {
		
		try {
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			String sql ="update payment set studentid='"+studentid+"',specialization='"+specialization+"',email='"+email+"',amount='"+amount+"',date='"+date+"',pmethod='"+pmethod+"'"
			+"where id='"+id+"'";
			
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
		try {
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			String sql = "delete from payment where id='"+convID+"'";
			
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
}
