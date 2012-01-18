package ca.junctionbox.calculator.steps;

import cucumber.annotation.en.Given;
import cucumber.annotation.en.Then;
import cucumber.annotation.en.When;
import static org.junit.Assert.assertThat;
import static org.hamcrest.core.Is.is;
import ca.junctionbox.calculator.Calculator;

public class CalculatorStepdefs {
    Calculator _calculator;
    int _result;

    @Given("^a calculator I just turned on$")
    public void a_calculator_I_just_turned_on() {
        _calculator = new Calculator();
    }

    @When("^I add (\\d+) and (\\d+)$")
    public void I_add_and(int $arg1, int $arg2) {
        _result = _calculator.add($arg1, $arg2);
    }

    @Then("^the result is (\\d+)$")
    public void the_result_is(int $arg1) {
        assertThat(_result, is($arg1));
    }
}
