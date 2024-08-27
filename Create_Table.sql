Use sys;


-- Uzerinde calistigimiz SQL File in hangi Schema'ya ait oldugunu belirtmek icin
-- Use sys; komutunu kullandik


-- Bu bir yorum satiridir

/*
Bu bir yorum blogudur
*/


-- *NOT! MySQL workbankch'te kodlari yazmamiz yeterli degildir 
-- Mutlaka o kodlari calistirmamiz gerekir


/*=============================de==================
		TABLO OLUSTURMA (CRUD - Create)
===============================================*/


/*
"CREATE TABLE" bir veritabanında yeni bir tablo oluşturmak için kullanılan
bir SQL (Structured Query Language) ifadesidir. Bu komut, tablonun yapısını
tanımlar; yani tabloda bulunacak sütunların isimlerini, veri tiplerini ve diğer
özelliklerini (örneğin, Primary Key, Unique, Not Null  vb.) belirtir.
"CREATE TABLE" komutunu kullanırken, her bir sütun için uygun veri tipini ve
boyutunu belirlemek ve gerektiğinde sütunlara kısıtlamalar eklemek önemlidir.
Bu işlem, veri bütünlüğünü korumak ve veritabanı işlemlerinin doğru şekilde
çalışmasını sağlamak için kritik öneme sahiptir.
*/

/*
*************** SYNTAX ***************
CREATE TABLE tablo_adi
(
    sütun1 veri_tipi1 ,
    sütun2 veri_tipi2 ,
    ...
    sütunN veri_tipiN ,
);
*/

/*
  ========================  SORU-1 ========================
 Icerisinde kitap id, kitap adi, yazar adi, yayin yili ve kategori columnlari
 olan bir kitaplar tablosu create ediniz.
    =========================================================
 */
 
 CREATE TABLE table_books
 (
 book_id INT,
 book_name VARCHAR(50),
 aurtor_name VARCHAR(30),
 publish_year CHAR(4),
 category VARCHAR(20)
);

-- SQL isimlendirme yapilirken snake_case kullanilir
-- SQL yaziminda buyuk kucuk harf duyarsizdir
-- Ancak Database icin genel kullanim kurali Komut ifadelerinin buyuk harfle yazilmasidir

 CREATE TABLE table_books(book_id INT,book_name VARCHAR(50),aurtor_name VARCHAR(30),publish_year CHAR(4),category VARCHAR(20));

-- Bir baska SQL teamulu olarak her komut farkli satirlara gelecek sekilde yazilmalidir
 
 
 /*  ========================  SORU-2 ========================
 Icerisinde personel id, adi, soyadi, dogum tarihi, pozisyon, maas columnlari
 olan bir personel tablosu create ediniz.
    =========================================================
 */
 
 CREATE TABLE personel
 (
	personel_id INT,
    name VARCHAR(30),
    surname VARCHAR(20),
    birthday YEAR,
    position VARCHAR(20),
    price DOUBLE(10,2)
 );
 
 /*  ========================  SORU-3 ========================
 Icerisinde ogrenci id, adi, soyadi, bolum, kayit yili, ortalama not
 columnlari olan bir ogrenciler tablo create ediniz.
    =========================================================
 */
 
 CREATE TABLE student
 (
	student_id INT,
    name VARCHAR(30),
    surname VARCHAR(20),
    bolum VARCHAR(30),
    kayit_year YEAR,
    ortalama_not DOUBLE
 );
 