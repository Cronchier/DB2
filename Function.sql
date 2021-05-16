CREATE [OR REPLACE] FUNCTION function_name
[(parameter_name [IN | OUT | IN OUT] type [, ...])]
RETURN return_datatype
{IS | AS}
BEGIN
   < function_body >
END [function_name];

/* Der Staff bestellt neue Modelle/Autos und diese Nachricht geht an den Supplier (wenn der Bestand unter einem Wert oder 0 ist)  */
