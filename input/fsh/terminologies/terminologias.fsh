CodeSystem: IndicadorFarmaciaCS
Id: indicadorFarmaciaCS
Title: "CodeSystem Indicador Farmacia"
Description: "CodeSystem Indicador Farmacia"
* #TSI_001 "Exentos de aportación"
* #TSI_002 "Aportación de un 10%"
* #TSI_003 "Aportación de un 40%"
* #TSI_004 "Aportación de un 50%"
* #TSI_005 "Aportación de un 60%"
* #TSI_006 "Excluidos de farmacia (MUFACE, MUGEJU, ISFAS) farmacia mutualidades"
* #F_003 "NA Aportación de un 40%"
* #F_004 "NA Aportación de un 50%"
* #NOFAR "NA Aportacion de un 100%"

ValueSet: IndicadorFarmaciaVS
Id: indicadorFarmaciaVS
Title: "Indicador Farmacia ValueSet"
Description: "Indicador Farmacia ValueSet"
* include codes from system IndicadorFarmaciaCS

CodeSystem: SubIndicadorFarmaciaCS
Id: subIndicadorFarmaciaCS
Title: "CodeSystem Subindicador Farmacia"
Description: "CodeSystem SubIndicador Farmacia"
* #01 "Límite de aportación mensual de 8€"

ValueSet: SubIndicadorFarmaciaVS
Id: subIndicadorFarmaciaVS
Title: "ValueSet Subindicador Farmacia"
Description: "ValueSet Subindicador Farmacia"
* include codes from system SubIndicadorFarmaciaCS

CodeSystem: ComunidadesAutonomasCS
Id: comunidadesAutonomasCS
Title: "CodeSystem Comunidades Autónomas"
Description: "CodeSystem Comunidades Autónomas"
* #9 "Cataluña"

ValueSet: ComunidadesAutonomasVS
Id: comunidadesAutonomasVS
Title: "ValueSet Comunidades Autónomas"
Description: "ValueSet Comunidades Autónomas"
* include codes from system ComunidadesAutonomasCS

CodeSystem: PaisesCS
Id: paisesCS
Title: "CodeSystem Paises"
Description: "CodeSystem Paises"
* #724 "ESPAÑA"

ValueSet: PaisesVS
Id: paisesVS
Title: "ValueSet Paises"
Description: "ValueSet Paises"
* include codes from system PaisesCS

CodeSystem: NacionalidadesCS
Id: nacionalidadesCS
Title: "CodeSystem Nacionalidades"
Description: "CodeSystem Nacionalidades"
* #724 "ESPAÑA"

ValueSet: NacionalidadesVS
Id: nacionalidadesVS
Title: "ValueSet Nacionalidades"
Description: "ValueSet Nacionalidades"
* include codes from system NacionalidadesCS

CodeSystem: AseguradorasCS
Id: aseguradorasCS
Title: "CodeSystem Aseguradoras"
Description: "CodeSystem Aseguradoras"
* #3 "MUFACE"

ValueSet: AseguradorasVS
Id: aseguradorasVS
Title: "ValueSet Aseguradoras"
Description: "ValueSet Aseguradoras"
* include codes from system AseguradorasCS

CodeSystem: GestorasCS
Id: gestorasCS
Title: "CodeSystem Gestoras"
Description: "CodeSystem Gestoras"
* #9 "MUFACE"

ValueSet: GestorasVS
Id: gestorasVS
Title: "ValueSet Gestoras"
Description: "ValueSet Gestoras"
* include codes from system GestorasCS

CodeSystem: ColaboradorasCS
Id: colaboradorasCS
Title: "CodeSystem Colaboradoras"
Description: "CodeSystem Colaboradoras"
* #478 "COMUNIDAD DE MADRID"

ValueSet: ColaboradorasVS
Id: colaboradorasVS
Title: "ValueSet Colaboradoras"
Description: "ValueSet Colaboradoras"
* include codes from system ColaboradorasCS

CodeSystem: ProveedoresCS
Id: proveedoresCS
Title: "CodeSystem Proveedores"
Description: "CodeSystem Proveedores"
* #20 "DKV SEGUROS"

ValueSet: ProveedoresVS
Id: proveedoresVS
Title: "ValueSet Proveedores"
Description: "ValueSet Proveedores"
* include codes from system ProveedoresCS

CodeSystem: TitulosCS
Id: titulosCS
Title: "CodeSystem Titulos"
Description: "CodeSystem Titulos"
* #97 "MUFACE oción privada"

ValueSet: TitulosVS
Id: titulosVS
Title: "ValueSet Titulos"
Description: "ValueSet Titulos"
* include codes from system TitulosCS

CodeSystem: SituacionesCS
Id: situacionesCS
Title: "CodeSystem Situaciones"
Description: "CodeSystem Situaciones"
* #1 "ACTIVO"

ValueSet: SituacionesVS
Id: situacionesVS
Title: "ValueSet Situaciones"
Description: "ValueSet Situaciones"
* include codes from system SituacionesCS

CodeSystem: TipoViaCS
Id: tipoViaCS
Title: "CodeSystem Tipo de Via"
Description: "CodeSystem Tipo de Via"
* #1 "PLAZA"

ValueSet: TipoViaVS
Id: tipoViaVS
Title: "ValueSet Tipo de Via"
Description: "ValueSet Tipo de Via"
* include codes from system TipoViaCS

CodeSystem: EstadosCS
Id: estadosCS
Title: "CodeSystem Estado Paciente"
Description: "CodeSystem Estado Paciente"
* #1 "BAJA EN SERVICIO DE SALUD"
* #2 "BAJA POR DEFUNCION"

ValueSet: EstadosVS
Id: estadosVS
Title: "ValueSet Estado Paciente"
Description: "ValueSet Estado Paciente"
* include codes from system EstadosCS

CodeSystem: MunicipiosCS
Id: municipiosCS
Title: "CodeSystem Municipios"
Description: "CodeSystem Municipios"
* #2003000200 "ALBACETE"

ValueSet: MunicipiosVS
Id: municipiosVS
Title: "ValueSet Municipios"
Description: "ValueSet Municipios"
* include codes from system MunicipiosCS

CodeSystem: ProvinciasCS
Id: provinciasCS
Title: "CodeSystem Provincias"
Description: "CodeSystem Provincias"
* #2 "ALBACETE"

ValueSet: ProvinciasVS
Id: provinciasVS
Title: "ValueSet Provincias"
Description: "ValueSet Provincias"
* include codes from system ProvinciasCS

CodeSystem: EstadoIndefCS
Id: estadoIndefCS
Title: "Estado comprobación Fecha Defunción"
Description: "Estado comprobación Fecha Defunción"
* #0 "Sin validar"
* #1 "Pendiente validación manual"
* #2 "Validado manual"
* #3 "Validado automático"
* #4 "No validable"

ValueSet: EstadoIndefVS
Id: estadoIndefVS
Title: "ValueSet comprobación Fecha Defunción"
Description: "ValueSet comprobación Fecha Defunción"
* include codes from system EstadoIndefCS