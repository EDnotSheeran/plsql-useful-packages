create or replace package date_util as

  ------------------------------------------------------
  -- Find the last business day before the given date --
  ------------------------------------------------------
  function get_previous_business_day (
    p_date date
  ) return date;

end date_util;
/