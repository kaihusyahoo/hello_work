--------------------------------------------------------
--  File created - Saturday-July-31-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function GETBOOKS
--  Date: 2021.07.30
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "HR"."GETBOOKS" (a CLOB) 
RETURN BookSet_t
AS
  l_tab  BookSet_t := BookSet_t();
BEGIN
  l_tab.extend;
  l_tab(l_tab.last) := Book_t('Kai','My Book', 'My Abstract');
  RETURN l_tab;
END;


/
