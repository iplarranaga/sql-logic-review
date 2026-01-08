## SQL Logic Review

This repository focuses on **reasoning about SQL**, not on writing complex queries
or optimizing performance.

The goal is to analyze whether a query:
- answers the right question
- follows a sound logical approach
- produces results that can actually be trusted

In my experience, many SQL issues are not syntax problems, but **conceptual ones**:
joins that change meaning, filters that distort results, or assumptions that are
never questioned.

This repository collects small, self-contained examples where:
- the SQL runs correctly
- the results look reasonable
- but the underlying logic is flawed or risky

The emphasis is on **thinking, validation, and interpretation**, not on tooling
or production-ready solutions.
