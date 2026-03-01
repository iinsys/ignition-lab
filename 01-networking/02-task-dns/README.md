# Task 2: DNS Lookup

## Objective
Learn how to use `nslookup` and `dig` to query DNS servers for information about domain names.

## Exercises
1. Use `nslookup` to find the IP address of `google.com`.
   ```bash
   nslookup google.com
   ```
2. Use `dig` to do the same thing.
   ```bash
   dig google.com
   ```
3. Use `dig` to find the mail servers for `google.com`.
   ```bash
   dig google.com MX
   ```
4. Use `dig` to perform a reverse DNS lookup on an IP address you found in the previous steps.
   ```bash
   dig -x <ip-address>
   ```
5. What is the difference between `nslookup` and `dig`?
6. Which one is generally preferred and why?
