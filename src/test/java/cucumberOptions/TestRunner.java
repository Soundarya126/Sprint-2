package cucumberOptions;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)

@CucumberOptions(features = "src\\test\\java\\Features",

glue= {"stepdefinitions"},

tags="@Sales_Reports")

public class TestRunner 
{
	
}
