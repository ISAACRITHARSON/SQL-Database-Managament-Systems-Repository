import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
public class four {
public static void main(String[] args) {
try {
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection

con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","600352521
2Ir11*");

Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery("delete from employee__1041 where

ename='Ashwin'");

System.out.println("value deleted");
con.close();
}
catch(Exception e) {System.out.println(e);};
}

}
