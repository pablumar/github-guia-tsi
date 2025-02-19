Alias: $indicadorFarmaciaCS = http://sns.gob.es/fhir/TSI/CodeSystem/indicadorFarmaciaCS
Alias: $subIndicadorFarmaciaCS = http://sns.gob.es/fhir/TSI/CodeSystem/subIndicadorFarmaciaCS
Alias: $sexoCS = http://sns.gob.es/fhir/TSI/CodeSystem/sexoCS
Alias: $sexoNacimientoCS = http://sns.gob.es/fhir/TSI/CodeSystem/sexoNacimientoCS
Alias: $comunidadesCS = http://sns.gob.es/fhir/TSI/CodeSystem/comunidadesCS
Alias: $tipoDocumentoCS = http://sns.gob.es/fhir/TSI/CodeSystem/tipoDocumentoCS
Alias: $tipoDocumentoVS = http://sns.gob.es/fhir/TSI/ValueSet/tipoDocumentoVS
Alias: $paisesCS = http://sns.gob.es/fhir/TSI/CodeSystem/paisesCS
Alias: $nacionalidadCS = http://sns.gob.es/fhir/TSI/CodeSystem/nacionalidadesCS
Alias: $aseguradorasCS = http://sns.gob.es/fhir/TSI/CodeSystem/aseguradorasCS
Alias: $gestorasCS = http://sns.gob.es/fhir/TSI/CodeSystem/gestorasCS
Alias: $colaboradorasCS = http://sns.gob.es/fhir/TSI/CodeSystem/colaboradorasCS
Alias: $proveedoresCS = http://sns.gob.es/fhir/TSI/CodeSystem/proveedoresCS
Alias: $titulosCS = http://sns.gob.es/fhir/TSI/CodeSystem/titulosCS
Alias: $situacionesCS = http://sns.gob.es/fhir/TSI/CodeSystem/situacionesCS
Alias: $tipoViaCS = http://sns.gob.es/fhir/TSI/CodeSystem/tipoViaCS
Alias: $municipiosCS = http://sns.gob.es/fhir/TSI/CodeSystem/municipiosCS
Alias: $provinciasCS = http://sns.gob.es/fhir/TSI/CodeSystem/provinciasCS
Alias: $EstadoIndefVS = http://sns.gob.es/fhir/TSI/CodeSystem/estadoIndefVS
Alias: $eHDSICountry = http://terminology.ehdsi.eu/ValueSet/eHDSICountry

Instance: BBBBBBBBBB000432
InstanceOf: PatientSNS
Usage: #example
* extension[0].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-sexoNacimiento"
* extension[=].valueCoding = $sexoNacimientoCS#2 "MUJER"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-birth-country"
* extension[=].valueCoding = $paisesCS#724 "España"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-coverage-insurance"
* extension[=].valueCoding = $aseguradorasCS#1 "INSS"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-coverage-mgt"
* extension[=].valueCoding = $gestorasCS#22 "SERVICIO MURCIANO DE SALUD"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-coverage-providers"
* extension[=].valueCoding = $proveedoresCS#34 "SERVICIO MURCIANO DE SALUD"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-coverage-title"
* extension[=].valueCoding = $titulosCS#19 "GENERICO SEGURIDAD SOCIAL"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-coverage-situation"
* extension[=].valueCoding = $situacionesCS#1 "ACTIVO"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-creation-date"
* extension[=].valueDate = "2012-07-10"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/estado-comprobacion-indef"
* extension[=].valueCoding = $EstadoIndefVS#3 "Validado automático"
* identifier[0].use = #official
* identifier[=].type = $tipoDocumentoVS#CIP-SNS "CIP SNS"
* identifier[=].system = "2.16.724.4.40"
* identifier[=].value = "BBBBBBBBBB000432"
* identifier[+].use = #official
* identifier[=].type = $tipoDocumentoVS#NNESP "DNI / NIE"
* identifier[=].system = "1.3.6.1.4.1.19126.3"
* identifier[=].value = "23054004T"
* identifier[+].use = #official
* identifier[=].type = $tipoDocumentoVS#NASS_TITULAR "NASS_TITULAR"
* identifier[=].system = "1.3.6.1.4.1.19126.4"
* identifier[=].value = "010000014123"
* identifier[+].use = #official
* identifier[=].type = $tipoDocumentoVS#CIP "CIP"
* identifier[=].system = "2.16.724.4.41"
* identifier[=].assigner.identifier.system = "2.16.724.4.42"
* active = true
* name.family = "FERNANDEZ FERNANDEZ"
* name.family.extension[0].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-surname1"
* name.family.extension[=].valueString = "FERNANDEZ"
* name.family.extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-surname2"
* name.family.extension[=].valueString = "FERNANDEZ"
* name.given = "CARLOTA"
* gender = #female
* deceasedDateTime = "2020-10-04"
* birthDate = "1985-11-03"
* telecom[0].system = #phone
* telecom[=].value = "983/117722"
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[+].system = #phone
* telecom[=].value = "983117722"
* telecom[=].use = #work
* telecom[=].rank = 2
* telecom[+].system = #phone
* telecom[=].value = "983/223344"
* telecom[=].use = #work
* telecom[=].rank = 3
* telecom[+].system = #phone
* telecom[=].value = "983223344"
* telecom[=].use = #work
* telecom[=].rank = 4
* telecom[+].system = #email
* telecom[=].value = "email@email.com"
* telecom[=].use = #home
* telecom[=].rank = 5
* address.line = " CAÑADA DE GALLEGO 0 CONSULTORIO SMS CONSULTORIO SMS 30026000601 30"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "CAÑADA DE GALLEGO"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "0"
* address.line.extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-address-bloque"
* address.line.extension[=].valueString = "CONSULTORIO SMS"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox"
* address.line.extension[=].valueString = "30876"
* address.line.extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-address-city"
* address.line.extension[=].valueCoding = $municipiosCS#30026000601 "CAÑADA DE GALLEGO"
* address.line.extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-address-district"
* address.line.extension[=].valueCoding = $provinciasCS#30 "MURCIA"
* address.city = "MURCIA"
* address.country = "España"
* address.district = "Madrid"
* address.postalCode = "23080"
* address.country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* address.country.extension.valueCoding = $eHDSICountry#ES "SPAIN"