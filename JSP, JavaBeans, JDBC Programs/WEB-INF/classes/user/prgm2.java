import java.sql.*;
import java.util.Scanner;

public class prgm2 {
   // JDBC driver name and database URL
   static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
   static final String DB_URL = "jdbc:mysql://localhost/student";

   //  Database credentials
   static final String USER = "root";
   static final String PASS = "";
   
   public static void main(String[] args) {
   Connection conn = null;
   Statement stmt = null;
   try{
      //STEP 2: Register JDBC driver
      Class.forName("com.mysql.jdbc.Driver");

      //STEP 3: Open a connection
      System.out.println("Connecting to database...");
      conn = DriverManager.getConnection(DB_URL,USER,PASS);

      //STEP 4: Execute a query
      System.out.println("Creating statement...");
      stmt = conn.createStatement();
      
      String sql;
      sql = "SELECT * FROM student";
      ResultSet rs = stmt.executeQuery(sql);

      //STEP 5: Extract data from result set
      System.out.println("=========== Database ===========");
      while(rs.next()){
         //Retrieve by column name
         int RollNo  = rs.getInt("RollNo");
         String StudentName = rs.getString("StudentName");
         String Science = rs.getString("Science");
         String Maths = rs.getString("Maths");
         String English = rs.getString("English");

         //Display values
         System.out.print("RollNo: " + RollNo);
         System.out.print(", StudentName: " + StudentName);
         System.out.print(", Science: " + Science);
         System.out.print(", Maths: " + Maths);
         System.out.println(", English: " + English);
      }

      System.out.println("=========== ========= ===========");


      try{
      sql = "{CALL NoOfRows()}";
      CallableStatement cstatement = conn.prepareCall(sql);
       rs = cstatement.executeQuery();

      rs.next();

      int num = rs.getInt("NoOfRows"); 
      
      System.out.println("The Number Of Rows in Student Table ::"+num);


      }

      catch(SQLException error){
         System.out.println("SQL error :: "+error);
         System.exit(1);

      }
      
      System.out.println("\n\n");



      
      stmt.close();
      conn.close();
   }catch(SQLException se){
      //Handle errors for JDBC
      se.printStackTrace();
   }catch(Exception e){
      //Handle errors for Class.forName
      e.printStackTrace();
   }finally{
      //finally block used to close resources
      try{
         if(stmt!=null)
            stmt.close();
      }catch(SQLException se2){
      }// nothing we can do
      try{
         if(conn!=null)
            conn.close();
      }catch(SQLException se){
         se.printStackTrace();
      }//end finally try
   }//end try
   System.out.println("\n\nGoodbye!");

   }

}