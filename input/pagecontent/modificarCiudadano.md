<p><strong>Descripción del Escenario:</strong></p>
<p>El escenario propuesto es el siguiente: una CA a través de un
endpoint habilitado, quiere modificar los datos de un ciudadano
utilizando la transacción IHE ITI-93 "Patient Identity Feed FHIR” que
permite la creación, actualización y eliminación de recursos de paciente
de manera coherente y estandarizada, facilitando la interoperabilidad
entre sistemas de salud al proporcionar un formato común para el
intercambio de datos de identificación y demográficos del paciente.</p>
<p><strong>Operación involucrada:</strong> <em>/Patient</em></p>
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
<td><p>UPDATE</p>
<p>Esta acción implica la actualización de un recurso de paciente
existente en el sistema de salud. Se espera que se proporcionen los
datos actualizados del paciente, que pueden incluir cambios en la
información demográfica, correcciones de errores o actualizaciones de
estados.</p>
<p>Por ejemplo: Actualizar la dirección de un paciente en el sistema de
salud después de que haya cambiado de domicilio, proporcionando la nueva
dirección y actualizando el registro correspondiente del paciente o
informando de un traslado temporal.</p></td>
<td>PUT [base]/fhir/Patient/ BBBBBBBBBB009933</td>
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
<p>"gender": "hombre",</p>
<p>"birthDate": "1980-01-01",</p>
<p>"address": [</p>
<p>{</p>
<p>"use": "home",</p>
<p>"city": "Sevilla"</p>
<p>}</p>
<p>]</p>
<p>}</p></td>
</tr>
</tbody>
</table>
<ul>
<li><p><strong>Respuesta correcta esperada (Modificación)</strong>:</p>
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
<p>"diagnostics": "Ciudadano no actualizado correctamente"</p>
<p>}</p>
<p>]</p>
<p>}</p></th>
</tr>
</thead>
<tbody>
</tbody>
</table>
