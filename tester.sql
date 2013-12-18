-- 1DV409, Laboration 03 - Optimerade kontakter. Alexander Hall [ah222tz] --

SET STATISTICS IO ON
GO

SET STATISTICS TIME ON
GO

-- Test L0301 --
 SELECT *
 FROM DemoMedlem.dbo.Medlem;
 
-- Test L0302 --
 SELECT enamn, fnamn, postnr, ort
 FROM DemoMedlem.dbo.Medlem;
 
-- Test L0303 --
 SELECT *
 FROM DemoMedlem.dbo.Medlem
 ORDER BY enamn;
 
-- Test L0304 --
 SELECT *
 FROM DemoMedlem.dbo.Medlem
 ORDER BY enamn, fnamn;
 
-- Test L0305 --
 SELECT enamn, fnamn, postnr, ort
 FROM DemoMedlem.dbo.Medlem
 ORDER BY enamn;
 
-- Test L0306 --
 SELECT enamn, fnamn, postnr, ort
 FROM DemoMedlem.dbo.Medlem
 ORDER BY enamn, fnamn;
 
-- Test L0307 --
 SELECT *
 FROM DemoMedlem.dbo.Medlem
 WHERE ort = 'KALMAR';
 
-- Test L0308 --
 SELECT *
 FROM DemoMedlem.dbo.Medlem
 WHERE ort LIKE 'KAL%';
 
-- Test L0309 --
 SELECT *
 FROM DemoMedlem.dbo.Medlem
 WHERE ort LIKE 'KAL%' AND enamn LIKE '%SON'
 ORDER BY Fastnr;
 
 -- Test L0310 --
 SELECT *
 FROM DemoMedlem.dbo.Medlem
 WHERE ANNDATUM > 20121218;
 
 -- Test L0311 --
 SELECT LEFT(anndatum,4) as 'År', COUNT(*) as 'Antal', ort
 FROM DemoMedlem.dbo.Medlem
 WHERE anndatum > 0
 GROUP BY ORT, LEFT(anndatum,4);
 
 -- Test L0312 --
 SELECT DISTINCT ort
 FROM DemoMedlem.dbo.Medlem
 ORDER BY ort;

 -- Test L0313 --
 SELECT *
 FROM DemoMedlem.dbo.Medlem
 WHERE Telenr1 != Telenr2;