package LoginSteps;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
public class InterviewSectionSteps {
    @When("I enter {string} in {string} input field")
    public void iEnterInInputField(String msg, String fieldName) {
        System.out.println("Enter " + msg + " in " + fieldName + " input field");
    }
    @Then("I validate {string} is displayed in {string} section")
    public void iValidateIsDisplayedInSection(String msg, String sectionName) {
        System.out.println("I validate " + msg + " is displayed in " + sectionName + " section");
        /**
         * switch(sectionName){
         * case "Do":
         *  driver.findElementById("inputArea1").sendKeys(msg);
         *  break;
         *  case "Dont":
         *  driver.findElementById("inputArea2").sendKeys(msg);
         */
    }

    @Then("{string} this input by clicking {string} button")
    public void thisInputByClickingButton(String function, String button) {
        System.out.println("I am "+ function + "ing"+" this input by clicking " + button+" button");
    }

    @Then("I validate {string} is deleted from  {string} section")
    public void iVlidateIsDeletedFromSection(String input, String section) {
        System.out.println("I validate"+ input+  " is deleted from "+ section+" section");

    }

    @When("I sign out")
    public void iSignOut() {

    }

    @Then("I should not see {string} option for {string} statement")
    public void iShouldNotSeeOptionForStatement(String arg0, String arg1) {
    }

    @Then("I validate {string} is deleted from {string} section")
    public void iValidateIsDeletedFromSection(String arg0, String arg1) {
    }

    @Given("I open {string} browser")
    public void iOpenBrowser(String browser) {
        System.out.println("Opening" + browser+ "browser");
    }
}