package LoginSteps;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;



@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/main/resources/features/",
        glue = {"DashboardRunner"}
       // tags="@test1 or test2"

)


public class DashboardRunner {
}
