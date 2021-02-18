package LoginSteps;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;
@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"pretty" , "html:target/interviewSection"}, //Generates html report in targrt folder
        features = "src/main/resources/features/interviewSection.feature:54", // path to the. feauture fie
        glue = {"LoginSteps"}, // path to the steps in the console
       dryRun = false , //generates unimplemented steps
        stepNotifications = true
)
public class InterviewSectionRunner {
}