SELECT *
FROM followings
WHERE user_id = 1
    AND target_id = 71;

SELECT *
FROM followings
WHERE user_id = 71
  AND target_id = 1;