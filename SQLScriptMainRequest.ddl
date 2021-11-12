-- *********************************************
-- * SQL MySQL main request                     
-- *--------------------------------------------
-- * Autor: Develey Samuel              
-- * date: 08.10.2021              
-- * LUN file: F:\2emeAnneeETML\gestProj2\D-P_GestProj-SAMA-db_smartphone.lun  
-- ********************************************* 


use db_smartphone;


-- Request Section
-- _____________ 

SELECT o.osName, s.smaName FROM t_smartphone s INNER JOIN t_os o ON s.idOs = o.idOs ORDER BY o.osName ASC;

SELECT smaSize, smaName FROM t_smartphone ORDER BY smaSize DESC;

SELECT smaName, hisDate, hisPrice FROM t_historical NATURAL JOIN t_smartphone ORDER BY idHistorical, hisDate;

SELECT c.conName,s.smaName from t_smartphone s INNER JOIN t_constructor c ON s.idConstructor=c.idConstructor ORDER BY c.conName;

SELECT smaAutonomy FROM t_smartphone ORDER BY smaAutonomy DESC LIMIT 5;

SELECT ROUND(smaFrequency*smaNbCore, 2) AS "CPU (freq*core)" FROM t_smartphone ORDER BY smaFrequency*smaNbCore DESC LIMIT 10;

SELECT smaName, ROUND(smaFrequency*smaNbCore, 2) AS "CPU", smaSize, smaRam FROM t_smartphone ORDER BY (CPU*smaSize*smaRam)/3 DESC LIMIT 5

SELECT s.smaName, h.hisDate,  h.hisPrice FROM `t_smartphone` s INNER JOIN t_historical H ON H.idSmartphone= s.idSmartphone WHERE h.hisDate  = (SELECT MAX(h2.hisdate) FROM t_historical h2 WHERE h2.idSmartphone=s.idSmartphone) ORDER BY h.hisPrice DESC LIMIT 3




