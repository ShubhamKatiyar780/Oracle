-- ABS(n): Returns the absolute (non-negative) value of a number
SELECT ABS(-258) FROM DUAL;  -- Output: 258

-- CEIL(n): Returns the smallest integer greater than or equal to n
SELECT CEIL(-258.156) FROM DUAL;     -- Output: -258
SELECT CEIL(-258.562465) FROM DUAL;  -- Output: -258
SELECT CEIL(258.100) FROM DUAL;      -- Output: 259
SELECT CEIL(258.562465) FROM DUAL;   -- Output: 259

-- FLOOR(n): Returns the largest integer less than or equal to n
SELECT FLOOR(258.9562465) FROM DUAL; -- Output: 258

-- LN(n): Returns the natural logarithm (base e) of n
SELECT LN(3) FROM DUAL;              -- Output: ~1.0986

-- LOG(base, n): Returns the logarithm of n to the given base
SELECT LOG(3, 81) FROM DUAL;         -- Output: 4 (because 3^4 = 81)

-- MOD(a, b): Returns the remainder of a divided by b
SELECT MOD(41, 3) FROM DUAL;         -- Output: 2 (41 % 3 = 2)

-- ROUND(n, d): Rounds n to d decimal places
-- d = 0 → rounds to nearest whole number
SELECT 
  ROUND(256.4, 0),     -- Output: 256
  ROUND(256.54, 0),    -- Output: 257
  ROUND(256.54, 1)     -- Output: 256.5
FROM DUAL;

-- POWER(x, y): Returns x raised to the power y
SELECT POWER(2, 5) FROM DUAL;        -- Output: 32

-- SQRT(n): Returns the square root of n
SELECT SQRT(1024) FROM DUAL;         -- Output: 32

-- TRUNC(n, d): Truncates n to d decimal places without rounding
SELECT 
  TRUNC(256.4, 0),     -- Output: 256
  TRUNC(256.54, 0),    -- Output: 256
  TRUNC(256.54, 1)     -- Output: 256.5
FROM DUAL;
