package StepDefinition;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(features=".\\src\\test\\resources\\Features",
glue={"StepDefinition"},
tags = "@Smoke and @Regression",
plugin = {"pretty","json:target/cucumber-reports/reports.json",
		"junit:target/cucumber-reports/Cucumber.xml",
		"html:target/cucumber-reports/reports2.html",
<<<<<<< HEAD
		"com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"},monochrome = true,
tags= "@Smoke and @Regression",		
=======
"com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"},

monochrome = true,
>>>>>>> 39c8b0de7c7a2e85408873dbd74b628adf4befd5
dryRun = false)
public class TestRunner {

}
