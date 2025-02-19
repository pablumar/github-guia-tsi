<p><strong>Descripción:</strong> Devuelve todos los recursos FHIR
Patient coincidentes con la búsqueda realizada.</p>
<p><strong>Mensaje de Entrada</strong>: C001</p>
<p><strong>Mensaje de Salida</strong>: C003</p>
<p><strong>Endpoint:</strong> /Patient</p>
<p><strong>Método:</strong> GET</p>
<p><strong>Cabeceras:</strong></p>
<blockquote>
<p>Authorization: [token]</p>
<p>Content-Type: application/json</p>
<p>Accept: application/fhir+json</p>
</blockquote>
<p>Los ciudadanos devueltos en la consulta corresponderán únicamente a
los estados de TSISNS 0, 1, 2 y 7, que se corresponden con los
siguientes:</p>
<ul>
<li><p>0 🡪 NORMAL</p></li>
<li><p>1 🡪 BAJA EN SERVICIO DE SALUD</p></li>
<li><p>2 🡪 BAJA POR DEFUNCION</p></li>
<li><p>7 🡪 BAJA. NECESITA ACREDITACION DERECHO EN EL INSS</p></li>
</ul>
<p><strong>Parámetros de la operación</strong></p>
<table border=1>
<colgroup>
<col style="width: 29%" />
<col style="width: 70%" />
</colgroup>
<tbody>
<tr>
<td><strong>_id</strong></td>
<td style="text-align: left;">Código Sns del paciente que se quiere
consultar.</td>
</tr>
<tr>
<td><strong>identifier</strong></td>
<td style="text-align: left;">Identificador del paciente, puede ser
alguno de los establecidos: DNI, NIE, Pasaporte, CIP, etc.</td>
</tr>
<tr>
<td><strong>_elements</strong></td>
<td style="text-align: left;">Conjunto de datos relacionados con el
paciente a recuperar. Este elemento de consulta se utilizará en la
petición transfronteriza, donde se indica el conjunto mínimo de datos
recuperar del mismo: identifier,active,name,birthDate,gender</td>
</tr>
</tbody>
</table>
<p>Para la comunicación de <strong>respuestas de éxito</strong> de la
consulta de usuario se hará uso del <strong>recurso FHIR
Patient</strong>, (<a href="#referencias">Referencia 1</a>) más
concretamente un <strong>listado de Patient</strong> (usuarios
encontrados) que será embebido por el <strong>recurso FHIR
Bundle</strong> <a href="#referencias">(Referencia 2).</a></p>
<table border="1">
<colgroup>
<col style="width: 26%" />
<col style="width: 28%" />
<col style="width: 44%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;"><strong>Origen</strong></th>
<th style="text-align: center;"><strong>Recurso FHIR</strong></th>
<th style="text-align: center;"><strong>Descripcion</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Usuarios_encontrados</strong></td>
<td>"<strong>Bundle</strong>”</td>
<td>En la actual respuesta sería el nodo Usuarios_encontrados.</td>
</tr>
<tr>
<td>max_usuarios</td>
<td>Bundle 🡪 total</td>
<td>Elementos obtenidos en la consulta</td>
</tr>
<tr>
<td>inf_usuario</td>
<td>Bundle 🡪 entry</td>
<td>Tendrá el recurso con la información del usuario, en este caso
representado con Patient</td>
</tr>
</tbody>
</table>
<p>Como resultado del servicio se devolverán los siguientes datos:</p>
<ul>
<li><p>Cabeceras HTTP</p>
<ul>
<li><p>200 🡪 Operación realizada satisfactoriamente.</p></li>
<li><p>401 🡪 No se ha recibido la cabecera Authorization, o bien, dicha
cabecera no es correcta.</p></li>
<li><p>511 🡪 Problemas con el sistema</p></li>
<li><p>512 🡪 Agente no valido</p></li>
<li><p>513 🡪 Cola saturada</p></li>
<li><p>514 🡪 Sistema bloqueado</p></li>
<li><p>515 🡪 Error firma no valida</p></li>
<li><p>516 🡪 Operación no registrada</p></li>
<li><p>517 🡪 Agente bloqueado</p></li>
</ul></li>
</ul>
<p>Para la comunicación de <strong>respuestas de error</strong> se hará
uso del <strong>recurso FHIR OperationOutcome</strong> <a
href="#referencias">(Referencia 3)</a> ya que proporciona la estructura
necesaria para cubrir las actuales respuestas de error.</p>
<table border="1">
<colgroup>
<col style="width: 22%" />
<col style="width: 37%" />
<col style="width: 39%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;"><strong>Origen</strong></th>
<th style="text-align: center;"><strong>Recurso FHIR</strong></th>
<th style="text-align: center;"><strong>Descripcion</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Error</strong></td>
<td><strong>OperationOutcome</strong></td>
<td>Recurso para modelar toda la información asociada al error que se ha
producido, o bien si la operación ha sido correcta, indicando tal
hecho.</td>
</tr>
<tr>
<td>Codigo_error</td>
<td>OperationOutcome.issue.code</td>
<td>Código de éxito/error.</td>
</tr>
<tr>
<td>Descripcion_error</td>
<td>OperationOutcome.issue.details</td>
<td>Descripción del éxito/error.</td>
</tr>
<tr>
<td>Nivel de error</td>
<td>OperationOutcome.issue.severity</td>
<td>Nivel de error</td>
</tr>
<tr>
<td>Diagnóstico</td>
<td>OperationOutcome.issue.diagnostics</td>
<td>Diagnóstico</td>
</tr>
</tbody>
</table>
<p>Actualmente, los criterios para la localización de usuarios que
soporta el sistema son los siguientes, y en este proyecto van a ser los
criterios de búsqueda a utilizar.</p>
<table border="1">
<colgroup>
<col style="width: 43%" />
<col style="width: 56%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;"><strong>Tipo de Criterio</strong></th>
<th style="text-align: center;"><strong>Criterio</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Identificador</strong></td>
<td><ul>
<li><p>CodSns</p></li>
<li><p>Naf</p></li>
<li><p>Naf_titular</p></li>
<li><p>Dni</p></li>
<li><p>Pasaporte</p></li>
<li><p>CIP</p></li>
<li><p>Codidssalud junto al id_salud</p></li>
</ul></td>
</tr>
<tr>
<td><strong>Combinación de criterios</strong></td>
<td><ul>
<li><p>Apellido1 con Apellido2 y nombre</p></li>
<li><p>Apellido1 con Apellido2 y fechaNacimiento</p></li>
<li><p>Apellido1 con Apellido2 y dni</p></li>
<li><p>Apellido1 con Apellido2 y pasaporte</p></li>
<li><p>Apellido1 con Apellido2, nombre y fechaNacimiento</p></li>
</ul></td>
</tr>
</tbody>
</table>
<p>A futuro, esta transacción debería admitir relaciones tanto de AND
como de OR, soportando métodos con múltiples parámetros.</p>
<table border="1">
<colgroup>
<col style="width: 43%" />
<col style="width: 56%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;"><strong>Parámetro</strong></th>
<th style="text-align: center;"><strong>Definición</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>_id</strong></td>
<td><p>Parámetro de tipo cadena. Representa el identificador del recurso
Patient que se está consultando. Una búsqueda utilizando _id siempre es
una búsqueda de coincidencia exacta.</p>
<p>GET [base]/Patient?_id=123456</p></td>
</tr>
<tr>
<td><strong>Active</strong></td>
<td><p>Parámetro de tipo token, se espera que el valor proporcionado sea
un token que representa el estado de activación del paciente. En este
caso, los valores esperados serían "true" o "false", que indicarían si
el paciente está activo o no activo, respectivamente.</p>
<p>GET [base]/Patient?active=true</p></td>
</tr>
<tr>
<td><strong>family and given</strong></td>
<td><p>Parámetros de tipo cadena. Especifica el nombre de la persona
cuya información se está consultando. Se puede usar tanto el apellido,
el nombre o una combinación de ambos para filtrar por apellido, nombre o
ambos respectivamente.</p>
<p>GET [base]/Patient?family=Sanchez&amp;given=Juan</p></td>
</tr>
<tr>
<td><strong>identifier</strong></td>
<td><p>Parámetro “repetido” de tipo token. Representa un identificador
asociado al paciente cuya información está siendo consultada.</p>
<p>Particularmente, se puede instanciar de manera múltiple el parámetro
identifier dentro de una misma consulta. El paciente que se obtenga como
resultado deberá, por tanto, cumplir con todas y cada una de las
condiciones indicadas en el uso del parámetro identifier.</p>
<p>En caso de no especificar ningún token, la coincidencia se realizaría
en cualquiera de los identificadores definidos en el recurso
Patient.</p>
<p>GET
[base]/Patient?identifier=http://example.org/dni|12345678N</p></td>
</tr>
<tr>
<td><strong>Telecom</strong></td>
<td><p>Parámetro de tipo token. Especifica detalles relativos a
telecomunicaciones de la persona cuya información se está
consultando.</p>
<p>GET [base]/Patient?telecom=tel|123456789</p></td>
</tr>
<tr>
<td><strong>Birthdate</strong></td>
<td><p>Parámetro de tipo fecha. Especifica la fecha de nacimiento de la
persona cuya información se está consultando.</p>
<p>GET [base]/Patient?birthdate=1970-01-01</p></td>
</tr>
<tr>
<td><strong>Address</strong></td>
<td><p>Parámetro de tipo cadena. Representa una coincidencia con parte o
la totalidad de la dirección asociada con la persona que se está
consultando.</p>
<p>GET [base]/Patient?address=Preciados</p></td>
</tr>
<tr>
<td><p><strong>address-city,</strong></p>
<p><strong>address-country,</strong></p>
<p><strong>address-postalcode,</strong></p>
<p><strong>address-state</strong></p></td>
<td><p>Parámetros de tipo cadena. Representa una coincidencia con parte
de la dirección especificada asociada con la persona que se está
consultando.GET [base]/Patient?address-city=Madrid</p>
<p>GET [base]/Patient?address-country=Francia</p>
<p>GET [base]/Patient?address-postalcode=10001</p>
<p>GET [base]/Patient?address-state=Francia</p></td>
</tr>
<tr>
<td><strong>Gender</strong></td>
<td><p>Parámetro de tipo token. Especifica el género administrativo de
la persona cuya información se está consultando.</p>
<p>GET [base]/Patient?gender=male</p></td>
</tr>
<tr>
<td><strong>mothersMaidenName</strong></td>
<td><p>Parámetro de tipo cadena. Especifica el apellido de soltera de la
madre de la persona cuya información se está consultando.</p>
<p>GET [base]/Patient?mothersMaidenName=Sanchez</p></td>
</tr>
</tbody>
</table>
<h4 id="gestión-de-operaciones"><strong>Gestión de
Operaciones</strong></h4>
<p>Las operaciones de consulta a contemplar son las siguientes:</p>
<ul>
<li><p>C001 - Consulta de información usuario, con sus variantes:</p>
<ul>
<li><p>PC001. Consulta información actual ciudadano</p></li>
<li><p>PC002. Consulta información del histórico ciudadano</p></li>
<li><p>PC003. Consulta prestaciones ciudadano</p></li>
<li><p>PC004. Consulta información actual ciudadano y
prestaciones.</p></li>
</ul></li>
<li><p>C012 - Consulta de datos a INSS</p></li>
</ul>
<table border="1">
<colgroup>
<col style="width: 16%" />
<col style="width: 41%" />
<col style="width: 41%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;"><strong>Acciones</strong></th>
<th style="text-align: center;"><strong>Interfaz</strong></th>
<th style="text-align: center;"><strong>Respuesta</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td><p><strong>PC001 - Consulta información actual
ciudadano</strong></p>
<p>Esta acción implica la consulta de los datos actuales de un
ciudadano, utilizando para ello los criterios de búsqueda antes
indicados.</p></td>
<td>GET [base]/fhir/Patient?param1=value1&amp; …</td>
<td style="text-align: left;"><p>{</p>
<p>"resourceType": "Bundle",</p>
<p>"id": "d88b13f9fbc9bfcf99600be9bbd31786",</p>
<p>"meta": {</p>
<p>"lastUpdated": "2024-10-23T11:56:30.9365422+00:00"</p>
<p>},</p>
<p>"type": "searchset",</p>
<p>"entry": [</p>
<p>{</p>
<p>"fullUrl": "[Base]/Patient/32d6a6fa-bee0-4be7-91bc-15f974ecfcd1",</p>
<p>"resource": {</p>
<p>"resourceType": "Patient",</p>
<p>"id": "usuario123",</p>
<p>"identifier": [</p>
<p>{</p>
<p>"system": "http://example.org/sns",</p>
<p>"value": "123456789"</p>
<p>}</p>
<p>],</p>
<p>"name": [</p>
<p>{</p>
<p>"family": "Luque",</p>
<p>"given": [</p>
<p>"Juan"</p>
<p>]</p>
<p>}</p>
<p>],</p>
<p>"gender": "hombre"</p>
<p>]</p>
<p>}</p></td>
</tr>
<tr>
<td><p><strong>PC002 - Consulta información histórico
ciudadano</strong></p>
<p>Esta acción implica la consulta de los datos históricos de un
ciudadano, utilizando para ello el identificador interno</p></td>
<td>GET [base]/fhir/Patient/&lt;&lt;idInterno&gt;&gt;/_history</td>
<td style="text-align: left;"><p>{</p>
<p>"resourceType": "Bundle",</p>
<p>"id": "d88b13f9fbc9bfcf99600be9bbd31786",</p>
<p>"meta": {</p>
<p>"lastUpdated": "2024-10-23T11:56:30.9365422+00:00"</p>
<p>},</p>
<p>"type": "searchset",</p>
<p>"entry": [</p>
<p>{</p>
<p>"fullUrl": "[Base]/Patient/32d6a6fa-bee0-4be7-91bc-15f974ecfcd1",</p>
<p>"resource": {</p>
<p>"resourceType": "Patient",</p>
<p>"id": "usuario123",</p>
<p>"identifier": [</p>
<p>{</p>
<p>"system": "http://example.org/sns",</p>
<p>"value": "123456789"</p>
<p>}</p>
<p>],</p>
<p>"name": [</p>
<p>{</p>
<p>"family": "Luque",</p>
<p>"given": [</p>
<p>"Juan"</p>
<p>]</p>
<p>}</p>
<p>],</p>
<p>"gender": "hombre"</p>
<p>]</p>
<p>}</p></td>
</tr>
<tr>
<td><p><strong>PC003/PC004 Consulta prestaciones ciudadano</strong></p>
<p>Esta acción implica la consulta de los datos actuales de un
ciudadano, donde se incluyen también los datos relacionados con
coberturas. Dichos datos se modelan con las correspondientes
extensiones, tal y como se ha explicado en apartados
anteriores.</p></td>
<td>GET [base]/fhir/Patient?param1=value1&amp;param2=value2&amp;…</td>
<td style="text-align: left;"><p>{</p>
<p>"resourceType": "Bundle",</p>
<p>"id": "d88b13f9fbc9bfcf99600be9bbd31786",</p>
<p>"meta": {</p>
<p>"lastUpdated": "2024-10-23T11:56:30.9365422+00:00"</p>
<p>},</p>
<p>"type": "searchset",</p>
<p>"entry": [</p>
<p>{</p>
<p>"fullUrl": "[Base]/Patient/32d6a6fa-bee0-4be7-91bc-15f974ecfcd1",</p>
<p>"resource": {</p>
<p>"resourceType": "Patient",</p>
<p>"id": "usuario123",</p>
<p>"identifier": [</p>
<p>{</p>
<p>"system": "http://example.org/sns",</p>
<p>"value": "123456789"</p>
<p>}</p>
<p>],</p>
<p>"name": [</p>
<p>{</p>
<p>"family": "Luque",</p>
<p>"given": [</p>
<p>"Juan"</p>
<p>]</p>
<p>}</p>
<p>],</p>
<p>"gender": "hombre"</p>
<p>]</p>
<p>}</p></td>
</tr>
<tr>
<td><p><strong>C012 - Consulta de datos a INSS</strong></p>
<p>Esta acción implica la consulta de los datos actuales de un ciudadano
a la copia BADAS recibida del INSS utilizando para ello los criterios de
búsqueda antes mencionados.</p>
<p>Para esta operación se va a incluir también una cabecera que indique
que el origen de los datos es INSS, para distinguirla de la consulta
inicial.</p></td>
<td><p>GET [base]/fhir/Patient?param1=value1&amp;param2=value2&amp;…</p>
<p>Header: origen -- INSS</p></td>
<td style="text-align: left;"><p>{</p>
<p>"resourceType": "Bundle",</p>
<p>"id": "d88b13f9fbc9bfcf99600be9bbd31786",</p>
<p>"meta": {</p>
<p>"lastUpdated": "2024-10-23T11:56:30.9365422+00:00"</p>
<p>},</p>
<p>"type": "searchset",</p>
<p>"entry": [</p>
<p>{</p>
<p>"fullUrl": "[Base]/Patient/32d6a6fa-bee0-4be7-91bc-15f974ecfcd1",</p>
<p>"resource": {</p>
<p>"resourceType": "Patient",</p>
<p>"id": "usuario123",</p>
<p>"identifier": [</p>
<p>{</p>
<p>"system": "http://example.org/sns",</p>
<p>"value": "123456789"</p>
<p>}</p>
<p>],</p>
<p>"name": [</p>
<p>{</p>
<p>"family": "Luque",</p>
<p>"given": [</p>
<p>"Juan"</p>
<p>]</p>
<p>}</p>
<p>],</p>
<p>"gender": "hombre"</p>
<p>]</p>
<p>}</p></td>
</tr>
</tbody>
</table>
