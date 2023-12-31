# SpringTurkcell

Türkcell Bootcamp Çalışması

Northwind database kullanılarak yapılmış spring web uygulaması. Db modifiye edilmiş hali postgreSqlBackup klasörü
altındaki sql dosyasıdır.

8080 portu kullanmakta, swagger arayüzü maven'a eklenmiştir.

http://localhost:8080/swagger-ui/index.html

![Screenshot 2023-10-19 222428.png](images%2FScreenshot%202023-10-19%20222428.png)

# Proje içeriği:

Business, service interfaceleri ve bunları kullanan, iş kurallarını belirleyen manager classları bulunmakta.

Controllers, web isteklerini arayüzden alan ve iş kurallarını uygulayıp headerda belirtilen dile göre
türkçe veya ingilizce geridönüş yapan kontrolcülerin bulunduğu yapı.
Authorization yöntemi olarak Bearer Token sistemini kullanmakta

![Screenshot 2023-10-19 222551.png](images%2FScreenshot%202023-10-19%20222551.png)

Core, projedeki genel kuralların ve hata mesajlarının gönderen kodların tekrarlanmaması
için olusturulan sınıfların bulunduran classlar. JWT yapısı kullanılarak
authentication ve authorization yapısı kullanılmakta. Kullanıcalar
halihazırda kullanılan db üzerine kaydelmekte. Kullanıcılar birden fazla
role sahip olabilirler.

Entities, databasedeki taploları entityler olarak spring uygulmasına
bağlanmasını yapan classlar. Uygulamadaki tüm db işlemleri 
Data Transfer Object (dto) classları üzerinden yapılmakta.

Repositories, entitylerin db'den JPQL ve JpaRepository sorguları
ile istenilen yapıyı döndüren interfaceleri bulundurmakta.

Application, uygulamayı başlatan yapı, başlangıç ayarları core klosörünün içende bulunmakta.

Resources, application properties ve mesajların 
türkçe ve ingilizce karşıklarını bulundurmakta.

Kodun maven .jar paketi packaging klasörünün içindeki [spring.first-0.0.1-SNAPSHOT.jar](packaging%2Fspring.first-0.0.1-SNAPSHOT.jar)
dosyasıdır. Terminal komutu:

java -jar .\spring.first-0.0.1-SNAPSHOT.jar


# Grup çalışmasında bulunanlar:

Mehmet Emre Kahraman,
İmran Kaçan,
Muhammed Esat Memis,
Emre Canoğulları,
Bayram Ulutaş

# Eğitmen:
Halit Enes Kalaycı


