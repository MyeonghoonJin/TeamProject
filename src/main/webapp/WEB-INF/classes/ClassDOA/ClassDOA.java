package ClassDOA;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import javax.management.RuntimeErrorException;

import ClassBeans.ClassBeans;

public class ClassDOA {
	private static ClassDOA instance;
	private ClassDOA() {}
	   
	public static ClassDOA getInstance() {
	      if(instance == null) instance = new ClassDOA();
	      return instance;
	   }
	
	public void load(ClassBeans bean) {
		Connection conn = null;
	    PreparedStatement pstm = null;
	    try {
	    	String driver = "com.mariadb.jdbc.Driver";                            //JDBC driver 로드
	        Class.forName(driver);
	        String jdbcurl = "jdbc:mariadb://127.0.0.1:3306/test_db";
	        conn = DriverManager.getConnection(jdbcurl,"root","2022111993");
	        
	        String query = "SELECT * FROM ClassTable";             //쿼리
	        pstm = conn.prepareStatement(query);
	        
	        ResultSet rs = pstm.executeQuery(query);
	        
	        
	        bean.setname(rs.getString("name"));
	        bean.setdescription(rs.getString("description"));
	        bean.setprofName(rs.getString("profName"));
	        var i = 0;
	        String strArr[] = bean.getClassNum();
	        while(rs.next()) {
	        	strArr[i] = rs.getString("ClassNum");
	        	i++;
	        }
	        bean.setClassNum(strArr);
	       
	        
	        rs.close();                                  //rs종료
	    }
	    catch(Exception sqle) {
	         if(conn != null) {
	         try {
	            conn.rollback();
	         }catch(SQLException e) {
	            e.printStackTrace();
	         }
	      }
	         else {
	            System.out.println("null입니다.");
	         }
	         throw new RuntimeException(sqle.getMessage());
	      }finally {
	         try {
	            if(pstm != null) {
	               pstm.close();
	               pstm = null;
	            }
	            if(conn != null) {
	               conn.close();
	               conn = null;
	            }
	         }catch(Exception e) {
	            throw new RuntimeException(e.getMessage());
	         } 
	     }
	}
} 
