Alias: $indicadorFarmaciaCS = http://sns.gob.es/fhir/TSI/CodeSystem/indicadorFarmaciaCS
Alias: $subIndicadorFarmaciaCS = http://sns.gob.es/fhir/TSI/CodeSystem/subIndicadorFarmaciaCS
Alias: $sexoCS = http://sns.gob.es/fhir/TSI/CodeSystem/sexoCS
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
Alias: $estadosCS = http://sns.gob.es/fhir/TSI/CodeSystem/estadosCS

Instance: BBBBBBBBBB009933
InstanceOf: PatientSNS
Title: "Paciente Pasivo Otros Motivos SNS"
Description: "Paciente Pasivo Otros Motivos SNS"
Usage: #example
* extension[0].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-pharmacy-indicator"
* extension[=].valueCoding = $indicadorFarmaciaCS#TSI_001 "Exentos de aportación"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-pharmacy-subindicator"
* extension[=].valueCoding = $subIndicadorFarmaciaCS#01 "Límite de aportación mensual de 8€"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-sexParameterForClinicalUse"
* extension[=].valueCoding = $sexoCS#1 "VARON"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-adscription-community"
* extension[=].valueCoding = $comunidadesCS#8 "CASTILLA LA MANCHA"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-birth-community"
* extension[=].valueCoding = $comunidadesCS#8 "CASTILLA LA MANCHA"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-birth-country"
* extension[=].valueCoding = $paisesCS#724 "ESPAÑA"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-nationality"
* extension[=].valueCoding = $nacionalidadCS#724 "ESPAÑOLA"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-inscription-community"
* extension[=].valueCoding = $comunidadesCS#8 "CASTILLA LA MANCHA"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-coverage-insurance"
* extension[=].valueCoding = $aseguradorasCS#3 "MUFACE"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-coverage-mgt"
* extension[=].valueCoding = $gestorasCS#9 "MUFACE"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-coverage-entities"
* extension[=].valueCoding = $colaboradorasCS#478 "COMUNIDAD DE MADRID"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-coverage-providers"
* extension[=].valueCoding = $proveedoresCS#20 "DKV SEGUROS"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-coverage-title"
* extension[=].valueCoding = $titulosCS#97 "MUFACE opción privada"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-coverage-situation"
* extension[=].valueCoding = $situacionesCS#1 "ACTIVO"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-passive-cause"
* extension[=].valueCoding = $estadosCS#1 "BAJA EN SERVICIO DE SALUD"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-passive-date"
* extension[=].valueDate = "2022-08-01"
* identifier[0].use = #official
* identifier[=].type = $tipoDocumentoCS#NNESP "DNI/NIE"
* identifier[=].system = "1.3.6.1.4.1.19126.3"
* identifier[=].value = "76200749R"
* identifier[+].use = #official
* identifier[=].type = $tipoDocumentoCS#CIP-SNS "CIP SNS"
* identifier[=].system = "2.16.724.4.40"
* identifier[=].value = "BBBBBBBBBB009932"
* identifier[+].use = #official
* identifier[=].type = $tipoDocumentoCS#CIP "CIP"
* identifier[=].system = "2.16.724.4.41"
* identifier[=].assigner.identifier.system = "2.16.724.4.42"
* identifier[=].assigner.identifier.value = "80724000130"
* active = false
* name.family = "Primero Segundo"
* name.family.extension[0].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/fathersFamily"
* name.family.extension[=].valueString = "Primero"
* name.family.extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/mothersFamily"
* name.family.extension[=].valueString = "Segundo"
* name.given = "Paciente"
* gender = #male
* birthDate = "2001-05-17"
* meta.lastUpdated = "2002-06-28T00:00:00Z"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-creation-date"
* extension[=].valueDate = "2022-08-01"
* extension[+].url = "http://sns.gob.es/fhir/TSI/StructureDefinition/patient-foreigner"
* extension[=].valueString = "0"
* address.line = "PLAZA MAYOR 20 13370"
* address.country = "ESPAÑA"
* address.city = "CIUDAD REAL"
* address.district = "CIUDAD REAL"
* address.state = "CASTILLA LA MANCHA"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType"
* address.line.extension[=].valueCoding = $tipoViaCS#1 "PLAZA"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "MAYOR"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "20"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox"
* address.line.extension[=].valueString = "13370"
* address.country.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* address.country.extension[=].valueCoding = $iso3166-1-2#724 "ESPAÑA"
* address.postalCode = "13370"