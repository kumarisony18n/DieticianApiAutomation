package StepDefinition;

import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;

public class BaseClass {
	
	public static final String BASE_URL_DIETICIAN = "http://127.0.0.1:5000/api";
	public static final String USERNAME = "KMSASM2022";
	public static final String PASSWORD = "Dietician1!";
	public static final String USERS_EXCEL_Path = "./src/test/java/Utils/Dietician.xlsx";
	
}
