select
  id,
  name,
  email
from
  users u
  join orders o on u.id = o.user_id
where
  u.status = 'active'
  and o.created_at >= '2025-01-01'
order by
  o.created_at desc
limit
  10;
