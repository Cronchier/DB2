CREATE [OR REPLACE] TRIGGER UpdateLoyalty
 AFTER UPDATE on customer
 ON loyalty
 FOR EACH ROW
 WHEN (dayoftheyear>365)
 BEGIN
  UPDATE customer_loyalty = 0
 END;

 /* Die Loyalty des Kunden wird nach x Jahren zurückgesetzt.
 Damit die Kunden nicht “zu viel” Loyalty sammeln, muss der Wert verringert werden.
 (Loyalty ist ein Attribut, welches nur erhöht wird, wenn der Customer sich für das Loyalty Programm entscheiden hat)  */
