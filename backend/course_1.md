# Course #1: Build a Ruby On Rails API

## Goals

* A POST request to `/calculations` should return JSON containing the result.

Input:
```
{
  "value_a":  5,
  "value_b":  5,
  "operator": "*"
}
```

Result:
```
{
  "id":       1,
  "value_a":  5,
  "value_b":  5,
  "operator": "*",
  "result":   "25"
}
```

* A PATCH request to `/calculations/:id` should update the calculation

* `GET /calculations` must return all calculations

* `GET /calculations/:id` must return requested calculation

* `DELETE /calculations/:id` must delete requested calculation

* `GET /calculations/recent` must return all calculations made in the last 5 minutes



## Preparation
* Clone this repository. All you need for the course is inside a folder named `/course#1`.
* Make sure Docker is running in the background.

## Hints
* Everything you need is included in a Docker container. You don't need to download
any additional stuff.
* Use the command `dcu api` to boot your Rails server
* Use the command `dcr api <commando>` to execute commands inside 

## Rules
* `value_a`, `value_b` and `operator` are mandatory
* `operator` must be one of the following symbols: `-, +, *, /`
* All calculations must be saved in the database
* When you return multiple calculations they must be ordered by date of creation.
