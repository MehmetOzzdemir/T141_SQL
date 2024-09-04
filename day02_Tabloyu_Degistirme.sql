USE sys;

/*===============================================
		  TABLOYU DEGISTIRME - ALTER TABLE
===============================================*/
/*ALTER TABLE ifadesi, SQL'de mevcut bir veritabanı tablosunun
yapısını değiştirmek için kullanılır. Bu komut sayesinde, tabloya
 yeni sütunlar ekleyebilir, mevcut sütunları değiştirebilir veya silebilir,
 sütunların veri türlerini güncelleyebilir, sütunlara kısıtlamalar (constraints)
 ekleyebilir veya mevcut kısıtlamaları kaldırabilirsiniz.
 */
 
/*===============================================
		   ALTER TABLE - Sutun Ekleme
===============================================*/
/*
*************** SYNTAX ***************
ALTER TABLE tablo_adi
ADD sütun_adi + dataType;
*/


/*  ========================  SORU-1 ========================
 Kitaplar tablosuna sayfa sayisi column'i ekleyiniz.
    =========================================================
 */
 
 -- before 
 
 select * from table_books;
 
 
 ALTER table table_books
 ADD sayfa_sayisi int;
 
 -- after 
 select * from table_books;
 
 
/*  ========================  SORU-2 ========================
 Kitaplar tablosuna fiyat column'i ekleyiniz.
    =========================================================
 */
 
 alter table table_books
 add fiyat double;
 select * from table_books;
 
 /*  ========================  SORU-3 ========================
       Personel tablosuna sehir column'i ekleyiniz
    =========================================================
 */
 alter table personel
 add city varchar(20);
 select * from personel;
 
 /*===============================================
ALTER TABLE - Sütunun Veri Türünü Değiştirme
===============================================*/
/*
*************** SYNTAX ***************
ALTER TABLE tablo_adi
MODIFY COLUMN  sütun_adi + yeniDataType;
*/

/*  ========================  SORU-4 ========================
  Ogrenciler tablosundaki adi column'inin data type'ini degistiriniz .
    =========================================================*/
    
Alter table student
modify column name char(20);
select * from student;


/*  ========================  SORU-5 ========================
 Ogrenciler tablosundaki kayit yili column'inin data type'ini degistiriniz .
    =========================================================
 */
 alter table student
 modify column kayit_year int;
 select * from student;
 
  alter table student
  modify column kayit_year year;
  
  
  /*===============================================
		ALTER TABLE - Sütun Adını Değiştirme
===============================================*/
/*

/*
*************** SYNTAX ***************
ALTER TABLE tablo_adi
RENAME COLUMN  Eskisütun_adi TO yeniSutunadi;
*/


/*  ========================  SORU-6 ========================
 Personel tablosundaki pozisyon column'in adini sorumluluk olarak degistiriniz.
    =========================================================
 */
 
 
 Alter table personel
 rename column position TO sorumluluk;
 
 
 /*  ========================  SORU-7 ========================
 Ogrenciler tablosundaki adi column'in adini isim olarak degistiriniz.
    =========================================================
 */
 
 -- before
 
 select * from student;
 
 alter table student
 rename column name 
 to isim;
 
 
 -- after
 
 select * from student;
 
 /*  ========================  SORU-8 ========================
 Ogrenciler tablosundaki soyadi column'in adini lastname olarak degistiriniz.
    =========================================================
 */
 
ALTER TABLE student
rename column surname 
 to lastname;
 
 /*===============================================
      ALTER TABLE - Sütun Silme
===============================================*/

/*
*************** SYNTAX ***************
ALTER TABLE tablo_adi
DROP COLUMN  sütun_adi;
*/

/*  ========================  SORU-9 ========================
 Ogrenciler tablosundaki ogrenci id column'ini siliniz.
    =========================================================
 */
 
 alter table student
 drop column student_id;
 select * from student;
 
 /*  ========================  SORU-10 ========================
 Kitaplar tablosundaki sayfa sayisi column'ini siliniz.
    =========================================================
 */
 
 -- before
 
 select * from table_books;
 alter table table_books
 drop column sayfa_sayisi;
 
 -- aftet
 select * from table_books;
 
 /*  ========================  SORU-11 ========================
 Personel tablosundaki sehir column'ini siliniz.
    =========================================================
 */
 
alter table personel
drop column city;
select * from personel;

/*===============================================
        TABLOYU SILME - DROP TABLE
===============================================*/

/*DROP TABLE ifadesi, SQL'de veritabanı nesnelerini (tablo, görünüm, dizin, vb.)
 kalıcı olarak silmek için kullanılır. DROP komutu, belirtilen nesneyi ve o nesneyle
 ilişkili tüm verileri veritabanından kaldırır. Bu işlem geri alınamaz,
 yani DROP komutu kullanıldığında, tablo ve içeriği kalıcı olarak silinir
 ve geri getirilemez.
 */
 
 /*
 NOT!
 DROP ifadesi ile sadece tablolari degil veritabanini da silebileceginiz icin
 bu komutu kullanirken cok dikkatli olmalisiniz....
 */
 
 
 
 /*
*************** SYNTAX ***************
DROP TABLE tablo_adi;
*/

/*  ========================  SORU-2 ========================
      Personel tablosunu siliniz.
    =========================================================
 */
 
 drop table personel;
 
 create schema t141;
 drop schema t141;
 drop table table_books;
 
 
 
 /*===============================================
    TABLO İÇERİĞİNİ SİLME - TRUNCATE TABLE
===============================================*/

/*
NOT!
TRUNCATE TABLE komutunun etkileri kalıcıdır ve geri alınamaz, bu nedenle bu komutu
 kullanmadan önce verilerin yedeklenmesi önemlidir. Ayrıca, tüm verilerin silineceğini
 ve bu işlemin geri alınamayacağını unutmamak önemlidir.
 */

/*
*************** SYNTAX ***************
TRUNCATE TABLE tablo_adi;
*/

/*  ========================  SORU-1 ========================
      Kitaplar tablosunu create edin sonra truncate kullanarak siliniz.
    =========================================================
 */
 
 create table books(
 book_id int,
 book_name varchar(50),
 aurthor_name varchar(30),
 publish_year int
 );
 
 insert into books(book_id,book_name,aurthor_name,publish_year)
		values	(1,'bootcamp','mehmet',2024),
				(2,'ahene','ali',2023);
 
 select * from books;
 
 truncate table books;
 
 
 



  
  