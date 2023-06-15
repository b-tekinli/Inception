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


***Docker Image:*** İçerisinde birçok farklı yapıyı barındıran yapılardır (OS, Application ve daha fazlası). Bir uygulamanın çalıştırılması için gereken tüm dosyaları, bağımlılıkları, çalıştırma komutlarını ve ortamı içeren bir pakettir. Bir Docker imajı, Dockerfile dosyası veya başka bir imaj temel alınarak oluşturulur. İmajlar, katmanlar halinde depolanır ve her katman, önceki bir katman üzerindeki değişiklikleri temsil eder. Docker image'lar, Docker containerlarının temel yapı taşıdır ve Docker komutlarıyla kullanılır. Docker Hub gibi merkezi imaj depolarında paylaşılabilir veya yerel bir Docker ortamında oluşturulabilir.


<br />      <br />


## Docker HUB Nedir?

Docker Hub'da, farklı uygulama türlerine, veritabanlarına, ağ servislerine ve diğer popüler yazılımlara yönelik binlerce hazır konteyner imajı bulunabilir. Bu imajlar, kullanıcıların uygulamalarını hızlı bir şekilde başlatmalarını ve çalıştırmalarını sağlar. Ayrıca kullanıcıların kendi konteyner imajlarını da yüklemelerini ve paylaşmalarını sağlar. Bu, yazılım geliştiricilerin kendi uygulamalarını ve yapılandırmalarını başkalarıyla paylaşmalarını ve kolayca dağıtmalarını sağlar. Docker Hub'da, imajların sürümlerini yönetmek, güncellemeleri takip etmek ve imajların popülerliğini izlemek gibi ek özellikler de bulunmaktadır. Mesela **node.js** çalıştırmak istediğimizi varsayalım. Bunun için ```docker run node``` komutuyla aslında çalıştırılabilir örnek oluşturmuş olur buna da container denir. ```docker pull``` komutuyla da imajları bilgisayarımıza indirmiş oluruz. Mesela ```docker pull ubuntu``` komutunu yazdığımızda ubuntu'yu bilgisayarımızda localde docker host içinde arayacaktır ama bulamazsa docker hub üzerinden imajlarını çekecektir. [Docker HUB](https://hub.docker.com/)


<br />      <br />


## Komutlar

- ```docker ps```  :arrow_right: ayakta olan tüm containerları gösterir.
- ```docker ps -a```  :arrow_right: geçmişe yönelik çalıştırılmış olan containerları listeler. (bunun yerine ```docker ps --all``` komutu da kullanılabilir.)
- ```docker container ls```  :arrow_right: aktif olan containerları listeler.
- ```docker container ls -a```  :arrow_right: aktif olmayan containerları listeler.
- ```docker rm container_name```  :arrow_right: aktif olmayan containerları temizler. (container adı yerine container id'si de kullanılabilir.) 
- ```docker images```   :arrow_right: latest tagı ile işaretlenmiş en son sürümdeki imajları listeler.
- ```docker rmi containerName```     :arrow_right: containerName adındaki images'ı siler.
- ```docker container logs container_id```  :arrow_right: var olan logları gösterir.
- ```docker inspect container_id/container_name```  :arrow_right: belirli bir docker containerının veya imajın ayrıntılı bilgilerini görüntüler.
- ```docker rmi container_name```   :arrow_right: container kaldırmak için kullanılır.
- ```docker container prune```     :arrow_right: stop edilmiş containerların hepsini siler.

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


## Docker Network Türleri

![docker host](https://miro.medium.com/v2/resize:fit:1400/1*WKiEgPXO8XXppoqgr7ZVQA.png)

Docker'da, default olarak sunulan bazı network türleri bulunurken aynı zamanda kullanıcılar tarafından tanımlanabilen özelleştirilmiş ağ türleri de oluşturulabilir. Bunlar 2'ye ayrılır;

1) Default Network Türleri
- Bridge Network (Köprü Ağı): Docker'ın default ağ türüdür. Containerlar, aynı bridge networke bağlanarak birbirleriyle iletişim kurabilirler. Her container için benzersiz bir IP adresi atanır ve Docker Daemon tarafından otomatik olarak bir köprü ağı oluşturulur.
- Host Network (Ana Bilgisayar Ağı): Containerların Docker host networkünün ağında çalıştığı bir ağ türüdür. Containerlar, kendi ayrı bir ağının olmadığı ve Docker host networkünün ağ arayüzünü doğrudan kullanabildiği bir yapıdır.
- None Network: None ağı, containerın herhangi bir ağa bağlanmadığı bir ağ türüdür. Containerın kendi ağ arayüzü olmayacak ve dış dünyayla doğrudan iletişim kuramayacaktır.

2) Kullanıcı Tanımlı Network Türleri
Docker, kullanıcıların kendi ağ türlerini tanımlamalarına olanak tanır. Kullanıcı tanımlı ağlar, Docker-compose dosyaları veya Docker CLI aracılığıyla oluşturulabilir. Kullanıcılar, ağın özelliklerini, yapılandırmasını ve davranışını belirleyebilir.
- Overlay Network (Bindirme Ağı): Overlay ağı, Docker Swarm gibi dağıtık uygulama ortamlarında kullanılan bir ağ türüdür. Farklı Docker host networkündeki containerlar arasında iletişimi sağlar.
- Macvlan Network: Macvlan ağı, containerların fiziksel ağa doğrudan bağlanmasını sağlayan bir ağ türüdür. Containerlar, fiziksel ağdaki diğer cihazlar gibi davranır ve Docker host networkünün fiziksel ağına doğrudan bağlanır.
- Custom Bridge Network (Özel Köprü Ağı): Kullanıcılar, ihtiyaçlarına göre özel köprü ağları oluşturabilirler. Özel köprü ağları, belirli bir container grubu arasında izole iletişim sağlamak veya farklı ağ yapılandırmaları için kullanılabilir.

- ```docker network ls```     :arrow_right: networkleri listelemeye yarar.
- ```docker network rm networkName```     :arrow_right: networkName adındaki network'ü kaldırmaya yarar.


<br />      <br />


## Dockerfile

Docker containerlarını oluşturmak için kullanılan bir metin dosyasıdır. Bir proje veya uygulamanın nasıl bir Docker imajına dönüştürüleceğini tanımlayan adımları içerir. Dockerfile'da kullanılan komutlar, Docker imajının yapılandırmasını, bağımlılıklarını ve run-time davranışlarını belirler. [Dockerfile](https://github.com/b-tekinli/Inception/blob/main/srcs/requirements/mariadb/Dockerfile)

1. `FROM` : Docker imajının temelini oluşturan başlangıç noktasını belirtir. Docker imajının hangi base'e (tabana) inşa edileceğini belirler. Örneğin, 

```dockerfile
FROM alpine:3.13
```
komutu, imajın temel olarak Alpine Linux 3.13 sürümünü kullanacağını belirtir. 

    - `alpine:3.13`, Docker Hub üzerinde bulunan ve Alpine Linux adı verilen hafif bir Linux dağıtımının 3.13 sürümünü temsil eder. Alpine Linux, minimal boyutta bir Linux dağıtımıdır ve Docker containerlarında yaygın olarak kullanılır. Alpine Linux, küçük boyutu, hızlı başlatma süreleri ve güvenlik odaklı yapısıyla öne çıkar. Bu imaj üzerinde diğer komutlar ve yapılandırmalar ile birlikte bir Docker imajı oluşturulabilir.


2. ```RUN``` : Docker imajının içinde çalışacak komutları çalıştırır. Bu komut, komut satırında çalıştırılacak herhangi bir işlemi gerçekleştirmek için kullanılır. Örneğin,

```dockerfile
RUN apk update
```
komutu, imaj içinde paket yöneticisini günceller.


3. ```COPY``` : Docker imajına dosya veya dizinleri kopyalamak için kullanılır. Belirtilen kaynak dosyasını Docker imajına kopyalamayı sağlar.

```dockerfile
COPY conf/index.html /tmp/index.html
```
komutu, `index.html` dosyası Docker imajına kopyalanır ve `/tmp/index.html` konumuna yerleştirilir. Bu kopyalama işlemi, Docker imajının yapılandırması sırasında gerçekleşir ve imajın içine dosya eklenir. Bu dosya, Docker containerı çalıştığında `/tmp/index.html` konumunda bulunabilir ve kullanılabilir hale gelir.


4. ```WORKDIR``` : Docker imajında çalışma dizinini belirtir. Sonraki komutların çalışacağı default çalışma dizinini belirler. Örneğin,

```dockerfile
WORKDIR /var/www/html/wordpress
```
komutu ile çalışma dizini `/var/www/html/wordpress` olarak ayarlar.


5. ```CMD ve ENTRYPOINT``` : Docker konteynerinin başlatılması için çalışacak komut veya komut dizisini belirtir. CMD komutu, varsayılan olarak çalışacak komut veya parametreleri belirtirken, ENTRYPOINT komutu her zaman çalışacak olan komut veya komut dizisini belirtir. Örneğin,

```dockerfile
ENTRYPOINT [ "sh", "/tmp/configure.sh" ]
```
komutu shell ile `/tmp/configure.sh` çalıştırır.


6. ```EXPOSE``` : Docker imajının hangi ağ portlarını dinleyeceğini belirtir. Containerın dış dünyaya hangi portlardan erişileceğini belirtir.
```dockerfile
EXPOSE 3000
```
komutu 3000 portunu dinler.


<br />      <br />


## CMD ve ENTRYPOINT Arasındaki Fark Nedir?

Docker containerının nasıl başlatılacağını belirlemek için Dockerfile içinde kullanılan 2 farklı komuttur. 

`CMD` komutu,  Docker containerı başlatıldığında default olarak çalışacak komut veya parametreleri belirtmek için kullanılır. Bir Dockerfile'da yalnızca bir tane CMD komutu olabilir. Eğer birden fazla CMD komutu bulunuyorsa yalnızca en son tanımlanan CMD komutu geçerli olur. Kullanıcının başlangıç komutlarını ve argümanlarını geçersiz kılabilmesine olanak sağlar. Örneğin, bir CMD komutu şu şekilde tanımlanabilir:

```dockerfile
CMD ["node", "app.js"]
```
Bu komut Docker containerı çalıştırıldığında `node app.js` komutunu çalıştırır. 

`ENTRYPOINT` komutu, Docker containerı başlatıldığında her zaman çalıştırılacak olan bir komut veya komut dizisini belirtmek için kullanılır. Yalnızca bir kez tanımlanabilir. Eğer birden fazla tanımlanırsa yalnızca en son tanımlanan geçerli olur. Kullanıcının başlangıç komutlarını geçersiz kılmaz, ancak kullanıcı tarafından Docker containerını başlatırken geçilen komutlar ENTRYPOINT komutu tarafından çalıştırılan komutların veya komut dizisinin argümanları olarak işlenir. Örneğin:

```dockerfile
ENTRYPOINT ["echo", "Hello"]
```

Bu komut Docker containerı çalıştırıldığında `echo Hello` komutunu çalıştırır. Containerı başlatırken ek komutlar veya argümanlar geçilebilir bu geçilen komutlar `ENTRYPOINT` komutunun argümanları olarak işlenecektir.

Özetle CMD komutu, default olarak çalışacak komutları belirtir ve geçersiz kılabilirken, ENTRYPOINT komutu ise her zaman çalışacak komutları belirtir ve geçilen komutları argüman olarak alır.


<br />     <br />


## Docker Compose

![docker compose](https://intellipaat.com/blog/wp-content/uploads/2022/12/image-16.png)

Birden fazla containerın tek bir yapılandırma dosyası aracılığıyla yönetmek ve çalıştırmak için kullanılan bir araçtır. Docker Compose, YAML formatındaki bir dosya olan "docker-compose.yml" dosyasını kullanır. Bu dosyada, Docker containerlarının yapılandırmaları, ilişkileri, ağ bağlantıları, ortam değişkenleri, port eşlemeleri vb. tanımlanır. Docker Compose dosyası, birden çok servis veya containerın yapılandırmasını tek bir dosyada toplamak için kullanılır.
`docker-compose` komutuyla çalıştırılır. Bu komut Docker Compose dosyasının bulunduğu dizinde çalıştırıldığında dosyadaki containerların başlatılması, durdurulması, yeniden oluşturulması, güncellenmesi gibi işlemler Docker Compose tarafından yönetilir. Farklı containerlar arasında bağımlılıkların tanımlanması, containerların aynı ağda çalışması, kaynak paylaşımı gibi kolaylıklar sağlar. Birden çok containerın aynı zamanda başlatılması ve durdurulması işlemleri otomatik olarak gerçekleştirilebilir.


### `docker-compose.yml` Dosyası

Docker Compose tarafından kullanılan bir yapılandırma dosyasıdır. [docker-compose.yml](https://github.com/b-tekinli/Inception/blob/main/srcs/docker-compose.yml)

1. `version` : docker-compose.yml dosyasının sürümünü belirtir. Örneğin,

```docker-compose.yml
version: 3
```


2. `services` : Docker containerlarının yapılandırmasını tanımlayan bölümdür. Burada her bir servis veya container için ayrı bir blok bulunur. Servisler, adlarıyla tanımlanır ve her bir servis için ayrıca komutlar, bağımlılıklar, port eşlemeleri, ortam değişkenleri vb. belirtilebilir. Örneğin,

```docker-compose.yml
services:
  nginx:
    build: requirements/nginx/
    container_name: nginx
    image: nginx
    ports:
      - 443:443
    volumes:
      - wp:/var/www/html
    depends_on:
      - wordpress
    networks:
      - asgard
    restart: always
```


3. `image` : Bir servis için kullanılacak Docker imajını belirtir. Bu, Docker Hub'daki bir imaj adı veya özel bir Docker imajı olabilir. Örneğin,

```docker-compose.yml
services:
    wordpress:
        image: wordpress
```


4. `build` : Bir servis için Dockerfile'ın konumunu belirtir. Bu, local bir Dockerfile veya bir remote Git reposu olabilir. Dockerfile belirtilirse, Docker imajı oluşturulurken bu Dockerfile kullanılır. Örneğin,

```docker-compose.yml
services:
    mariadb:
        build: requirements/mariadb/
```


5. `ports` : Bir servisin container hosttaki bir portla eşlemek için kullanılır. host-portu:container-portu şeklinde belirtilir. Örneğin,

```docker-compose.yml
services:
    nginx:
        ports:
          - 443:443
```


6. `volumes` : Bir servisin conatiner içindeki bir dizini veya dosyayı hosttaki bir dizinle paylaşmak için kullanılır. host-dizini:container-dizini şeklinde belirtilir.

```docker-compose.yml
services:
    wordpress:
        volumes:
          - wp:/var/www/html
```


7. `environment` : Bir servisin çalışma zamanında kullanacağı ortam değişkenlerini belirtir.

```docker-compose.yml
services:
    mariadb:
        environment:
          MYSQL_ROOT_PWD:   ${MYSQL_ROOT_PWD}
          WP_DATABASE_NAME: ${WP_DATABASE_NAME}
          WP_DATABASE_USR:  ${WP_DATABASE_USR}
          WP_DATABASE_PWD:  ${WP_DATABASE_PWD}
```


8. `depends_on` : Bir servisin başlamadan önce bağımlı olduğu diğer servisleri belirtir. Bu şekilde, servislerin sıralı bir şekilde başlatılması sağlanabilir.

```docker-compose.yml
services:
    wordpress:
        depends_on:
          - mariadb
```


9. `networks` : Docker ağlarıyla ilgili yapılandırmaları belirtir. Örneğin, özel bir ağ oluşturmak veya mevcut bir ağa bağlanmak için kullanılabilir.

```docker-compose.yml
services:
    nginx:
        networks:
          - asgard
```


<br />     <br />


### Kaynak
[kablosuzkedi Docker Playlist / Gökhan Kandemir](https://youtube.com/playlist?list=PL_f2F0Oyaj4_xkCDqnRWp4p5ypjDeC0kO)
