# Inception

Bu proje Docker kullanarak "System Administration (Sistem Yönetimi)" hakkındaki bilgilerimizi artırmayı hedeflemektedir.
Birkaç tane Docker image'i sanallaştıracağız, bu işlemi gerçekleştirmek için kendi sanal makinemizi kullanacağız.


<br />      <br />


![Docker](https://www.underworldcode.org/content/images/size/w600/2020/08/Moby-logo.png)

## Docker Nedir?

Docker, bir uygulamanın çalıştırılması için gereken tüm ortamı yani yazılım kütüphaneleri, bağımlılıklar, yapılandırma vb. içeren bir sanal konteyner teknolojisidir. Bu konteynerler, uygulamaların farklı ortamlarda çalıştırılmasını ve uygulamanın doğru şekilde çalışması için ihtiyaç duyduğu her şeyi sağlar. Docker, uygulamaları hızlı ve tekrarlanabilir bir şekilde paketleyip dağıtmak için kullanılan bir konteynerizasyon platformudur. Konteynerler, izole bir ortamda çalışabilen uygulama ve bağımlılıklarını içerir. Docker sayesinde uygulamalar, herhangi bir ortamda tutarlı bir şekilde çalışabilir, hızlı dağıtılabilir, ölçeklenebilir ve izole edilebilir. Bu, yazılım geliştirme ve dağıtım süreçlerini kolaylaştırır ve sorunsuz çalışmasını sağlar.

- Neden Docker Kullanırız?

    1. Hızlı dağıtım: Docker, uygulamaları hızlı bir şekilde dağıtmanıza olanak tanır. Konteynerler, tüm bağımlılıkları ve konfigürasyonları içerdikleri için, bir kez yapılandırıldıktan sonra başka bir ortamda hızla çalıştırılabilirler. Bu, hızlı bir geliştirme süreci ve hızlı dağıtım anlamına gelir.

    2. İzolasyon: Docker konteynerleri, uygulama ve bağımlılıklarını izole ederek çalıştırır. Bu, her konteynerin kendi izole edilmiş ortamına sahip olduğu anlamına gelir. Bir konteynerde yapılan değişiklikler, diğer konteynerleri etkilemez. Bu, daha güvenli ve kararlı bir uygulama çalışma ortamı sağlar.

    3. Ölçeklenebilirlik: Docker, uygulamaları kolayca ölçeklendirmenizi sağlar. İhtiyaçlarınıza göre yeni konteynerler oluşturabilir ve böylece artan talepleri karşılayabilirsiniz. Bu, yüksek kullanıcı trafiği durumunda uygulamanızı ölçeklendirmek için esneklik sağlar.


<br />      <br />      <br />


![Container](https://beaglesecurity.com/blog/images/docker_840.png)

## Container Nedir?

Container, kendilerine ait processleri, servisleri, networkleri olan aynı işletim sistemi veya VM üzerinde çalışan izole edilmiş ortamlardır. Konteyner teknolojisi, uygulamaları ve tüm gerekli bileşenleri bir araya getirerek uygulamaların farklı ortamlarda sorunsuz bir şekilde çalışmasını sağlar. Bununla birlikte konteynerler, aynı işletim sistemi çekirdeğini paylaşan ancak izole bir çevre sağlayan hafif ve taşınabilir bir yapıya sahiptir. Aslında yeni bir teknoloji değildir ve 3 tane container çeşidi vardır. Bunlar;
- LXC
- LXD
- LXCFS

Docker ise **LXC** container türünü kullanır. 








