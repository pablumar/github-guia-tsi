// Perfil
Profile: PatientSNS
Parent: Patient
Id: PatientSNS
Title:    "Paciente"
Description: """Este perfil define como se modela un recurso FHIR Patient en FHIR como propósito de esta guía."""

* insert SetFmmandStatusRule ( 2, trial-use)
* id ^short = "Identificador interno del paciente y que servirá como referencia a la hora de recuperarlo por id interno del recurso"
* id 1..1
* identifier ^short = "Identificadores del Paciente"
* identifier MS SU
* identifier.system MS SU
* identifier.value MS SU
* deceased[x] only dateTime
* deceased[x] 0..1 MS
* deceased[x] ^short = "Fecha de defunción del paciente"
* active ^short = "Estado del paciente: True --> Activo, False --> Pasivo"
* meta.lastUpdated ^short = "Fecha de última actualización"

* name 1..* 
* name ^requirements = "Need to be able to track the patient by multiple names. Examples are your official name and a partner name.\r\nThe Alphabetic representation of the name SHALL be always provided"
* name.text // // MS according to IPS
* name.text ^definition = "Text representation of the full name. Due to the cultural variance around the world a consuming system may not know how to present the name correctly; moreover not all the parts of the name go in given or family. Creators are therefore strongly encouraged to provide through this element a presented version of the name. Future versions of this guide may require this element"
* name.family ^short = "Family name"  
* name.family ^definition = """Family name. When more the family is composed by more than one names, this element documents the full composed family name with the proper * name.familyrder. The parts are recorded in the fhater and mother family names extensions."""
* name.family ^example.label = "spanish"
* name.family ^example.valueString = "Valero Iglesias"
* name.given ^short = "Given names. Includes middle names" 
* name.text ^short = "Text representation of the full name."

* name.family.extension contains 
    patient-surname1 named patient-surname1 0..1 and
    patient-surname2 named patient-surname2 0..1

* name.family MS SU 
* name.given MS SU

* address.line.extension contains
    $TipoVia named iso21090-ADXP-streetNameType 0..1 and
    $NombreVia named iso21090-ADXP-streetName 0..1 and
    $Numero named iso21090-ADXP-houseNumber 0..1 and
    $CodigoPostal named iso21090-ADXP-postBox 0..1 and
    Bis named patient-address-bis 0..1 and
    Bloque named patient-address-bloque 0..1 and
    Escalera named patient-address-escalera 0..1 and
    Piso named patient-address-piso 0..1 and
    Puerta named patient-address-puerta 0..1 and
    Municipio named patient-address-municipio 0..1 and
    Provincia named patient-address-provincia 0..1

* address.country.extension contains 
    $PaisAfiliacion named iso21090-SC-coding 0..1

* extension contains
    CreationDateTime named patient-creation-datetime 0..1 and 
    SexoNacimiento named patient-sexoNacimiento 0..1 and
    FlagDuplicadoDNI named patient-dniDup 0..1 and 
    CAAdscripcion named patient-adscription-community 0..1 and
    CANacimiento named patient-birth-community 0..1 and
    PaisNacimiento named patient-birth-country 0..1 and
    $Nacionalidad named patient-nationality 0..1 and
    IndicadorFarmacia named patient-pharmacy-indicator 0..1 and
    SubIndicadorFarmacia named patient-pharmacy-subindicator 0..1 and
    CAInscCoberturas named patient-inscription-community 0..1 and
    EntidadesAseguradoras named patient-coverage-insurance 0..1 and
    EntidadesGestoras named patient-coverage-mgt 0..1 and
    EntidadesColaboradoras named patient-coverage-entities 0..1 and
    Proveedores named patient-coverage-providers 0..1 and
    Titulo named patient-coverage-title 0..1 and
    Situacion named patient-coverage-situation 0..1 and
    CausaPasivo named patient-passive-cause 0..1 and
    FechaPasoPasivo named patient-passive-date 0..1 and
    FechaInicioTemporalidad named patient-temporalidad-start-date 0..1 and
    FechaFinTemporalidad named patient-temporalidad-end-date 0..1 and
    CATemporalidad named patient-temporalidad-ca 0..1 and
    Extranjero named patient-foreigner 0..1 and
    EstadoComprobacion named estado-comprobacion-indef 0..1

* extension[patient-dniDup].valueBoolean only boolean
* extension[CAAdscripcion].valueCoding only Coding
* extension[CANacimiento].valueCoding only Coding
* extension[PaisNacimiento].valueCoding only Coding
* extension[IndicadorFarmacia].valueCoding only Coding
* extension[SubIndicadorFarmacia].valueCoding only Coding
* extension[CAInscCoberturas].valueCoding only Coding
* extension[EntidadesAseguradoras].valueCoding only Coding
* extension[EntidadesGestoras].valueCoding only Coding
* extension[EntidadesColaboradoras].valueCoding only Coding
* extension[Proveedores].valueCoding only Coding
* extension[Titulo].valueCoding only Coding
* extension[CausaPasivo].valueCoding only Coding
* extension[FechaPasoPasivo].valueDate only date
* extension[CreationDateTime].valueDate only date
* extension[Extranjero].valueString only string
* extension[EstadoComprobacion].valueCoding only Coding
* extension[SexoNacimiento].valueCoding only Coding

* address.line.extension[Bis].valueString only string
* address.line.extension[Bloque].valueString only string
* address.line.extension[Escalera].valueString only string
* address.line.extension[Piso].valueString only string
* address.line.extension[Puerta].valueString only string
* address.line.extension[Municipio].valueCoding only Coding
* address.line.extension[Provincia].valueCoding only Coding
* address.city 1..1 
* address.district 1..1
* address.postalCode 1..1
* address.city ^short = "Municipio"
* address.district ^short = "Provincia"
* telecom ^short = "Datos de contacto del paciente, email, teléfono1 y teléfono2"

* extension[FechaInicioTemporalidad].valueDate only date
* extension[FechaFinTemporalidad].valueDate only date
* extension[CATemporalidad].valueCoding only Coding

* gender ^short = "male | female | other | unknown"
* gender MS SU
* gender from AdministrativeGender (required)
* birthDate 1..1 
* birthDate ^short = "Fecha de nacimiento"
* birthDate MS SU