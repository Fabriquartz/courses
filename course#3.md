# Course #3: Calculator with Ember

![Schermafbeelding 2019-04-05 om 14 06 43](https://user-images.githubusercontent.com/8591046/55628459-108cc680-57b1-11e9-81f0-d63d66c3847f.png)

## Goal
* Create a page with a simple list of calculations and a calculator.
* Build a calculator that looks something like the picture above.
* You can create larger numbers by clicking multiple times on (different) numbers.
* The send button creates a new calculation and shows the result afterwards.
* The clear button removes the last character of the calculation.

Example of the list:

![Schermafbeelding 2019-04-05 om 14 06 15](https://user-images.githubusercontent.com/8591046/55628460-108cc680-57b1-11e9-85ef-5f003850dd6c.png)

## Preparation
* Finish course #1 and course #2 and make sure your Ruby On Rails server is running
* Install all dependencies and run your Ember server

## Hints
* `adapters/application.js`contains the configuration you need to communicate with
your API. You don't need any additional configuration.
* Ember has blueprints for creating routes, controllers, components and models.
* The CSS of this calculator is included, so you must be able to create a look-a-like
of the example. Feel free to create your own CSS.

## Rules
* The layout of the buttons must be the same as the picture above
* The calculator never shows a result that doesn't match the calculation.
* `/calculations` must show all calculations
* `/calculations/new` must show the calculator for creating new calculations
