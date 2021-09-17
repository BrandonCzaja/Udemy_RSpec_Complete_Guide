# What is RSpec?

-   RSpec is an open-source Ruby testing library first released in 2005
-   RSpec is the most popular Ruby Gem with over 300 million downloads
-   The latest version, RSpec 3, was released in 2014
-   RSpec is known as a DSL (a domain specific language)
    -   Its constructs (i.e. its classes and methods) are designed for use in a specific domain (testing)
    -   Designed to solve a specific problem, testing

# What is Coding Testing and Why Should We Do It?

-   Testing is writing code that checks other code is working as expected
-   TDD: Test Driven Development => Write your tests before your code
-   Testing avoids regressions when new features are added
-   Provides living documentation for the codebase
-   Isolate specific problems or bugs
-   Improve the quality of code, especially design
    -   Forces you to thoroughly think about all aspects of the code before building
-   Cut down on developer time

# The RSpec Ecosystem

-   RSpec consists of 3 independent Ruby Gems that are often paired together
    -   rspec-core: The base library that organizes and runs the tests
    -   rspec-expectations: The matcher library that implements assertions
    -   rspec-mocks: The library used to fake behavior of classes and objects
-   RSpec permits integration with other libraries for expectations and mocks
-   The rspec-rails Gem integrates RSpec with the Ruby on Rails web framework

# RSpec Project Structure

-   Most projects have a `spec` directory to house all RSpec test files
-   The nested directories in `spec` mimic those of the `lib` folder (Ruby projects) or the `app` folder (Rails projects)
-   An RSpec file ends with a `_spec.rb` extension that matches the file it is testing
-   Example: A `Knight` class in `knight.rb` should have a `knight_spec.rb` file
