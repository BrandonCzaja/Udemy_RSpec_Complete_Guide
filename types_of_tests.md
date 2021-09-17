# Types of Tests

## Unit Tests

-   Unit tests focus on individual units of code in the program (a single class, module, object, or method)
    -   The goal is to test each individual part/unit by itself away from the rest of the code. That way you can be sure that that unit works correctly on its own
-   Elements are tested in isolation, the program is not tested well, but the individual unit is more likely to work correctly
-   The specs are easy to write and run fast
-   Unit Tests should be the greatest percentage of your tests in your test sweet

## Integration Tests

-   Fall between Unit and E2E tests.
-   A loose definition is that you aren't testing an individual unit, but you aren't testing the entire product as well.
    -   Typically an isolated feature or a few classes that work together

## E2E Tests: End to End Tests (a.k.a. Acceptance Tests)

-   Tests focus on a feature of a program and its interaction with the entire system from the start to the finish
    -   Elements are tested together; the complete program is tested with a good deal of confidence
    -   The specs are hard to write, brittle and slow
        -   Any change to the units will break the entire test
    -   Closest test to the actual live program the user will use

## Notes

-   All test types should be used in conjunction with the tother test types
