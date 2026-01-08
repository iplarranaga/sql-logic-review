## Misleading LEFT JOIN with a WHERE condition

### Intended question
The intention behind this query is usually:
> "Show all customers, including those without orders, and list their orders from 2024 onwards if they exist."

### What the query actually does
Although a LEFT JOIN is used, the condition in the WHERE clause:

```sql
WHERE o.order_date >= '2024-01-01'
filters out all rows where o.order_date is NULL.

As a result, customers without orders are removed from the result set.

In practice, this query behaves like an INNER JOIN.

Why this is a logical issue
The syntax is correct, but the logic contradicts the intention.

This is a common mistake:

the developer chooses a LEFT JOIN

but later applies a filter that cancels its effect

The query answers a different question than intended, without making this explicit.

How to think about it
Before fixing the query, the key step is to clarify the question:

Do we want all customers, even those without orders?

Or only customers with orders in 2024?

Once the question is clear, the SQL becomes straightforward.

The main issue here is not technical — it is conceptual.
