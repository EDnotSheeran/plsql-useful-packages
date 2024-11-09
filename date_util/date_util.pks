create or replace package date_util as

  ------------------------------------------------------
  -- Find the last business day before the given date --
  ------------------------------------------------------
  function get_previous_business_day (
    p_date date
  ) return date;

  ---------------------------------------------------
  -- Add a specific amount of time to a given date --
  ---------------------------------------------------
  function add_time (
    p_date    date,
    p_days    number default null,
    p_hours   number default null,
    p_minutes number default null,
    p_seconds number default null
  ) return date;

end date_util;
/