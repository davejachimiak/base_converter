# Don't ever use this
I wrote this to refresh myself on how to manually convert base 10 numbers to other bases.

Seriously, don't use this. Instead, pass the base you want to convert to as an argument to a
to\_s message on a base 10 number. e.g.:

```ruby
2.to_s 2
# => 10
```
