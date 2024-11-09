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

  ---------------------------------------------------
  -- Add a specific amount of time to a given date --
  ---------------------------------------------------
  function add_time (
    p_date    date,
    p_days    number default null,
    p_hours   number default null,
    p_minutes number default null,
    p_seconds number default null
  ) return date as
    v_date date := p_date;
  begin

    if p_days is not null then
      v_date := v_date + numtodsinterval(p_days, 'day');
    end if;

    if p_hours is not null then
      v_date := v_date + numtodsinterval(p_hours, 'hour');
    end if;

    if p_minutes is not null then
      v_date := v_date + numtodsinterval(p_minutes, 'minute');
    end if;

    if p_seconds is not null then
      v_date := v_date + numtodsinterval(p_seconds, 'second');
    end if;

    return v_date;
  end add_time;

end date_util;
/