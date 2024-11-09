# PL/SQL Useful Packages
 Useful packages to work with plsql on Oracle Apex

## Date util
  
### get_previous_business_day
  Find the last business day before the given date

```sql
  function get_previous_business_day ( p_date date ) return date;
```

### add_time
  Add a specific amount of time to a given date

```sql
  function add_time (
    p_date    date,
    p_days    number default null,
    p_hours   number default null,
    p_minutes number default null,
    p_seconds number default null
  ) return date;
```