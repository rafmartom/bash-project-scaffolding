#!/usr/bin/env bats

load '../src/greet.sh'

@test "greet function with name" {
  run greet "World"
  [ "$status" -eq 0 ]
  [ "$output" = "Hello, World!" ]
}

## Testing edge cases

@test "greet function without name" {
  run greet ""
  [ "$status" -eq 0 ]
  [ "$output" = "Hello, !" ]
}
