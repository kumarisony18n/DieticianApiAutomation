package StepDefinition;

import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONObject;

import Utils.Logs;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;

public class BaseClass {
	
	public static final String BASE_URL_DIETICIAN = "http://127.0.0.1:5000/api";
	public static final String USERNAME = "KMSASM2022";
	public static final String PASSWORD = "Dietician1!";
	public static final String USRNAME = "KMSASM";
	public static final String PASSWD = "Dietician!";
	
	public static final String USERS_EXCEL_Path = "./src/test/java/Utils/UserApi.xlsx";
	
	public static final String USERS_GET_SCHEMA = "./src/test/resources/JsonSchemas/UsersApi/UsersGetSchema.json";
	public static final String USERS_GETEMAIL_SCHEMA = "./src/test/resources/JsonSchemas/UsersApi/UserGetByEmailSchema.json";
	public static final String USERS_GETFNAME_SCHEMA = "./src/test/resources/JsonSchemas/UsersApi/UserGetByFnameSchema.json";
	public static final String USERS_POST_SCHEMA = "./src/test/resources/JsonSchemas/UsersApi/UserPostSchema.json";
	public static final String USERS_PUT_SCHEMA = "./src/test/resources/JsonSchemas/UsersApi/UserPutSchema.json";
	
	
	public static String postJSONData(Map<String,String> testData, int rownumber) {
		JSONObject body_json = new JSONObject();
		
		body_json.put("FirstName",testData.get("FirstName"));
		body_json.put("LastName",testData.get("LastName"));
		
		Map<String,String> address = new HashMap<String,String>();
		address.put("Address1",testData.get("Address1"));
		address.put("Address2",testData.get("Address2"));
		address.put("City",testData.get("City"));
		address.put("State",testData.get("State"));
		address.put("Country",testData.get("Country"));
		body_json.put("Address", address);
		
		body_json.put("Contact",testData.get("Contact"));
		body_json.put("Email",testData.get("Email"));
		body_json.put("FoodCategory",testData.get("FoodCategory"));
		body_json.put("Allergy",testData.get("Allergy"));
		body_json.put("LoginUsername",testData.get("LoginUsername"));
		body_json.put("Password",testData.get("Password"));
		body_json.put("UserType",testData.get("UserType"));
		body_json.put("DieticianId",testData.get("DieticianId"));

		Logs.Log.debug(body_json.toJSONString());
		return body_json.toJSONString();		
	} 
}
