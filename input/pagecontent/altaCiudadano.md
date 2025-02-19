<figure>
  {% include overview.svg %}
</figure>
<br clear="all">

<p><strong>Descripción del Escenario:</strong></p>
<p>El escenario propuesto es el siguiente: una CA a través de un
endpoint habilitado, quiere dar de alta un ciudadano utilizando la
transacción IHE ITI-93 "Patient Identity Feed FHIR” que permite la
creación, actualización y eliminación de recursos de paciente de manera
coherente y estandarizada, facilitando la interoperabilidad entre
sistemas de salud al proporcionar un formato común para el intercambio
de datos de identificación y demográficos del paciente.</p>
<p><strong>Operación involucrada:</strong> <em>/Patient</em></p>
<p><strong>Ejemplo:</strong></p>
<ul>
<li><p><strong>Solicitud</strong>: La aplicación origen realiza alta de
un nuevo ciudadano.</p></li>
</ul>
<p><em>POST /Patient</em></p>
<table border="1">
<colgroup>
<col style="width: 31%" />
<col style="width: 26%" />
<col style="width: 41%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;"><strong>Acciones</strong></th>
<th style="text-align: center;"><strong>Interfaz</strong></th>
<th style="text-align: center;"><strong>RequestBody</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td><p><strong>CREATE</strong></p>
<p>Esta acción implica la creación de un nuevo recurso de paciente en el
sistema de salud. Se espera que se proporcionen todos los datos
necesarios para identificar al paciente y establecer su registro en el
sistema.<br />
<br />
Por ejemplo: Crear un nuevo recurso de paciente para un paciente recién
registrado en el sistema de salud, proporcionando su información
demográfica, identificadores únicos, como el número de seguridad social
(SNS), y cualquier otra información relevante.</p></td>
<td>POST [base]/fhir/Patient</td>
<td><p>{</p>
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
<p>"given": ["Juan"]</p>
<p>}</p>
<p>],</p>
<p>"gender": "hombre"</p>
<p>}</p></td>
</tr>
</tbody>
</table>
<ul>
<li><p><strong>Respuesta correcta esperada (Alta)</strong>:</p>
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
<p>"diagnostics": "Ciudadano no registrado correctamente"</p>
<p>}</p>
<p>]</p>
<p>}</p></th>
</tr>
</thead>
<tbody>
</tbody>
</table>
