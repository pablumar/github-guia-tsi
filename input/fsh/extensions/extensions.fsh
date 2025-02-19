Extension: Apellido1
Id:   patient-surname1
Title:  "Primer Apellido"
Description: "Primer Apellido"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient.name.family)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only string

Extension: Apellido2
Id:   patient-surname2
Title:  "Segundo Apellido"
Description: "Segundo Apellido"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient.name.family)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only string

Extension: FlagDuplicadoDNI
Id:   patient-dniDup
Title:  "Flag Duplicado DNI"
Description: "Flag Duplicado DNI"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only boolean

Extension: CAAdscripcion
Id:   patient-adscription-community
Title:  "CA Adscripción paciente"
Description: "CA Adscripción paciente"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Coding
* value[x] from ComunidadesAutonomasVS (example)

Extension: CANacimiento
Id:   patient-birth-community
Title:  "CA Nacimiento paciente"
Description: "CA Nacimiento paciente"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Coding
* value[x] from ComunidadesAutonomasVS (example)

Extension: PaisNacimiento
Id:   patient-birth-country
Title:  "Pais Nacimiento paciente"
Description: "País Nacimiento paciente"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Coding
* value[x] from PaisesVS (example)

Extension: IndicadorFarmacia
Id:   patient-pharmacy-indicator
Title:  "Indicador Farmacia paciente"
Description: "Indicador Farmacia paciente"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Coding
* value[x] from IndicadorFarmaciaVS (example)

Extension: SubIndicadorFarmacia
Id:   patient-pharmacy-subindicator
Title:  "SubIndicador Farmacia paciente"
Description: "SubIndicador Farmacia paciente"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Coding
* value[x] from SubIndicadorFarmaciaVS (example)

Extension: CAInscCoberturas
Id:   patient-inscription-community
Title:  "CA Inscripción coberturas paciente"
Description: "CA Inscripción coberturas paciente"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Coding
* value[x] from ComunidadesAutonomasVS (example)

Extension: EntidadesAseguradoras
Id:   patient-coverage-insurance
Title:  "Entidades Aseguradoras coberturas paciente"
Description: "Entidades Aseguradoras coberturas paciente"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Coding
* value[x] from AseguradorasVS (example)

Extension: EntidadesGestoras
Id:   patient-coverage-mgt
Title:  "Entidades Gestoras coberturas paciente"
Description: "Entidades Gestoras coberturas paciente"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Coding
* value[x] from GestorasVS (example)

Extension: EntidadesColaboradoras
Id:   patient-coverage-entities
Title:  "Entidades Colaboradoras coberturas paciente"
Description: "Entidades Colaboradoras coberturas paciente"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Coding
* value[x] from ColaboradorasVS (example)

Extension: Proveedores
Id:   patient-coverage-providers
Title:  "Proveedores coberturas paciente"
Description: "Proveedores coberturas paciente"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Coding
* value[x] from ProveedoresVS (example)

Extension: Titulo
Id:   patient-coverage-title
Title:  "Titulo coberturas paciente"
Description: "Titulo coberturas paciente"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Coding
* value[x] from TitulosVS (example)

Extension: Situacion
Id:   patient-coverage-situation
Title:  "Situación coberturas paciente"
Description: "Situación coberturas paciente"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Coding
* value[x] from SituacionesVS (example)

Extension: TipoVia
Id:   iso21090-ADXP-streetNameType
Title:  "Tipo Via"
Description: "Tipo Via"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient.address.line)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Coding
* value[x] from TipoViaVS (example)

Extension: NombreVia
Id:   iso21090-ADXP-streetName
Title:  "Nombre Via"
Description: "Nombre Via"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient.address.line)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only string

Extension: Numero
Id:   iso21090-ADXP-houseNumber
Title:  "Numero"
Description: "Numero"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient.address.line)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only string

Extension: CodigoPostal
Id:   iso21090-ADXP-postBox
Title:  "Codigo Postal"
Description: "Codigo Postal"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient.address.line)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only string

Extension: Bis
Id:   patient-address-bis
Title:  "Bis"
Description: "Bis"
* insert ExtensionContext(Patient.address.line)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only string

Extension: Bloque
Id:   patient-address-bloque
Title:  "Bloque"
Description: "Bloque"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient.address.line)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only string

Extension: Escalera
Id:   patient-address-escalera
Title:  "Escalera"
Description: "Escalera"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient.address.line)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only string

Extension: Piso
Id:   patient-address-piso
Title:  "Piso"
Description: "Piso"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient.address.line)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only string

Extension: Puerta
Id:   patient-address-puerta
Title:  "Puerta"
Description: "Puerta"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient.address.line)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only string

Extension: Municipio
Id:   patient-address-municipio
Title:  "Municipio"
Description: "Municipio"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient.address)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Coding
* value[x] from MunicipiosVS (example)

Extension: Provincia
Id:   patient-address-provincia
Title:  "Provincia"
Description: "Provincia"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient.address)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Coding
* value[x] from ProvinciasVS (example)

Extension: FechaInicioTemporalidad
Id:   patient-temporalidad-start-date
Title:  "Fecha inicio temporalidad"
Description: "Fecha inicio temporalidad"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only date

Extension: FechaFinTemporalidad
Id:   patient-temporalidad-end-date
Title:  "Fecha fin temporalidad"
Description: "Fecha fin temporalidad"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only date

Extension: CATemporalidad
Id:   patient-temporalidad-ca
Title:  "CA Temporalidad"
Description: "CA Temporalidad"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Coding
* value[x] from ComunidadesAutonomasVS (example)

Extension: CausaPasivo
Id:   patient-passive-cause
Title:  "Motivo Causa Pasivo"
Description: "Motivo Causa Pasivo"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Coding
* value[x] from EstadosVS (example)

Extension: FechaPasoPasivo
Id:   patient-passive-date
Title:  "Fecha Paso a Pasivo"
Description: "Fecha Paso a Pasivo"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only date

Extension: CreationDateTime
Id:   patient-creation-datetime
Title:  "Fecha de alta del registro. Formato yyyy-mm-dd"
Description: "Fecha de alta del registro. Formato yyyy-mm-dd"
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only date

Extension: Extranjero
Id:   patient-foreigner
Title:  "Extranjero"
Description: "Extranjero"
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only string

Extension: EstadoComprobacion
Id:   estado-comprobacion-indef
Title:  "Estado comprobación fecha defunción"
Description: "Estado comprobación fecha defunción"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Coding
* value[x] from EstadoIndefVS (example)

Extension: SexoNacimiento
Id:   patient-sexoNacimiento
Title:  "Sexo Nacimiento"
Description: "Sexo Nacimiento"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Coding