# Course #2: Let's communicate with Ember

## Goal
The API you've build in course #1 returns default JSON, but that's something Ember can't handle.

Make your API able to return and receive data matching the JSON API specifications.

## Hints
* The json-api specifications are defined [here](https://jsonapi.org)
* The recommended json-api compliant serializer is [`netflix/fast_jsonapi`](https://github.com/Netflix/fast_jsonapi)

## Rules
* Add a json-api spec compliant serializer gem
* Make sure you can parse json-api compliant params in your controller
* Make sure the controller renders json-api compliant objects
