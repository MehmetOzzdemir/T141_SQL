USE sys;

/*===============================================
		TABLO GORUNTULEME - SELECT
===============================================*/

/*
 SELECT komutu, SQL'de veritabanından veri sorgulamak ve almak için
 kullanılan temel bir komuttur. Bu komut, belirtilen kriterlere uygun
 verileri seçmek ve görüntülemek için kullanılır.
*/

/*
*************** SYNTAX ***************
SELECT * FROM tablo_adi;
*/


/*  ========================  SORU-1 ========================
            Kitaplar tablosunu goruntuleyiniz.
    =========================================================
 */
 
 SELECT * FROM table_books;
 
 -- SQL Syntax yapisi gunluk konusma diline yaklastirilmaya calisiliyor
 -- SQL Syntax yapisin okudugunuzda mantikli bir cumle elde edebiliriz
 
 /*  ========================  SORU-2 ========================
 Personel tablosunu goruntuleyiniz.
    =========================================================
 */
 
 SELECT * FROM personel;
 
 /*===============================================
		  TABLOYA VERI GIRISI - INSERT
===============================================*/
/*-------------------- NOT -------------------------
   Degerleri girerken dikkat edilmesi gerekenler;
1- Tabloyu olustururken hangi data type belirlediysek o
   datatype cinsinden veri girisi yapmaliyiz
2- String ifadeleri 'tek tirnak' icinde yaziyoruz.
3- DATE data type'da String gibi 'tek tirnak' icinde yazilir.
4- MySQL'in default tarih formati YYYY-MM-DD seklindedir.
--------------------------------------------------*/
/*-------------------- NOT -------------------------
 1- Bir field'a kaydedilecek verileri UNIQUE yapmak icin
   table olustururken field isminin yanina UNIQUE yaziyoruz.
 2- Bir field kaydedilecek verilerde NULL olmasin istiyorsak
   table olustururken field isminin yanina NOT NULL yaziyoruz.
--------------------------------------------------*/
/*
*************** SYNTAX ***************
INSERT INTO table_name (columns)
	VALUES (
	std_id ,
	std_name ,
	std_age 				 
	);
*/

/*  ========================  SORU-2 ========================
 Kitaplar tablosuna null deger olmadan coklu veri girisi saglayiniz.
    =========================================================
 */
 
 INSERT INTO table_books(book_id,book_name,aurtor_name,publish_year,category)
	Values(
    1,
    'Geleceklerim',
    'Mehmet ÖZDEMIR',
    '2024',
    'Roman'
    );
    
    SELECT * FROM table_books;
    
    
INSERT INTO table_books(book_id,book_name,aurtor_name,publish_year,category)
	Values	(2,'Suc ve Ceza','Dostoyevski','1866','Roman'),
			(3,'Bu Ulke','Cemil Meric','1974','Roman'),
			(4,'Nutuk','M.Kemal Ataturk','1927','Soylev');
    
    
SELECT * FROM table_books;

-- *NOT SQL kullanirken alacaginiz hatalarin %85 SYNTX hatalaridir

    /*  ========================  SORU-3 ========================
 Personel tablosuna null deger olmadan coklu veri girisi saglayiniz.
    =========================================================
 */
 
 insert into personel(personel_id,name,surname,birthday,position,price)
	values	(1,'mehmet','ozdemir','1995','tester',1444.2),
			(2,'mehmet ali','uysal','1995','tester',10000000.2);

select * from personel;
    


/*  ========================  SORU-4 ========================
 ogrenciler tablosuna null deger olmadan coklu veri girisi saglayiniz.
    =========================================================
 */
 
 insert into student(student_id,name,surname,bolum,kayit_year,ortalama_not)
	values	(1001,'mehmet','ozdemir','business administration',2017,4.0),
			(1002,'recep','alici','computer enginering',2005,3.7),
            (1003,'Ilgar','Ganbarov','electric engineering',2009,4.0);

select * from student;

/*  ========================  EXTRA ========================
 personel tablosuna id_isim ve soyisim degerleri girerek bir veri girisi yapiniz.
    =========================================================
 */
 
 insert into personel(personel_id,name,surname)
		values	(3,'Mehmet','Ozdemir'),
				(4,'Ali','Alci'),
                (5,'Ahmet','Agac');

select * from personel;


-- Eger Tablodaki sutunlarda bir constraint(Kisitlama) yok ise
-- tablodan sadece istedigimiz sutunlara veri gonderebiliriz



