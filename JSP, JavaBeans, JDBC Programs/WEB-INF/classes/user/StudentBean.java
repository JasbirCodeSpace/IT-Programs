package user;

public class StudentBean implements java.io.Serializable{
  
   private int rollNo=0;
   private String firstName=null;
   private String lastName=null;
   private int age=0;

   public void StudentBean(){

   }

   public void setFirstName(String firstName){
   	this.firstName = firstName;
   }

      public void setLastName(String lastName){
   	this.lastName = lastName;
   }

      public void setRollNo(int rollNo){
   	this.rollNo = rollNo;
   }

      public void setAge(int age){
   	this.age = age;
   }


      public String getFirstName(){
   	return firstName;
   }

      public String getLastName(){
   	return lastName;
   }

      public int getRollNo(){
   	return rollNo;
   }

      public int getAge(){
   	return age;
   }



}