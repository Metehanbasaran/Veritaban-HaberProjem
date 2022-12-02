CREATE VIEW sondak�ka /* sondak�ka view'i olusturdum */ 
AS
SELECT haberler_id   /*  haberler id verisini sec  */
FROM tbl_haberler    /*  nerede olacagan�n� ve hang� tabloda cal�scag�n� sec */ 
WHERE haberler_id IN (SELECT Top 5 haberler_id FROM[tbl_haberler] Order by yay�n_saat�)   /*bu �d lere sahip olan kay�tlar� get�r*/   
go   /*cal�st�rma koduna in*/
SELECT * FROM sondak�ka    /* olusturdugum sondak�ka view ' ini cal�st�r */