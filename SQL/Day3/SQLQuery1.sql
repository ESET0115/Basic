USE society

SELECT * FROM apt

EXEC sp_help apt

EXEC sp_rename 'apt', 'stay'
SELECT * FROM stay

EXEC sp_rename 'stay.resident_contact', 'mobile_no'

EXEC sp_help stay

ALTER TABLE stay
ALTER COLUMN mobile_no float

ALTER TABLE stay
DROP COLUMN mobile_no

ALTER TABLE stay
ADD mobile_no varchar(10)