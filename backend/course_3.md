# Course #3: Avoiding duplicate code

## Goals
In course #2 we added some logic to support json api.

We need to add a new crud endpoint for users:
```
  first_name: string
  last_name:  string
  username:   string
  email:      string

  all required
```

Now it would we easy to copy paste our calculation code or run the generator again
but for this course you are not allowed to do that.

we are going to abstract as much code as possible away from the calculation controller
and use that same code for the user controller.

## Hints
* the rules underneath are applicable to the course #2 solution, if your own solution differs
from that make sure you refactor appropiatly.

* learn what is possible with `concerns`
* use class name to know what resource you are dealing with in the generic code

## Rules
* the only remaining methods in calculation controller should be:
  - `calculation_params`
  - `recent`

* the only methods allowed in user controller should be:
  - `user_params`
