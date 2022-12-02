CREATE VIEW sondakýka /* sondakýka view'i olusturdum */ 
AS
SELECT haberler_id   /*  haberler id verisini sec  */
FROM tbl_haberler    /*  nerede olacaganýný ve hangý tabloda calýscagýný sec */ 
WHERE haberler_id IN (SELECT Top 5 haberler_id FROM[tbl_haberler] Order by yayýn_saatý)   /*bu ýd lere sahip olan kayýtlarý getýr*/   
go   /*calýstýrma koduna in*/
SELECT * FROM sondakýka    /* olusturdugum sondakýka view ' ini calýstýr */