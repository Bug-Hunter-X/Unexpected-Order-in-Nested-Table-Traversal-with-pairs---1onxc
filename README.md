# Lua Nested Table Traversal Bug

This repository demonstrates a subtle bug related to the order of iteration in Lua's `pairs` function when traversing nested tables.  The bug highlights the importance of understanding that `pairs` does not guarantee any specific iteration order, and relying on a particular order can lead to unpredictable behavior.

## Bug Description

The `bug.lua` file contains a function that recursively traverses a nested table. The intention is to process all elements of the nested table. However, because `pairs` doesn't guarantee order, the results can be inconsistent across different Lua versions or even different runs of the same code.

## Solution

The `bugSolution.lua` file presents a solution that uses a different approach to ensure the correct processing of nested tables regardless of iteration order.  It utilizes a specific table traversal method that explicitly handles the order of operations, making the code more robust and less prone to unexpected behavior.

## How to Reproduce

1. Clone this repository.
2. Run `bug.lua` and `bugSolution.lua` using a Lua interpreter (e.g., `lua bug.lua`, `lua bugSolution.lua`).
3. Compare the outputs.  You'll observe the inconsistency in `bug.lua`'s output due to the indeterminate order of `pairs`.  `bugSolution.lua` will provide a consistent and predictable outcome.

This example emphasizes the importance of being mindful of the inherent characteristics of Lua's iterators when dealing with complex data structures.