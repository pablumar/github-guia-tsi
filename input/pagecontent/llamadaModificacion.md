Descripción: Modificación de los datos de un ciudadano ya existente en TSI.
Endpoint: /Patient/idPatient
Método: PUT
Cabeceras:
Authorization: [token] (Ver descripción)
Content-Type: application/json
Accept: application/fhir+json

En el cuerpo de la petición se recibirá un recurso FHIR Patient (Referencia 1) donde estará toda la información que será almacenada posteriormente.
Para la comunicación de respuestas correctas, procesamiento correcto del ciudadano, se retornará la cabecera ResponseCode con el valor 200, y se puede enviar, si así se configura, el propio recurso FHIR Patient modificado.
Como resultado del servicio se devolverán los siguientes datos:
-	Cabeceras HTTP
	200  Operación realizada satisfactoriamente.
	401  No se ha recibido la cabecera Authorization, o bien, dicha cabecera no es correcta.
	511  Problemas con el sistema 
	512  Agente no valido 
	513  Cola saturada 
	514  Sistema bloqueado 
	515  Error firma no valida 
	516  Operación no registrada 
	517  Agente bloqueado 

En el caso de respuestas de error se hará uso del recurso FHIR OperationOutcome ya que proporciona la estructura necesaria para cubrir las actuales respuestas de error.
Origen	Recurso FHIR	Descripcion
Error 	OperationOutcome
  	Recurso para modelar toda la información asociada al error que se ha producido, o bien si la operación ha sido correcta, indicando tal hecho.
Codigo_error 	OperationOutcome.issue.code	Código de éxito/error. 
Descripcion_error 	OperationOutcome.issue.details	Descripción del éxito/error.
Nivel de error	OperationOutcome.issue.severity	Nivel de error
Diagnóstico	OperationOutcome.issue.diagnostics	Diagnóstico

