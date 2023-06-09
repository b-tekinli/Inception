# Inception

Bu proje Docker kullanarak "System Administration (Sistem Yönetimi)" hakkındaki bilgilerimizi artırmayı hedeflemektedir.
Birkaç tane Docker image'i sanallaştıracağız, bu işlemi gerçekleştirmek için kendi sanal makinemizi kullanacağız.


<br />      <br />


## Docker Nedir?

![Docker](https://www.underworldcode.org/content/images/size/w600/2020/08/Moby-logo.png)

Docker, bir uygulamanın çalıştırılması için gereken tüm ortamı yani yazılım kütüphaneleri, bağımlılıklar, yapılandırma vb. içeren bir sanal konteyner teknolojisidir. Bu konteynerler, uygulamaların farklı ortamlarda çalıştırılmasını ve uygulamanın doğru şekilde çalışması için ihtiyaç duyduğu her şeyi sağlar. Docker, uygulamaları hızlı ve tekrarlanabilir bir şekilde paketleyip dağıtmak için kullanılan bir konteynerizasyon platformudur. Konteynerler, izole bir ortamda çalışabilen uygulama ve bağımlılıklarını içerir. Docker sayesinde uygulamalar, herhangi bir ortamda tutarlı bir şekilde çalışabilir, hızlı dağıtılabilir, ölçeklenebilir ve izole edilebilir. Bu, yazılım geliştirme ve dağıtım süreçlerini kolaylaştırır ve sorunsuz çalışmasını sağlar.

- Neden Docker Kullanırız?

    1. Hızlı dağıtım: Docker, uygulamaları hızlı bir şekilde dağıtmanıza olanak tanır. Konteynerler, tüm bağımlılıkları ve konfigürasyonları içerdikleri için, bir kez yapılandırıldıktan sonra başka bir ortamda hızla çalıştırılabilirler. Bu, hızlı bir geliştirme süreci ve hızlı dağıtım anlamına gelir.

    2. İzolasyon: Docker konteynerleri, uygulama ve bağımlılıklarını izole ederek çalıştırır. Bu, her konteynerin kendi izole edilmiş ortamına sahip olduğu anlamına gelir. Bir konteynerde yapılan değişiklikler, diğer konteynerleri etkilemez. Bu, daha güvenli ve kararlı bir uygulama çalışma ortamı sağlar.

    3. Ölçeklenebilirlik: Docker, uygulamaları kolayca ölçeklendirmenizi sağlar. İhtiyaçlarınıza göre yeni konteynerler oluşturabilir ve böylece artan talepleri karşılayabilirsiniz. Bu, yüksek kullanıcı trafiği durumunda uygulamanızı ölçeklendirmek için esneklik sağlar.


<br />      <br />


## Container Nedir?

![Container](https://beaglesecurity.com/blog/images/docker_840.png)

Container, kendilerine ait processleri, servisleri, networkleri olan aynı işletim sistemi veya VM üzerinde çalışan izole edilmiş ortamlardır ve işletim sisteminin kernel'ını kullanırlar. Konteyner teknolojisi, uygulamaları ve tüm gerekli bileşenleri bir araya getirerek uygulamaların farklı ortamlarda sorunsuz bir şekilde çalışmasını sağlar. Bununla birlikte konteynerler, aynı işletim sistemi çekirdeğini paylaşan ancak izole bir çevre sağlayan hafif ve taşınabilir bir yapıya sahiptir. Aslında yeni bir teknoloji değildir ve 3 tane container çeşidi vardır. Bunlar;
- LXC
- LXD
- LXCFS

Docker ise **LXC** container türünü kullanır. 


**LXC Container Türü;**

Linux tabanlı bir işletim sisteminde çalışan konteyner sanallaştırma teknolojisidir. LXC konteynerleri, sistem kaynaklarının izolasyonu ve paylaşımıyla hafif ve verimlidir. Aynı çekirdek üzerinde çalıştıkları için sanal makinelerden daha düşük bellek kullanımı ve daha yüksek performans sunarlar. Bu nedenle LXC konteynerleri, uygulamaların hızlı bir şekilde başlatılmasını, ölçeklenmesini ve yönetilmesini sağlar. LXC konteynerleri, farklı uygulama senaryolarında kullanılabilir. Örneğin bir web sunucusu, veritabanı sunucusu gibi belirli bir uygulamayı çalıştırmak için kullanılabilir. 

<br />      <br />


## VM ile Container Arasındaki Farklar Nedir?

![Container VS VM](https://github.com/b-tekinli/Inception/blob/main/img/containervsvm.png)

- Her bir VM'in kendisine ait bir işletim sistemi var ama containerlarda yok. Çünkü containerlar yüklü oldukları işletim sisteminin çekirdeğini kullanır. 
- Container düşük RAM kullanımı yaparken VM yüksek RAM kullanımı yapar.
- Container düşük CPU kullanımı yaparken VM yüksek CPU kullanımı yapar.
- Container daha az alana ihtiyaç duyarken VM daha fazla alana ihtiyaç duyar.


<br />      <br />


## Dockerfile ve Docker Image Nedir?

![Docker Image](https://github.com/b-tekinli/Inception/blob/main/img/dockerimage.png)


***Dockerfile:*** Dockerfile, Docker imajının nasıl oluşturulacağını ve yapılandırılacağını belirten metin tabanlı bir dosyadır. Uygulamanın çalışması için gereken adımları ve komutları içerir. Dockerfile, imajın yapılandırılması, bağımlılıkların yüklenmesi, dosyaların kopyalanması, çalışma komutlarının belirlenmesi gibi adımları tanımlar. Bu dosya üzerinde yapılan değişiklikler, imajın içeriğini etkiler.


***Docker Image:*** İçerisinde birçok farklı yapıyı barındıran yapılardır (OS, Application ve daha fazlası). Bir uygulamanın çalıştırılması için gereken tüm dosyaları, bağımlılıkları, çalıştırma komutlarını ve ortamı içeren bir pakettir. Bir Docker imajı, Dockerfile dosyası veya başka bir imaj temel alınarak oluşturulur. İmajlar, katmanlar halinde depolanır ve her katman, önceki bir katman üzerindeki değişiklikleri temsil eder. Docker image'lar, Docker konteynerlerinin temel yapı taşıdır ve Docker komutlarıyla kullanılır. Docker Hub gibi merkezi imaj depolarında paylaşılabilir veya yerel bir Docker ortamında oluşturulabilir. [Docker HUB](https://hub.docker.com/)


<br />      <br />


## Docker HUB Nedir?

Docker Hub'da, farklı uygulama türlerine, veritabanlarına, ağ servislerine ve diğer popüler yazılımlara yönelik binlerce hazır konteyner imajı bulunabilir. Bu imajlar, kullanıcıların uygulamalarını hızlı bir şekilde başlatmalarını ve çalıştırmalarını sağlar. Ayrıca kullanıcıların kendi konteyner imajlarını da yüklemelerini ve paylaşmalarını sağlar. Bu, yazılım geliştiricilerin kendi uygulamalarını ve yapılandırmalarını başkalarıyla paylaşmalarını ve kolayca dağıtmalarını sağlar. Docker Hub'da, imajların sürümlerini yönetmek, güncellemeleri takip etmek ve imajların popülerliğini izlemek gibi ek özellikler de bulunmaktadır. Mesela **node.js** çalıştırmak istediğimizi varsayalım. Bunun için ```docker run node``` komutuyla aslında çalıştırılabilir örnek oluşturmuş olur buna da container denir. ```docker pull``` komutuyla da imajları bilgisayarımıza indirmiş oluruz. Mesela ```docker pull ubuntu``` komutunu yazdığımızda ubuntu'yu bilgisayarımızda localde docker host içinde arayacaktır ama bulamazsa docker hub üzerinden imajlarını çekecektir.


<br />      <br />


## Komutlar

- ```docker ps```  :arrow_right: ayakta olan tüm containerları gösterir.
- ```docker ps -a```  :arrow_right: geçmişe yönelik çalıştırılmış olan containerları listeler. (bunun yerine ```docker ps --all``` komutu da kullanılabilir.)
- ```docker container ls```  :arrow_right: aktif olan containerları listeler.
- ```docker container ls -a```  :arrow_right: aktif olmayan containerları listeler.
- ```docker rm container_name```  :arrow_right: aktif olmayan containerları temizler. (container adı yerine container id'si de kullanılabilir.) 
- ```docker images```   :arrow_right: latest tagı ile işaretlenmiş en son sürümdeki imajları listeler.
- ```docker container logs container_id```  :arrow_right: var olan logları gösterir.
- ```docker inspect container_id/container_name```  :arrow_right: belirli bir docker containerının veya imajın ayrıntılı bilgilerini görüntüler.


<br />      <br />


## Port Mapping (Port Yönlendirme)

![Port Mapping](https://iximiuz.com/docker-publish-container-ports/docker-engine-port-publishing-2000-opt.png)

Containerlar docker'ın kendine ait olan networkü olan docker host (ana bilgisayar) üzerinde çalışır. Her container kendine ait bir port üzerinden servis edilir. Port mapping, ağ cihazları arasında iletişim sağlamak için kullanılan bir yönlendirme tekniğidir. IP tabanlı ağlarda, her bir cihazın bir IP adresi ve her bir uygulamanın da bir port numarası vardır. Port mapping, belirli bir port numarasına gelen trafiği ağdaki belirli bir cihaza veya hizmete yönlendirmek için kullanılır. 

Port mapping, docker containerlarının dış dünyayla iletişim kurmasını sağlamak için kullanılan bir yöntemdir. Bir docker containerı çalıştırıldığında container içinde çalışan uygulama bir veya daha fazla ağ portunu kullanabilir. Ancak bu portlara doğrudan erişim containerın izole edilmiş yapısı nedeniyle sınırlıdır.

Port mapping  işlemi, bir docker containerının içinde çalışan uygulamanın belirli bir portunu docker hostunun bir portuna bağlamayı sağlar. Bu, dış dünyadan docker containerına erişimi mümkün kılar. Örneğin, bir web sunucusunu çalıştıran bir docker containerında, containerın içindeki 80 numaralı portu docker hostunun 8080 numaralı portuna yönlendirebiliriz. Böylece docker hostunun 8080 numaralı portuna gelen istekler docker containerında çalışan web sunucusuna iletilir.

```docker run -p 8080:80 nginx```

Aynı zamanda hangi portlara yönlendirebileceğini ve hangi hostla eşleştirileceğini docker komut satırı veya docker-compose dosyası üzerinden yapılandırılabiliriz.


<br />      <br />


## Volume Mapping

![Volume Mapping](https://miro.medium.com/v2/resize:fit:1200/1*xONk464vW-xNYxzE_HsSkw.png)

Docker Host üzerinde container'lar **stateless** olarak çalışırlar. Yani herhangi bir bilgi içerisinde kayıt edilmez. Container durdurulduğunda ya da yeniden başlatıldığında kayıt ettiğimiz bilgiler sonsuza kadar silinir yani veriler kaybolabilir. Ancak bazı durumlarda kalıcı veri saklama veya veri paylaşımı gerekebilir. İşte bu noktada Docker Volume Mapping devreye girer.

Docker containerının belirli bir dosya veya dizinini docker hostundaki bir dosya veya dizine bağlar. Böylece containerın içindeki veriler docker hostunun dosya sistemine yazılır ve kalıcı olarak saklanır. Ayrıca birden fazla docker containerı arasında veri paylaşımını da mümkün kılar.

Port Mapping gibi docker-compose dosyasını hangi dosyanın bağlanacağını belirtmek için yapılandırabiliriz. Örneğin, bir veritabanı containerı için veri saklamak amacıyla containerın içindeki "/var/lib/mysql" dizini docker ana bilgisayarının "/mydata" dizinine bağlanabilir.


<br />      <br />


### Kaynak
[kablosuzkedi Docker Playlist / Gökhan Kandemir](https://youtube.com/playlist?list=PL_f2F0Oyaj4_xkCDqnRWp4p5ypjDeC0kO)
