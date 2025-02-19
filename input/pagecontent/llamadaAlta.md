<p><strong>Descripción:</strong> Dar de alta un ciudadano en el SNS que
proviene de una CA o una mutualidad. Al ser un nuevo ciudadano se le
genera un nuevo CIP SNS.</p>
<p><strong>Mensaje de Entrada</strong>: A006 – A007</p>
<p><strong>Endpoint:</strong> /Patient</p>
<p><strong>Método:</strong> POST</p>
<p><strong>Cabeceras</strong>:</p>
<blockquote>
<p>Authorization: [token]</p>
<p>Content-Type: application/json</p>
<p>Accept: application/fhir+json</p>
</blockquote>
<p>En el cuerpo de la petición se recibirá un <strong>recurso FHIR
Patient</strong> (<a href="#referencias">Referencia 1</a>) donde estará
toda la información que será almacenada posteriormente.</p>
<p>Para la comunicación de respuestas correctas, procesamiento correcto
del ciudadano, se retornará la cabecera ResponseCode con el valor 200, y
se puede enviar, si así se configura, el propio recurso FHIR Patient
creado.</p>
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
<p>En el caso de <strong>respuestas de error</strong> se hará uso del
<strong>recurso FHIR OperationOutcome</strong> ya que proporciona la
estructura necesaria para cubrir las actuales respuestas de error.</p>
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
<h4 id="gestión-de-operaciones-1"><strong>Gestión de
Operaciones</strong></h4>
<p>Las operaciones de alta a contemplar son las siguientes:</p>
<ul>
<li><p>A006 - Alta online para asignación de Código sns y gestión
centralizada cip (síncrono)</p></li>
<li><p>A007 - Alta online para asignación de Código sns
(síncrono)</p></li>
</ul>
<table border="1">
<colgroup>
<col style="width: 16%" />
<col style="width: 51%" />
<col style="width: 32%" />
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
<td><p><strong>A006 – Alta online asignación CIPSNS y gestión
centralizada CIP</strong></p>
<p>Esta acción implica el alta de un ciudadano en TSI donde se le asigna
un CIPSNS y se gestiona de modo centralizado el CIP.</p></td>
<td><p>POST [base]/fhir/Patient</p>
<p>Header: Gestion : “Centralizada”</p></td>
<td style="text-align: left;"><p>{</p>
<p>"resourceType": "Patient",</p>
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
<tr>
<td><p><strong>A007 – Alta online asignación CIPSNS</strong></p>
<p>Esta acción implica el alta de un ciudadano en TSI donde se le asigna
un CIPSNS.</p></td>
<td><p>POST [base]/fhir/Patient</p>
<p>Header: Gestion : “No Centralizada”</p></td>
<td style="text-align: left;"><p>{</p>
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