<p><strong>Descripción del Escenario:</strong></p>
<p>El escenario propuesto es el siguiente: una CA a través de un
endpoint habilitado, quiere dar de baja un ciudadano utilizando la
transacción IHE ITI-93 "Patient Identity Feed FHIR” que permite la
creación, actualización y eliminación de recursos de paciente de manera
coherente y estandarizada, facilitando la interoperabilidad entre
sistemas de salud al proporcionar un formato común para el intercambio
de datos de identificación y demográficos del paciente.</p>
<p><strong>Operación involucrada:</strong>
<em>/Patient/idPatient</em></p>
<p><strong>Ejemplo:</strong></p>
<ul>
<li><p><strong>Solicitud</strong>: La aplicación origen realiza la
modificación de un ciudadano existente.</p></li>
</ul>
<p><em>PUT /Patient/BBBBBBBBBB009933</em></p>
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
<td><strong>DELETE</strong><br />
<br />
Esta acción implica la eliminación de un recurso de paciente del sistema
de salud. Se espera que esta acción se realice de manera cuidadosa y
solo en situaciones apropiadas, como en casos de duplicación de
registros o errores en la información.<br />
Por ejemplo: Eliminar un registro de paciente duplicado que se creó
accidentalmente en el sistema de salud, garantizando así la integridad
de los datos y evitando confusiones en la atención al paciente o
establecer el fallecimiento.</td>
<td>[base]/fhir/Patient/usuario123</td>
<td><p>{</p>
<p>"resourceType": "Patient",</p>
<p>"id": "usuario123",</p>
<p>"deceasedDateTime": "2023-01-15T12:00:00Z"</p>
<p>}</p></td>
</tr>
</tbody>
</table>
<ul>
<li><p><strong>Respuesta correcta esperada (Baja)</strong>:</p>
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
<p>"diagnostics": "Error en el proceso de baja"</p>
<p>}</p>
<p>]</p>
<p>}</p></th>
</tr>
</thead>
<tbody>
</tbody>
</table>
