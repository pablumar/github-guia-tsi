<p>Para la estrategia de evolución de la mensajería existente en TSI al
ecosistema FHIR, partiremos inicialmente de especificaciones estándar
internacionales que cubren los requisitos de interoperabilidad deseables
para un sistema maestro de pacientes.</p>
<p>Para esto, tomaremos como referencia los perfiles de
interoperabilidad definidos a nivel de IHE (Integrating the Healthcare
Enterprise).</p>
<p>IHE define múltiples perfiles de integración entre sistemas del
ámbito sanitario, parte de los cuales se definen según el estándar HL7
FHIR. Cada perfil de integración define distintos roles que deben
cumplir los sistemas participantes, así como la mensajería a implementar
en función del rol adoptado por el sistema. En IHE, se utiliza el
término “transacción” como definición de los distintos mensajes de
integración.</p>
<p>En un escenario de gestión de la información de pacientes donde
existen múltiples dominios de identificación (caso de TSI con las
distintas comunidades autónomas y mutualidades), los perfiles de
interoperabilidad IHE relevantes y basados en FHIR son los
siguientes:</p>
<ul>
<li><p><u>IHE PIXm
(https://profiles.ihe.net/ITI/PIXm/index.html)</u></p></li>
</ul>
<blockquote>
<p>Este perfil de integración cubre la gestión centralizada de los
distintos identificadores (referencias) que un paciente pueda tener en
distintos dominios, definiendo mensajes estándar para la consulta de
identificadores, así como la notificación de cambios sobre datos del
paciente.</p>
<table><tr><td><img src="assets/images/imagen1.png" style="width:6.27778in;height:1.54931in"
alt="Interfaz de usuario gráfica, Texto, Aplicación, Chat o mensaje de texto" /></td></tr></table>

<p>Bajo este perfil de integración, TSI adoptaría el rol “Patient
Identifier Cross-reference Manager”</p>
</blockquote>
<ul>
<li><p><u>IHE PDQm
(https://profiles.ihe.net/ITI/PDQm/index.html)</u></p></li>
</ul>
<blockquote>
<p>Este perfil de integración cubre las consultas de información sobre
pacientes en formato FHIR.</p>
<table><tr><td><img src="assets/images/imagen2.png" style="width:5.90625in;height:2.55208in"
alt="Interfaz de usuario gráfica, Texto" /></td></tr></table>
<p>Bajo este perfil de integración, TSI adoptaría el rol “Patient
Demographics Supplier”, y las CCAA adoptarían el rol “Patient
Demographics Consumer”, como se muestra a continuación:</p>
<table><tr><td><img src="assets/images/imagen3.png" style="width:5.90625in;height:2.60417in"
alt="Imagen que contiene Diagrama" /></td></tr></table>
</blockquote>
<ul>
<li><p><u>IHE PMIR
(https://profiles.ihe.net/ITI/PMIR/index.html)</u></p></li>
</ul>
<blockquote>
<p>PMIR (Patient Master Identity Registry) es otro perfil de integración
basado en FHIR que aúna las capacidades de los perfiles PIXm y PDQm,
permitiendo la consulta, creación, actualización y eliminación de
información sobre los datos de un paciente. Adicionalmente, incorpora un
patrón de integración para que otros sistemas externos puedan
subscribirse a actualizaciones sobre los datos de pacientes y reciban
notificaciones cuando se producen.</p>
<table><tr><td><img src="assets/images/imagen4.png" style="width:6.27778in;height:1.46111in"
alt="Diagrama" /></td></tr></table>
<p>Bajo este perfil de integración, TSI adoptaría el rol de “Patient
Identity Registry”.</p>
<p>Bajo este perfil de integración también se encuentra la transacción
IHE ITI-94 “Subscribe to Patient Updates”. Éste es un modelo de
notificaciones basado en el patrón de publicación / subscripción de los
sistemas interesados. La implementación de un modelo de este tipo no
implicará de forma obligatoria adaptaciones en los sistemas que están
consumiendo los mensajes definidos actualmente. Simplemente dejará
preparado al sistema TSI para ser un proveedor de este mecanismo de
notificación basado en la especificación FHIR.</p>
</blockquote>
<p>Adicionalmente, se tomarán como referencias las especificaciones FHIR
disponibles a nivel de servicios europeos en lo que respecta a la
búsqueda e identificación de pacientes.</p>