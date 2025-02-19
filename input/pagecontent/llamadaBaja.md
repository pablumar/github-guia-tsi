<p><strong>Descripción</strong>: Modificación de los datos de un
ciudadano ya existente en TSI.</p>
<p><strong>Endpoint</strong>: /Patient/idPatient</p>
<p><strong>Método</strong>: PUT</p>
<p><strong>Cabeceras</strong>:</p>
<blockquote>
<p>Authorization: [token] (<a href="#seguridad">Ver descripción</a>)</p>
<p>Content-Type: application/json</p>
<p>Accept: application/fhir+json</p>
</blockquote>
<p>En el cuerpo de la petición se recibirá un <strong>recurso FHIR
Patient</strong> (<a href="#referencias">Referencia 1</a>) donde estará
toda la información que será almacenada posteriormente.</p>
<p>Para la comunicación de respuestas correctas, procesamiento correcto
del ciudadano, se retornará la cabecera ResponseCode con el valor 200, y
se puede enviar, si así se configura, el propio recurso FHIR Patient
modificado.</p>
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
