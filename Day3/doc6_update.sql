/* UPDATE Table1
SET Column1 = Value1, Column2 = Value2
WHERE Some_Column = Some_Value */

UPDATE Animals
SET TreatsPerDay = 2
WHERE AnimalName = 'Bandit'

UPDATE Animals
SET TreatsPerDay = TreatsPerDay * 1.5
WHERE TreatsPerDay < 5
