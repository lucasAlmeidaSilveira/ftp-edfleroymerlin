<!-- css especifico da pagina 'Nossas Lojas' -->
<style>
  {% include "templates/modified/page/css/nossas_lojas.css" %}
  {% include "templates/modified/page/css/slide.css" %}
</style>

<!-- tipografia da pagina 'Nossas Lojas' -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">

<!-- biblioteca de icons da pagina 'Nossas Lojas' -->
<script src="https://kit.fontawesome.com/0f06739ba3.js" crossorigin="anonymous"></script>

<!-- conteudo da pagina 'Nossas Lojas' -->
<div class="main_lojas_address">
  <div class="titulo_lojas">
    <h3>Nossas Lojas</h3>
    <p>Encontre a loja mais próxima de você.</p>
  </div>
  <div class="menu_lojas">
      <a href="#Turiassu" class="smooth-scroll"><button class="loja_button" onclick="openAddress(event, 'Turiassu')" id="defaultOpen">Turiassú</button></a>
      <a href="#Gabriel" class="smooth-scroll"><button class="loja_button" onclick="openAddress(event, 'Gabriel')">Gabriel Monteiro da Silva</button></a>
      <a href="#Jardim" class="smooth-scroll"><button class="loja_button" onclick="openAddress(event, 'Jardim')">Jardim Anália Franco</button></a>
      <a href="#Moema" class="smooth-scroll"><button class="loja_button" onclick="openAddress(event, 'Moema')">Moema</button></a>
  </div>
  <div class="lojas">
      <div class="loja animeLeft" id="Turiassu">
        <section class="grid-section galeria">
          <ul class="custom-controls">
            <li><img src="https://i.postimg.cc/sfQV1DBf/artepropria-turiassu.jpg" alt="Arte Propria | Turiassú"></li>
            <li><img src="https://i.postimg.cc/SxqqZ6gj/artepropria-turiassu1.jpg" alt="Arte Propria | Turiassú"></li>
            <li><img src="https://i.postimg.cc/D0bYhNwF/artepropria-turiassu3.jpg" alt="Arte Propria | Turiassú"></li>
            <li><img src="https://i.postimg.cc/MK1qbPbh/artepropria-turiassu4.jpg" alt="Arte Propria | Turiassú"></li>
            <li><img src="https://i.postimg.cc/qBPpKVns/artepropria-turiassu5.jpg" alt="Arte Propria | Turiassú"></li>
            <li><img src="https://i.postimg.cc/xqDp1PXm/artepropria-turiassu6.jpg" alt="Arte Propria | Turiassú"></li>
          </ul>
          <div class="slide-wrapper">
            <ul class="slide">
              <li><img src="https://i.postimg.cc/sfQV1DBf/artepropria-turiassu.jpg" alt="Arte Propria | Turiassú"></li>
              <li><img src="https://i.postimg.cc/SxqqZ6gj/artepropria-turiassu1.jpg" alt="Arte Propria | Turiassú"></li>
              <li><img src="https://i.postimg.cc/D0bYhNwF/artepropria-turiassu3.jpg" alt="Arte Propria | Turiassú"></li>
              <li><img src="https://i.postimg.cc/MK1qbPbh/artepropria-turiassu4.jpg" alt="Arte Propria | Turiassú"></li>
              <li><img src="https://i.postimg.cc/qBPpKVns/artepropria-turiassu5.jpg" alt="Arte Propria | Turiassú"></li>
              <li><img src="https://i.postimg.cc/xqDp1PXm/artepropria-turiassu6.jpg" alt="Arte Propria | Turiassú"></li>
            </ul>
          </div>
          <div class="arrow-nav">
            <button class="prev"><i class="fa-solid fa-chevron-left"></i></button>
            <button class="next"><i class="fa-solid fa-chevron-right"></i></button>
          </div>
        </section>
        <div class="texto_loja">
          <p><i class="fa-solid fa-location-dot"></i><a target="_blank" title="Acesse no Google Maps" href="https://maps.app.goo.gl/pMW7gi1NwTg7YJ6UA"> Rua Turiassú, 1259 - Perdizes - São Paulo - SP, 05005-001</a></p>
          <p><i class="fa-solid fa-clock"></i> Segunda a Sábado: 09h00 às 19h00</p>
          <p><i class="fa-solid fa-clock"></i> Domingos e Feriados: Fechado</p>
          <p><i class="fa-solid fa-square-parking"></i> Loja com estacionamento e manobrista</p>
          <p><i class="fa-solid fa-envelope"></i><a href="mailto:lojaturiassu@artepropria.com" target="_blank" title="E-mail"> lojaturiassu@artepropria.com</a></p>
          <p><i class="fa-solid fa-phone"></i><a href="tel:+55(11)3864-2971" title="Clique e Ligue" target="_blank"> (11) 3864-2971</a></p>
          <div class="flex_loja">
            <a href="https://api.whatsapp.com/send?phone=55119963393243" target="_blank"><button class="wpp_lojas"><i class="fa-brands fa-whatsapp" title="Entre em contato"></i></button></a>
          </div>
        </div>

        <div class="texto_loja_mobile">
          <p><i class="fa-solid fa-location-dot"></i><a target="_blank" title="Acesse no Google Maps" href="https://maps.app.goo.gl/pMW7gi1NwTg7YJ6UA"> Rua Turiassú, 1259 - Perdizes - São Paulo - SP, 05005-001</a></p>
          <p><i class="fa-solid fa-clock"></i> Segunda a Sábado: 09h00 às 19h00</p>
          <p><i class="fa-solid fa-clock"></i> Domingos e Feriados: Fechado</p>
          <p><i class="fa-solid fa-square-parking"></i> Loja com estacionamento e manobrista</p>
          <p><i class="fa-solid fa-envelope"></i><a href="mailto:lojaturiassu@artepropria.com" target="_blank" title="E-mail"> lojaturiassu@artepropria.com</a></p>
          <p><i class="fa-solid fa-phone"></i><a href="tel:+55(11)3864-2971" title="Clique e Ligue" target="_blank"> (11) 3864-2971</a></p>
          <div class="flex_loja">
            <a href="https://api.whatsapp.com/send?phone=55119963393243" target="_blank"><button class="wpp_lojas"><i class="fa-brands fa-whatsapp" title="Entre em contato"></i></button></a>
          </div>
        </div>
      </div>

      <div class="loja animeLeft" id="Gabriel">
        <section class="grid-section galeria">
          <ul class="custom-controls_2">
            <li><img src="https://i.postimg.cc/6qTWVnfT/artepropria-gabriel1.jpg" alt="Arte Propria | Gabriel Monteiro da Silva"></li>
            <li><img src="https://i.postimg.cc/Vv6YmnSm/artepropria-gabriel0.jpg" alt="Arte Propria | Gabriel Monteiro da Silva"></li>
            <li><img src="https://i.postimg.cc/X7RjFZG7/artepropria-gabriel2.jpg" alt="Arte Propria | Gabriel Monteiro da Silva"></li>
            <li><img src="https://i.postimg.cc/QdF7NWL8/artepropria-gabriel3.jpg" alt="Arte Propria | Gabriel Monteiro da Silva"></li>
            <li><img src="https://i.postimg.cc/7Lgfb3Kk/artepropria-gabriel4.jpg" alt="Arte Propria | Gabriel Monteiro da Silva"></li>
            <li><img src="https://i.postimg.cc/V6m5tJhb/artepropria-gabriel5.jpg" alt="Arte Propria | Gabriel Monteiro da Silva"></li>
            <li><img src="https://i.postimg.cc/bJgr9zXV/artepropria-gabriel6.jpg" alt="Arte Propria | Gabriel Monteiro da Silva"></li>
          </ul>
          <div class="slide-wrapper_2">
            <ul class="slide_2">
              <li><img src="https://i.postimg.cc/6qTWVnfT/artepropria-gabriel1.jpg" alt="Arte Propria | Gabriel Monteiro da Silva"></li>
              <li><img src="https://i.postimg.cc/Vv6YmnSm/artepropria-gabriel0.jpg" alt="Arte Propria | Gabriel Monteiro da Silva"></li>
              <li><img src="https://i.postimg.cc/X7RjFZG7/artepropria-gabriel2.jpg" alt="Arte Propria | Gabriel Monteiro da Silva"></li>
              <li><img src="https://i.postimg.cc/QdF7NWL8/artepropria-gabriel3.jpg" alt="Arte Propria | Gabriel Monteiro da Silva"></li>
              <li><img src="https://i.postimg.cc/7Lgfb3Kk/artepropria-gabriel4.jpg" alt="Arte Propria | Gabriel Monteiro da Silva"></li>
              <li><img src="https://i.postimg.cc/V6m5tJhb/artepropria-gabriel5.jpg" alt="Arte Propria | Gabriel Monteiro da Silva"></li>
              <li><img src="https://i.postimg.cc/bJgr9zXV/artepropria-gabriel6.jpg" alt="Arte Propria | Gabriel Monteiro da Silva"></li>
            </ul>
          </div>
          <div class="arrow-nav_2">
            <button class="prev_2"><i class="fa-solid fa-chevron-left"></i></button>
            <button class="next_2"><i class="fa-solid fa-chevron-right"></i></button>
          </div>
        </section>
        <div class="texto_loja">
          <p><i class="fa-solid fa-location-dot"></i><a target="_blank" title="Acesse no Google Maps" href="https://maps.app.goo.gl/pxD4VHKHvvA7RMJH8"> Alameda Gabriel Monteiro da Silva, 632 - Jardim America - São Paulo - SP, 01442-000</a></p>
          <p><i class="fa-solid fa-clock"></i> Segunda a Sexta: 10h00 às 19h00</p>
          <p><i class="fa-solid fa-clock"></i> Sábado: 10h00 às 17h00</p>
          <p><i class="fa-solid fa-clock"></i> Domingos e Feriados: Fechado</p>
          <p><i class="fa-solid fa-square-parking"></i> Loja com estacionamento e manobrista</p>
          <p><i class="fa-solid fa-envelope"></i><a href="mailto:lojagabriel@artepropria.com" target="_blank" title="E-mail"> lojagabriel@artepropria.com</a></p>
          <p><i class="fa-solid fa-phone"></i><a href="tel:+55(11)3088-6696" title="Clique e Ligue" target="_blank"> (11) 3088-6696</a></p>
          <div class="flex_loja">
            <a href="https://api.whatsapp.com/send?phone=5511963362173" target="_blank"><button class="wpp_lojas"><i class="fa-brands fa-whatsapp" title="Entre em contato"></i></button></a>
          </div>
        </div>
        <div class="texto_loja_mobile">
          <p><i class="fa-solid fa-location-dot"></i><a target="_blank" title="Acesse no Google Maps" href="https://maps.app.goo.gl/pxD4VHKHvvA7RMJH8"> Alameda Gabriel Monteiro da Silva, 632 - Jardim America - São Paulo - SP, 01442-000</a></p>
          <p><i class="fa-solid fa-clock"></i> Segunda a Sexta: 10h00 às 19h00</p>
          <p><i class="fa-solid fa-clock"></i> Sábado: 10h00 às 17h00</p>
          <p><i class="fa-solid fa-clock"></i> Domingos e Feriados: Fechado</p>
          <p><i class="fa-solid fa-square-parking"></i> Loja com estacionamento e manobrista</p>
          <p><i class="fa-solid fa-envelope"></i><a href="mailto:lojagabriel@artepropria.com" target="_blank" title="E-mail"> lojagabriel@artepropria.com</a></p>
          <p><i class="fa-solid fa-phone"></i><a href="tel:+55(11)3088-6696" title="Clique e Ligue" target="_blank"> (11) 3088-6696</a></p>
          <div class="flex_loja">
            <a href="https://api.whatsapp.com/send?phone=5511963362173" target="_blank"><button class="wpp_lojas"><i class="fa-brands fa-whatsapp" title="Entre em contato"></i></button></a>
          </div>
        </div>
      </div>

      <div class="loja animeLeft" id="Jardim">
        <section class="grid-section galeria">
          <ul class="custom-controls_3">
            <li><img src="https://i.postimg.cc/T3dnBqXh/artepropria-analia.jpg" alt="Arte Propria | Jardim Analia Franco"></li>
            <li><img src="https://i.postimg.cc/tg7W4qJj/artepropria-analia1.jpg" alt="Arte Propria | Jardim Analia Franco"></li>
            <li><img src="https://i.postimg.cc/rpbWdBRt/artepropria-analia2.jpg" alt="Arte Propria | Jardim Analia Franco"></li>
            <li><img src="https://i.postimg.cc/XYs9WGVL/artepropria-analia3.jpg" alt="Arte Propria | Jardim Analia Franco"></li>
            <li><img src="https://i.postimg.cc/1tqFDvD7/artepropria-analia4.jpg" alt="Arte Propria | Jardim Analia Franco"></li>
          </ul>
          <div class="slide-wrapper_3">
            <ul class="slide_3">
              <li><img src="https://i.postimg.cc/T3dnBqXh/artepropria-analia.jpg" alt="Arte Propria | Jardim Analia Franco"></li>
              <li><img src="https://i.postimg.cc/tg7W4qJj/artepropria-analia1.jpg" alt="Arte Propria | Jardim Analia Franco"></li>
              <li><img src="https://i.postimg.cc/rpbWdBRt/artepropria-analia2.jpg" alt="Arte Propria | Jardim Analia Franco"></li>
              <li><img src="https://i.postimg.cc/XYs9WGVL/artepropria-analia3.jpg" alt="Arte Propria | Jardim Analia Franco"></li>
              <li><img src="https://i.postimg.cc/1tqFDvD7/artepropria-analia4.jpg" alt="Arte Propria | Jardim Analia Franco"></li>
            </ul>
          </div>
          <div class="arrow-nav_3">
            <button class="prev_3"><i class="fa-solid fa-chevron-left"></i></button>
            <button class="next_3"><i class="fa-solid fa-chevron-right"></i></button>
          </div>
        </section>
        <div class="texto_loja">
          <p><i class="fa-solid fa-location-dot"></i><a target="_blank" title="Acesse no Google Maps" href="https://maps.app.goo.gl/rWrPL5xVtaunbcYA7"> R. Eleonora Cintra, 344 - Jardim Analia Franco - São Paulo - SP, 03337-000</a></p>
          <p><i class="fa-solid fa-clock"></i> Segunda a Sexta: 10h00 às 19h00</p>
          <p><i class="fa-solid fa-clock"></i> Sábados: 10h00 às 18h00</p>
          <p><i class="fa-solid fa-clock"></i> Domingos e Feriados: Fechado</p>
          <p><i class="fa-solid fa-square-parking"></i> Loja com estacionamento e manobrista</p>
          <p><i class="fa-solid fa-envelope"></i><a href="mailto:lojaanaliafranco@artepropria.com" target="_blank" title="E-mail"> lojaanaliafranco@artepropria.com</a></p>
          <p><i class="fa-solid fa-phone"></i><a href="tel:+55(11)3294-1398" title="Clique e Ligue" target="_blank"> (11) 3294-1398</a></p>
          <div class="flex_loja">
            <a href="https://api.whatsapp.com/send?phone=5511963361354" target="_blank"><button class="wpp_lojas"><i class="fa-brands fa-whatsapp" title="Entre em contato"></i></button></a>
          </div>
        </div>

        <div class="texto_loja_mobile">
          <p><i class="fa-solid fa-location-dot"></i><a target="_blank" title="Acesse no Google Maps" href="https://maps.app.goo.gl/rWrPL5xVtaunbcYA7"> R. Eleonora Cintra, 344 - Jardim Analia Franco - São Paulo - SP, 03337-000</a></p>
          <p><i class="fa-solid fa-clock"></i> Segunda a Sexta: 10h00 às 19h00</p>
          <p><i class="fa-solid fa-clock"></i> Sábados: 10h00 às 18h00</p>
          <p><i class="fa-solid fa-clock"></i> Domingos e Feriados: Fechado</p>
          <p><i class="fa-solid fa-square-parking"></i> Loja com estacionamento e manobrista</p>
          <p><i class="fa-solid fa-envelope"></i><a href="mailto:lojaanaliafranco@artepropria.com" target="_blank" title="E-mail"> lojaanaliafranco@artepropria.com</a></p>
          <p><i class="fa-solid fa-phone"></i><a href="tel:+55(11)3294-1398" title="Clique e Ligue" target="_blank"> (11) 3294-1398</a></p>
          <div class="flex_loja">
            <a href="https://api.whatsapp.com/send?phone=5511963361354" target="_blank"><button class="wpp_lojas"><i class="fa-brands fa-whatsapp" title="Entre em contato"></i></button></a>
          </div>
        </div>
      </div>

      <div class="loja animeLeft" id="Moema">
        <section class="grid-section galeria">
          <ul class="custom-controls_4">
            <li><img src="https://i.postimg.cc/VNbvhd5d/artepropria-moema.jpg" alt="Arte Propria | Moema"></li>
            <li><img src="https://i.postimg.cc/Znj5NNsD/artepropria-moema1.jpg" alt="Arte Propria | Moema"></li>
            <li><img src="https://i.postimg.cc/0j9Nrnnw/artepropria-moema2.jpg" alt="Arte Propria | Moema"></li>
            <li><img src="https://i.postimg.cc/26Q6zMQY/artepropria-moema3.jpg" alt="Arte Propria | Moema"></li>
            <li><img src="https://i.postimg.cc/441djC4b/artepropria-moema4.jpg" alt="Arte Propria | Moema"></li>
          </ul>
          <div class="slide-wrapper_4">
            <ul class="slide_4">
              <li><img src="https://i.postimg.cc/VNbvhd5d/artepropria-moema.jpg" alt="Arte Propria | Moema"></li>
              <li><img src="https://i.postimg.cc/Znj5NNsD/artepropria-moema1.jpg" alt="Arte Propria | Moema"></li>
              <li><img src="https://i.postimg.cc/0j9Nrnnw/artepropria-moema2.jpg" alt="Arte Propria | Moema"></li>
              <li><img src="https://i.postimg.cc/26Q6zMQY/artepropria-moema3.jpg" alt="Arte Propria | Moema"></li>
              <li><img src="https://i.postimg.cc/441djC4b/artepropria-moema4.jpg" alt="Arte Propria | Moema"></li>
            </ul>
          </div>
          <div class="arrow-nav_4">
            <button class="prev_4"><i class="fa-solid fa-chevron-left"></i></button>
            <button class="next_4"><i class="fa-solid fa-chevron-right"></i></button>
          </div>
        </section>
        <div class="texto_loja">
          <p><i class="fa-solid fa-location-dot"></i><a target="_blank" title="Acesse no Google Maps" href="https://maps.app.goo.gl/taPkCsVMM2zceVXL6"> Av. Moaci, 175 - Planalto Paulista - São Paulo - SP, 04083-000
            </a></p>
          <p><i class="fa-solid fa-clock"></i> Segunda a Sábado: 10h00 às 19:00h</p>
          <p><i class="fa-solid fa-clock"></i> Domingos e Feriados: Fechado</p>
          <p><i class="fa-solid fa-square-parking"></i> Loja com estacionamento e manobrista</p>
          <p><i class="fa-solid fa-envelope"></i><a href="mailto:lojamoema@artepropria.com" target="_blank" title="E-mail"> lojamoema@artepropria.com</a></p>
          <p><i class="fa-solid fa-phone"></i><a href="tel:+55(11)5044-0322" title="Clique e Ligue" target="_blank"> (11) 5044-0322</a></p>
          <div class="flex_loja">
            <a href="https://api.whatsapp.com/send?phone=5511963368738" target="_blank"><button class="wpp_lojas"><i class="fa-brands fa-whatsapp" title="Entre em contato"></i></button></a>
          </div>
        </div>
        <div class="texto_loja_mobile">
          <p><i class="fa-solid fa-location-dot"></i><a target="_blank" title="Acesse no Google Maps" href="https://maps.app.goo.gl/taPkCsVMM2zceVXL6"> Av. Moaci, 175 - Planalto Paulista - São Paulo - SP, 04083-000
            </a></p>
          <p><i class="fa-solid fa-clock"></i> Segunda a Sábado: 10h00 às 19:00h</p>
          <p><i class="fa-solid fa-clock"></i> Domingos e Feriados: Fechado</p>
          <p><i class="fa-solid fa-square-parking"></i> Loja com estacionamento e manobrista</p>
          <p><i class="fa-solid fa-envelope"></i><a href="mailto:lojamoema@artepropria.com" target="_blank" title="E-mail"> lojamoema@artepropria.com</a></p>
          <p><i class="fa-solid fa-phone"></i><a href="tel:+55(11)5044-0322" title="Clique e Ligue" target="_blank"> (11) 5044-0322</a></p>
          <div class="flex_loja">
            <a href="https://api.whatsapp.com/send?phone=5511963368738" target="_blank"><button class="wpp_lojas"><i class="fa-brands fa-whatsapp" title="Entre em contato"></i></button></a>
          </div>
        </div>
      </div>
  </div>
</div>
  <!-- js especifico da pagina 'Nossas Lojas' -->
  <script>
    {% include "templates/modified/page/js/nossas_lojas.js" %}
    {% include "templates/modified/page/js/slide.js" %}
  </script>