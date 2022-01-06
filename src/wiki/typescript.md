---
layout: wiki.njk
title: typescript
date: Created
lastmod: Last Modified
lastEdit: +created
---

Superset of JavaScript, can be learned incrementally.

Can be transpiled to multiple JavaScript flavors.

Type annotations & Strongly typed libraries, code is automatically documented in the IDE. Refer to online documentation for libraries that you use.
The compiler can catch bugs in advance.


# Resources
## Compiler

tsc - the compiler
tsc index.ts transpiles index.ts into index.js

### config
tsconfig.json is the standard way to configure the compiler, and is automatically picked up upon running the tsc command.

Layout

```json
{
    "compilerOptions": {
        "target": "esnext",
        "watch": true,
        "lib": ["dom", "es2017"]
    }
}
```
*lib* - Automatically includes typings for certain environments such as the dom, or es2017.
What you set in this field gives you access to the classes in whatever library you've designated and provides you with
integrated documentation, intellisense, autocomplete, and if there are errors, it will inform you as to why this code will not run.

If you need to do deep inspection of code, you can right click and view the typings which will show you a view of every property & method that exists on that class.

#### Monorepo
Community maintained types availble for libraries without them,
npm i -D @types/packagename


# Strong typing code
Implicitly and explicitly.


Example of implicit.
```typescript
let hello = 5;
```

Given a number, this type is already inferred as a primitive number type.

We can opt out of the type system by annotating variables with, any. The compiler will not type check this.

```typescript
let hello: any = 5;
```

Without any type annoations, it's inferred as an any type. So you can assign anything to it.


```ts
let hello;
```


## Functions

```ts

function pow(x: number, y: number): string {
    return Math.pow(x, y).toString()
}
```

So where x and y are both ints, the return type is string.
Therefore, we must convert the return toString() in order for this code to run.

Void is also acceptable for things like event listeners or functions that just don't return a value

## Arrays

```ts
const arr: number[] = []

arr.push(1)
arr.push('23') -- error
arr.push(false) -- error
```

# Tuples

Fixed length arrays that each value has its own type.

```ts
type MyList = [number?, string?, boolean?]
```


# Generics

```ts
class Observable<T> {

}
```
The capital T represents a variable type that we can pass in to strong type observables internal value.

```ts
let x: Observable<number>
```
```ts
let y: Observable<Person>
```
