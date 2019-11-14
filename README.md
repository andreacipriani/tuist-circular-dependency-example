# tuist-circular-dependency-example

Reproduce a potential error with circular dependencies between Projects in [Tuist](www.github.com/tuist/tuist).


### The project

We have a project with two frameworsk: `Core` and `Testing`.

`Core` has two targets: `Core` and `CoreTests`
- `Core` doesn't depend on anything
- `CoreTests` depends on `Core` and on `Testing`

`Testing` depends on `Core` and *not* on `CoreTests`

### Reproduction steps:

```
cd Frameworks/Testing 
tuist generate
```

- Expected: it creates the project
- Got: Error: Found circular dependency between the target 'CoreTests' and the target 'Testing'
