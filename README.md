<!-- Welcome to the BEC research group data-sharing template -->
<a name="readme-top"></a>
<!--
*** If you have a question, please email me to amunerab@eafit.edu.co
*** If you have a suggestion, please fork the repository and create a pull request
*** Don't forget to give the project a star!
-->



<!-- PROJECT SHIELDS -->
<!--
*** Here, the "markdown" reference style is used for links
*** First is [brackets] and then (parenthesis)
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
<!-- [![Stargazers][stars-shield]][stars-url] -->
[![Issues][issues-shield]][issues-url]
[![GPL License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/amaliamunera/Environmental-Modelling-2023">
    <img src="images/Project-logo.PNG" alt="Logo" width="150" height="150">
  </a>

<h3 align="center"> Modelado del crecimiento de bacterias oxidantes de hierro Leprothrix basado en datos bibliográficos para interpretar su crecimiento y extrapolarlo a datos reales.</h3>

  <p align="center">
    Proyecto de la materia "Modelación Ambiental" de la Universidad EAFIT sobre el crecimiento de las bacterias oxidadoras de hierro. 
    <br />
    <a href="https://github.com/amaliamunera/Environmental-Modelling-2023"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <!-- <a href="https://github.com/amaliamunera/BEC-Template-Repository">View Demo</a>
    · -->
    <a href="https://github.com/amaliamunera/Environmental-Modelling-2023/issues">Report Bug</a>
    ·
    <a href="https://github.com/amaliamunera/Environmental-Modelling-2023/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#sobre-este-proyecto">Sobre Este Proyecto</a>
      <ul>
        <li><a href="software-hardware">Software & Hardware</a></li>
        <li><a href="problematica">Problemática a Resolver</a></li>
       <!-- <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li> -->
      </ul>
    </li>
    <li>
      <a href="#infromacion-relevante">Información Relevante</a>
      <ul> 
      	<li><a href="descripcion-modelos"> Descripción de los Modelos</a></li>
      	<li><a href="limitaciones-proyecto"> Limitaciones Llevándo a Cabo el Proyecto</a></li>
      	<li><a href="nuevos-enfoques"> Nuevos Enfoques del Proyecto</a></li>
      	</ul>
      </li>
    </li>
    <li><a href="#usage">Modo de Uso</a></li>
    <li><a href="#roadmap">"Roadmap" Para Implementar el Proyecto</a></li>
    <li><a href="#contributing">Contribuir</a></li>
    <li><a href="#license">Licencia</a></li>
    <li><a href="#contact">Contacto</a></li>
    <!-- <li><a href="#acknowledgments">Acknowledgments</a></li> -->
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## Sobre este Proyecto

La modelación matemática brinda diferentes perspectivas para abordar un problema. En este proyecto, se describe el ecosistema y microorganismo de interés, se plantean los modelos matemáticos a utilizar y se explica la modificación debido a la falta de crecimiento bacteriano. Además, se propone simular el crecimiento bacteriano en el entorno específico. Las bacterias oxidantes de hierro, como *Leptothrix* sp., forman biopelículas y se emplean frecuentemente en la biorremediación de aguas contaminadas. Para ello, se considera el análisis de datos ambientales y experimentales, midiendo el crecimiento de *Leptothrix* sp., y ajustando los modelos para obtener una comparación entre datos ambientales y simulaciones.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


### Software & Hardware

MATLAB es un lenguaje interpretado de alto nivel y un entorno interactivo para el desarrollo de algoritmos, la visualización de datos, el análisis de datos y el cálculo numérico. Se utiliza intensamente en la enseñanza, la investigación y la industria, en una amplia gama de aplicaciones, como el procesamiento de señales e imágenes, las comunicaciones, el diseño de controles, las pruebas y mediciones y la biología computacional.

Utilizando el software de MATLAB, se tendrá la oportunidad de implementar los diferentes modelos, entradas, salidas y variaciones del sistema gracias a Simulink. 

Adicionalmente a esto, se utilizará R y R Studio, los cuales funcionan con el lenguaje de programación de R para computo estadístico y de gráficos, utilizando paquetes como ggplot2 y Shiny para organizar datos y graficarlos; y Vegan y Cluster para organizarlos de forma tabulada. 

<!-- In this space you have the opportunity to mention which software/hardware was used for this project and what is the nature of the data. In [this link](https://dev.to/envoy_/150-badges-for-github-pnk) you will find more badges for you to use in your projects.

* [![Adafruit][Adafruit.com]][Adafruit-url]
* [![ArduinoIDE][ArduinoIDE.com]][ArduinoIDE-url]
* [![Arduino][Arduino.com]][Arduino-url]
-->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Problemática a Resolver

A la hora de encontrarnos ante este tipo de ecosistemas, en los que se desconocen múltiples características del organismo, los investigadores nos realizamos múltiples preguntas, tales como: ¿Qué está creciendo ahí?, ¿Cómo están creciendo?, ¿Por qué específicamente en ese lugar?. 

Aunque se quiere dar respuesta a todas estas preguntas, desde el campo de la modelación matemática y el estudio de los sistemas, se puede dar respuesta a la pregunta de **¿Cómo crecen estas bacterias?**.

En este proyecto entonces, se busca enfocar en el entendimiento de de la formación de las bacterias en el ambiente de interés. Esto permitirá tener claridad a su vez en el proceso en el que se forman las biopelículas y los ambientes anaerobios en los que habitan. Adicionalmente, permite tener un acercamiento claro al ecosistema de las bacterias, cómo funciona y qué características se deben tener en cuenta a la hora de estudiarlo. 

Debido a que anteriormente no había conocimiento de este tipo de crecimientos bacterianos en la Reserva Natural El Globo, también le permitirá a futuros investigadores y estudiantes tener conocimiento y fundamentos sólidos del comportamiento de este tipo de bacterias, para que, en un futuro, se tenga la oportunidad de hacer estudios más especializados sobre este tipo de poblaciones, y que estas mismas sean utilizadas para procesos de biorremediación y conservación ambiental. 

<!-- Here you can explain, for example, how to list the things you need to use the software, such as libraries, specific programs, etc.

Example: 

* npm
  ```sh
  npm install npm@latest -g
  ```
-->
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ### Installation

Example of a list of steps on how to install material or download software to use with the data. 

1. Get a free API Key at [https://example.com](https://example.com)
2. Clone the repo
   ```sh
   git clone https://github.com/github_username/repo_name.git
   ```
3. Install NPM packages
   ```sh
   npm install
   ```
4. Enter your API in `config.js`
   ```js
   const API_KEY = 'ENTER YOUR API';
   ```
<p align="right">(<a href="#readme-top">back to top</a>)</p>

-->

<!-- GETTING STARTED -->
## Información Relevante

### Descripción de los Modelos
Estos modelos han sido ampliamente utilizados en estudios con enfoques  biológicos, aplicados a industrias como la alimenticia y el sector salud, y han permitido tener un mejor entendimiento de los procesos naturales y químicos que nos rodean. A continuación se explicarán los tres modelos seleccionados para llevar a cabo el proyecto: 

1. **Modelo Exponencial**: Este modelo supone entonces que la tasa de crecimiento bacteriano es proporcional al número de bacterias presentes, sin ninguna limitación debida a la capacidad de carga (K) del entorno. Funciona como una "base" para el reconocimiento del crecimiento de las bacterias y el ajuste de los modelos, no representa debidamente los entornos naturales, ya que en estos los recursos tienden a ser limitados y la capacidad de carga (K) juega un papel importante en la regulación del crecimiento demográfico.
2. **Modelo Logístico**: Este modelo muestra que la tasa de crecimiento de la población está influida por el potencial biótico y el tamaño de la comunidad, modificados por todos los diferentes impactos de los rasgos innatos, que dependen de la densidad. Aquí se basa en el supuesto de que la tasa de crecimiento bacteriano es proporcional al número de bacterias presentes y, a su vez, está limitada por la capacidad de carga (K) del entorno. Esta capacidad de carga (K) es el tamaño máximo de población que pueden sostener los recursos disponibles del medio ambiente.
3. **Modelo de Gompertz**: Es uno de los modelos más utilizados para ajustar datos de crecimiento y en general otros datos, pues los investigadores han aplicado el modelo de Gompertz al crecimiento de plantas, aves, peces, otros animales, tumores y bacterias. Similar al modelo logístico, este permite representar de manera más específica y precisa el comportamiento del crecimiento bacteriano y sus curvas de crecimiento. 


<!-- The aim of this space is to share the information that each researcher considers relevant to their repository and the use of their data. This may be, for example, a theoretical framework to provide context, sources of inspiration for the project, among others.
-->   

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Limitaciones Llevándo a Cabo el Proyecto
En el planteamiento del problema inicial, se buscaba en tender el modo de crecimiento de las bacterias oxidantes de hierro por medio de la toma de muestras, planteamiento y análisis de la curva de crecimiento de las bacterias con densidad óptica, y finalmente la implementación de los modelos planteados anteriormente. 

Sin embargo, el desarrollo del tabajo depende de la toma de las bacterias, la inoculación adecuada de estas bacterias a un medio de cultivo, y que se lograra evidenciar este crecimiento bacteriano por medio de la densidad óptica. 

Lamentablemente, como llega a suceder repetidas veces en el campo de la biología y las ciencias exactas, los resultados esperados no son iguales a los resultados reales. En este caso, no se presentó un crecimiento en el medio de las bacterias de interés, por lo que resultaba inútil realizar un análisis de densidad óptica. 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Nuevos Enfoques del Proyecto
Se enfocó el proyecto en entender la relevancia de las variables específicas de cada modelo, planteándo parámetros estándar para la población inicial de bacterias, la capacidad de carga y la duración de la fase de retardo. 

Además, se tomaron los datos de la tasa de crecimiento específica específica para *Leptothrix* sp. (o bacterias oxidantes de hierro) de la bibliografía, específicamente de Wichlacz y Unz (1985), y Yurt et al (2002). Este fue el valor "constante" entre todos los modelos implementados

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->
## Modo de Uso
Los códigos que va a encontrar en este repositorio se dividen entre MatLab y R. En ambos, se definen las variables y se obtienen las gráficas para representar el comportamiento de cada modelo. Cabe resaltar que los códigos de R poseen más información, ya que en estos se buscaba obtener gráficas mucho más estéticas. Todos los procedimientos iniciales fueron desarrollados en MatLab.

En la información suministrada en el código de MatLab, también se encuentra un código para la **estimación de parámetros para la capacidad de carga del modelo logístico**, pero esta información y gráfica no fue utilizada en el desarrollo y conclusión final del proyecto entregado. Puede usarla, sin embargo, para las necesidades de su proyecto.  

<!-- Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources. This space can also be used for links and additional information that you may wish to add. -->

<!-- _For more examples, please refer to the [Documentation](https://example.com)_ -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ROADMAP -->
## "Roadmap" Para Implementar este Proyecto

[![Graph Screen Shot][data-graph]](https://github.com/amaliamunera/Environmental-Modelling-2023/blob/main/images/mode-amb-graph_.png)

Este es un diagrama inicial para que te puedas guiar a la hora de llevar a cabo tu proyecto, y sea de utilidad a la hora de definir los pasos a seguir. 

<!-- See the [open issues](https://github.com/amaliamunera/BEC-Template-Repository/issues) for a full list of proposed features (and known issues).-->

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contribuir

Las contribuciones son lo que hace que la comunidad del código abierto sea un lugar increíble para aprender, inspirarse y crear. Cualquier contribución que hagas será **muy apreciada**.

Si tienes alguna sugerencia que pueda mejorar esto, por favor haz un fork del repositorio y crea un pull request. También puedes abrir una incidencia con la etiqueta "enhancement".

**No olvides darle una estrella al proyecto.**

1. Hazle "Fork" al proyecto
2. Crea tu "Feature Branch" (`git checkout -b feature/AmazingFeature`)
3. Hazle "Commit" a tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Haz "Push" a la rama (`git push origin feature/AmazingFeature`)
5. Abre un "Pull Request"

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## Licencia

Distribuido bajo la licencia GPL-3.0. Consulte `LICENSE.txt` para más información.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contacto

Amalia Munera - [@amalia_munera](https://twitter.com/amalia_munera) - amunerab@eafit.edu.co

Project Link: [https://github.com/amaliamunera/Environmental-Modelling-2023](https://github.com/amaliamunera/Environmental-Modelling-2023)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
<!-- ## Acknowledgments

* []()
* []()
* []()

<p align="right">(<a href="#readme-top">back to top</a>)</p>

-->


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/github_username/repo_name.svg?style=for-the-badge
[contributors-url]: https://github.com/amaliamunera/Environmental-Modelling-2023/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/github_username/repo_name.svg?style=for-the-badge
[forks-url]: https://github.com/amaliamunera/Environmental-Modelling-2023/network/members
<!-- [stars-shield]: https://img.shields.io/github/stars/github_username/repo_name.svg?style=for-the-badge
[stars-url]: https://github.com/github_username/repo_name/stargazers -->
[issues-shield]: https://img.shields.io/github/issues/github_username/repo_name.svg?style=for-the-badge
[issues-url]: https://github.com/amaliamunera/Environmental-Modelling-2023/issues
[license-shield]: https://img.shields.io/github/license/github_username/repo_name.svg?style=for-the-badge
[license-url]: https://github.com/amaliamunera/Environmental-Modelling-2023/blob/main/LICENSE
[linkedin-shield]: https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white
[linkedin-url]: https://linkedin.com/in/amaliamunera
[product-screenshot]: images/data-network.png
[Arduino.com]: https://img.shields.io/badge/Arduino-00979D?style=for-the-badge&logo=Arduino&logoColor=white
[Arduino-url]: https://www.arduino.cc/
[ArduinoIDE.com]: https://img.shields.io/badge/Arduino_IDE-00979D?style=for-the-badge&logo=arduino&logoColor=white
[ArduinoIDE-url]: https://www.arduino.cc/
[Adafruit.com]: https://img.shields.io/badge/adafruit-000000?style=for-the-badge&logo=adafruit&logoColor=white
[Adafruit-url]: https://learn.adafruit.com/
[Romer-cite]: https://www.sciencedirect.com/science/article/pii/S1875389210004943
[data-graph]: images/mode-amb-graph_.png
