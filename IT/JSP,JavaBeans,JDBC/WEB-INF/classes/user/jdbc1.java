import java.sql.*;
import java.util.Scanner;

public class prgm1 {
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
      int choice = 1;
     do{
      System.out.println("==== Choose One ====");
      System.out.println("(1)Total number of students");
      System.out.println("(2)Average marks for each subject input by user");
      System.out.println("(3)The name of student getting highest marks");
      System.out.println("(4)No of students getting first, second and third division");
      System.out.println("(5)Subject wise toppers");
      System.out.println("(6)The average marks");
      System.out.println("(7)The student getting second highest marks.");
      System.out.println("\nEnter Your Choice ...");
      Scanner input = new Scanner(System.in);
      choice = input.nextInt();

      switch(choice){

         case 1 :   sql = "Select Count(*) as Total from student";
                    rs  = stmt.executeQuery(sql);
                    rs.next();
                    System.out.println("Total number of Students :: "+rs.getInt("Total"));
                    System.out.println("\n\n");
                    break;

        case 2 :    sql = "select AVG(Maths) as AV_Maths,AVG(Science) as AV_SCIENCE,AVG(English) as AV_ENGLISH from student;";
                    rs  = stmt.executeQuery(sql);
                    rs.next();
                    System.out.println("Average Marks For Maths :: "+rs.getDouble("AV_Maths"));
                    System.out.println("Average Marks For Science :: "+rs.getDouble("AV_SCIENCE"));
                    System.out.println("Average Marks For English :: "+rs.getDouble("AV_ENGLISH"));
                    System.out.println("\n\n");
                    break; 
         case 3 :   sql = "Select RollNo,StudentName,(Maths+Science+English) as Total from student order by Total DESC LIMIT 1";
                    rs  = stmt.executeQuery(sql);
                    while(rs.next()){

                              System.out.print("RollNo: " + rs.getInt("RollNo"));
                              System.out.print(", StudentName: " + rs.getString("StudentName"));
                              System.out.println(", Total: " + rs.getInt("Total"));

                    }
                    System.out.println("\n\n");
                    break;
         case 4 :   //sql = "Select RollNo,StudentName,(Maths+Science+English) as Total from student order by Total LIMIT 3";
                     sql = "Select count(*) as Division_1 from student where ((Maths+Science+English)/3) > 90";
                    rs  = stmt.executeQuery(sql);
                    while(rs.next()){

                              System.out.println("Students having Division 1: " + rs.getString("Division_1"));


                    }

                    sql = "Select count(*) as Division_2 from student where ((Maths+Science+English)/3) > 80 and ((Maths+Science+English)/3)  < 90";
                    rs  = stmt.executeQuery(sql);
                    while(rs.next()){

                              System.out.println("Students having Division 2: " + rs.getString("Division_2"));
                    }

                   sql = "Select count(*) as Division_3 from student where ((Maths+Science+English)/3) > 70 and ((Maths+Science+English)/3)  < 80";
                    rs  = stmt.executeQuery(sql);
                    while(rs.next()){

                              System.out.print("Students having Division 2: " + rs.getString("Division_3"));
                    }

                    System.out.println("\n\n");
                    break;

         case 5 :   sql = "Select StudentName from student ORDER BY Maths DESC LIMIT 1;";
                    rs  = stmt.executeQuery(sql);
                    rs.next();
                    System.out.println("Maths Topper :: "+rs.getString("StudentName"));
                    
                    sql = "Select StudentName from student ORDER BY Science DESC LIMIT 1;";
                    rs  = stmt.executeQuery(sql);
                    rs.next();
                    System.out.println("Science Topper :: "+rs.getString("StudentName"));

                    sql = "Select StudentName from student ORDER BY English DESC LIMIT 1;";
                    rs  = stmt.executeQuery(sql);
                    rs.next();
                    System.out.println("English Topper :: "+rs.getString("StudentName"));

                    System.out.println("\n\n");
                    break;


         case 6 :   sql = "Select RollNo,StudentName ,(Maths+Science+English)/3 as Average_Marks from student;"; 
                    rs = stmt.executeQuery(sql);
                    while(rs.next()){
                              System.out.print("RollNo: " + rs.getInt("RollNo"));
                              System.out.print(", StudentName: " + rs.getString("StudentName"));
                              System.out.println(", Average Marks: " + rs.getInt("Average_Marks"));
                    }
                    System.out.println("\n\n");
                    break;

        case 7  :   sql = "Select RollNo,StudentName ,(Maths+Science+English) as Total from student order by Total DESC LIMIT 2,1;"; 
                    rs = stmt.executeQuery(sql);
                    while(rs.next()){
                              System.out.print("RollNo: " + rs.getInt("RollNo"));
                              System.out.print(", StudentName: " + rs.getString("StudentName"));
                              System.out.println(", Total Marks: " + rs.getInt("Total"));
                    }
                    System.out.println("\n\n");
                    break;              

                       
         default :   break;           



      }

   }while(choice>0 && choice<8);
      rs.close();
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
}//end main
}//end FirstExample