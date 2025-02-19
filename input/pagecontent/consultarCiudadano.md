<h2 id="caso-de-uso-1-tsi-consulta-de-un-ciudadano">Caso de Uso 1: TSI –
Consulta de un ciudadano</h2>
<p><strong>Descripción del Escenario:</strong></p>
<p>El escenario propuesto es el siguiente: una aplicación móvil o un
sistema de salud, inicia una consulta de datos demográficos de un
paciente utilizando el mensaje "Mobile Patient Demographics Query
ITI-78". Esta consulta se envía al "Patient Demographics Supplier", que
es el sistema TSI en este contexto. El "Patient Demographics Supplier"
procesa la consulta y responde con los datos demográficos solicitados
utilizando el mensaje "Mobile Patient Demographics Query Response". Esta
respuesta incluye información relevante sobre el paciente, como su
nombre, fecha de nacimiento, género, dirección, entre otros datos
demográficos.</p>
<p>En resumen, el Flujo de Proceso Básico de la transacción ITI-78 en el
perfil PDQm implica la solicitud y respuesta de datos demográficos de
pacientes entre el consumidor y el proveedor de datos demográficos, con
el sistema TSI desempeñando el papel de proveedor de datos demográficos
en este escenario. Este flujo facilita la interoperabilidad y el
intercambio de información demográfica de pacientes entre sistemas de
salud y aplicaciones móviles, mejorando así la accesibilidad y la
coordinación de la atención médica.</p>
<p>El resultado de esta consulta proporcionará a los agentes la
información relativa al Servicio de salud del usuario, sus datos
personales y de domicilio, y los datos de cobertura de éste.</p>
<p><strong>Operación involucrada:</strong> <em>/Patient</em></p>
<p><strong>Ejemplo:</strong></p>
<ul>
<li><p><strong>Solicitud</strong>: La aplicación origen realiza una
consulta de un paciente con un identificador con un OID asignado
2.16.724.4.40, que corresponde a CIP-SNS, y un número de documento:
BBBBBBBBBB009933</p></li>
</ul>
<p><em>GET /Patient?identifier=2.16.724.4.40|BBBBBBBBBB009933</em></p>
<p><em>GET /Patient?_id=BBBBBBBBBB009933</em></p>
<p><strong>Respuesta esperada:</strong></p>
<p>El servidor proporcionará una lista de todos los ciudadanos que
cumplan los criterios indicados. Estos ciudadanos serían devueltos
dentro de una estructura Bundle.</p>
<table border="1">
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr>
<th style="text-align: left;"><p>{</p>
<p>"resourceType": "Bundle",</p>
<p>"id": "6e5ba51b79ef60ce805353eefbccd3c6",</p>
<p>"meta": {</p>
<p>"lastUpdated": "2024-10-07T15:55:14.9630438+00:00"</p>
<p>},</p>
<p>"type": "searchset",</p>
<p>"link": [</p>
<p>{</p>
<p>"relation": "next",</p>
<p>"url":
"[base]/Patient?_count=3&amp;ct=er97f5lRTbShgbGOqaGBkbmFubGJgamhgYmBgbm5YSwAAAD%2F%2Fw%3D%3D"</p>
<p>},</p>
<p>{</p>
<p>"relation": "self",</p>
<p>"url": "[base]/Patient?_count=3"</p>
<p>}</p>
<p>],</p>
<p>"entry": [</p>
<p>{</p>
<p>"fullUrl": "[base]/Patient/32d6a6fa-bee0-4be7-91bc-15f974ecfcd1",</p>
<p>"resource": {</p>
<p>"resourceType": "Patient",</p>
<p>"id": "BBBBBBBBBB009933",</p>
<p>"identifier": [</p>
<p>{</p>
<p>"system": "2.16.724.4.40",</p>
<p>"value": "BBBBBBBBBB009933"</p>
<p>}</p>
<p>],</p>
<p>"name": [</p>
<p>{</p>
<p>"family": "Luque",</p>
<p>"given": ["Juan"]</p>
<p>}</p>
<p>],</p>
<p>"gender": "male"</p>
<p>}</p>
<p>},</p>
<p>"search": {</p>
<p>"mode": "match"</p>
<p>}</p>
<p>]</p>
<p>}</p></th>
</tr>
</thead>
<tbody>
</tbody>
</table>
<ul>
<li><p><strong>Respuesta correcta esperada (Consulta)</strong>:</p>
<ul>
<li><p><strong>Código de Estado</strong>: 200 OK</p></li>
</ul></li>
<li><p><strong>Respuesta incorrecta:</strong></p>
<ul>
<li><p><strong>Cabecera HTTP</strong></p></li>
<li><p><strong>OperationOutcome</strong>:</p></li>
</ul></li>
</ul>
<table border="1">
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr>
<th style="text-align: left;"><p>{</p>
<p>"resourceType": "OperationOutcome",</p>
<p>"issue": [</p>
<p>{</p>
<p>"severity": "error",</p>
<p>"code": "not-found",</p>
<p>"diagnostics": "Ciudadano no encontrado"</p>
<p>}</p>
<p>]</p>
<p>}</p></th>
</tr>
</thead>
<tbody>
</tbody>
</table>