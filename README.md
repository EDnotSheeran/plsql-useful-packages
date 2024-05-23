# PL/SQL Useful Packages
 Useful packages to work with plsql on Oracle Apex

## Date util
  
### get_previous_business_day
  Find the last business day before the given date

```sql
  function get_previous_business_day ( p_date date ) return date;
```