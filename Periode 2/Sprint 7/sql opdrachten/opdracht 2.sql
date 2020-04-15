SELECT CONCAT(EventName,' ', '(', 'category ', CategoryID, ')'), EventDate
FROM tblEvent
WHERE CountryID = 1