create or replace package body date_util as

  ------------------------------------------------------
  -- Find the last business day before the given date --
  ------------------------------------------------------
  function get_previous_business_day (
    p_date date
  ) return date as
    v_date date := p_date;
  begin
    -- Loop to find the last business day before the given date
    while true loop

      -- Subtract one day from the given date
      v_date := v_date - 1;

      -- Check if the day is a business day (Monday to Friday)
      if to_char(v_date, 'd') in ('2', '3', '4', '5', '6') then
        return v_date;
      end if;
    end loop;

  end get_previous_business_day;

end date_util;
/