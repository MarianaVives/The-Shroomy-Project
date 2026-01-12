package databaseConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.openqa.selenium.WebDriver;


public class jdbcConnection {
	
	static String port="3306";
	static String host = "localhost";
	static String databaseName="QaDB";
	static String url= "jdbc:mysql://" + host + ":" + port + "/" + databaseName;
	
	public static void main(String[] args) throws SQLException {
		int iteration=0;
		Connection con= DriverManager.getConnection(url, "root", "password123");
		System.out.println("Connection established");
		//Create Statement with the connection object - the object contains db information
		Statement s = con.createStatement();
		String getMushroomInfo = "select * from MushroomInfo where name='Amanita Muscaria'";
		ResultSet resultSet = s.executeQuery(getMushroomInfo);
		System.out.println("Executing query");
		while(resultSet.next()) {
		iteration++;
		System.out.println(iteration);
		System.out.println("id: " + resultSet.getString("id"));
		System.out.println("name: " + resultSet.getString("name"));
		System.out.println("description: " + resultSet.getString("description"));
		System.out.println("End of result set");
		
		// Example of use of DB for testing
		// Create instance of Selenium Driver
		//WebDriver driver= new ChromeDriver();
		// Use element retrieved from DB to use as input data
		//driver.findElement(By.xpath("myxpathlocator"),  resultSet.getString("name"))
		}
	}
}
