Alias: $sexoCS = http://sns.gob.es/fhir/TSI/CodeSystem/sexoCS
Alias: $tipoDocumentoCS = http://sns.gob.es/fhir/TSI/CodeSystem/tipoDocumentoCS
Alias: $tipoDocumentoVS = http://sns.gob.es/fhir/TSI/ValueSet/tipoDocumentoVS

Instance: BBBBBBBBBB009934
InstanceOf: PatientSNS
Title: "Paciente Activo Europeo SNS"
Description: "Paciente Activo Europeo SNS"
Usage: #example
* identifier[0].use = #official
* identifier[=].type = $tipoDocumentoVS#CIP-SNS "CIP SNS"
* identifier[=].system = "2.16.724.4.40"
* identifier[=].value = "BBBBBBBBBB009931"
* active = true
* name.family = "Primero Segundo"
* name.given = "Paciente"
* gender = #male
* birthDate = "2001-05-17"
