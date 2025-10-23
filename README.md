# DSA Learning Notes (Data Structures and Algorithms)

This repository contains my notes and code examples while learning Data Structures and Algorithms (DSA) using the Dart programming language.

## Table of Contents

- [O(1) - Constant Time](#o1---constant-time)
- [O(n) - Linear Time](#on---linear-time)
- [O(n^2) - Quadratic Time](#on2---quadratic-time)
- [References](#references)

---

## O(1) - Constant Time

- **Explanation:** An operation with O(1) time complexity means the execution time does not depend on the amount of data. Example: direct access to an element in a Map or List by index.
- **Code example:** See the [`o(1).dart`](<./o(1).dart>) file.

## O(n) - Linear Time

- **Explanation:** An operation with O(n) time complexity means the execution time increases as the amount of data increases. Example: searching for an element in a List by iteration.
- **Code example:** See the [`o(n).dart`](<./o(n).dart>) file.

## O(n^2) - Quadratic Time

- **Explanation:** An operation with O(n²) time complexity means the execution time increases quadratically as the amount of data increases. This usually happens when you have nested loops, where each element in a collection is compared with every other element.
- **Code examples:**
  - `findItemWithCompare`: Compares each element of two lists at every possible pair of indices.
  - `findPairs`: Finds duplicate pairs in a list by comparing every possible pair of elements.
- **Code example:** See the [`o(n^2).dart`](<./o(n^2).dart>) file.

---

## References

- [Big O Notation – GeeksforGeeks](https://www.geeksforgeeks.org/analysis-of-algorithms-set-1-asymptotic-analysis/)
- [Dart Documentation](https://dart.dev/guides)
