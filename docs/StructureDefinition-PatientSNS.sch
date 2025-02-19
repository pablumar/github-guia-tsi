<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Patient
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Patient</sch:title>
    <sch:rule context="f:Patient">
      <sch:assert test="count(f:id) &gt;= 1">id: minimum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-creation-datetime']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-creation-datetime': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-sexoNacimiento']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-sexoNacimiento': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-dniDup']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-dniDup': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-adscription-community']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-adscription-community': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-birth-community']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-birth-community': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-birth-country']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-birth-country': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/patient-nationality']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/patient-nationality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-pharmacy-indicator']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-pharmacy-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-pharmacy-subindicator']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-pharmacy-subindicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-inscription-community']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-inscription-community': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-coverage-insurance']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-coverage-insurance': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-coverage-mgt']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-coverage-mgt': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-coverage-entities']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-coverage-entities': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-coverage-providers']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-coverage-providers': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-coverage-title']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-coverage-title': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-coverage-situation']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-coverage-situation': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-passive-cause']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-passive-cause': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-passive-date']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-passive-date': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-temporalidad-start-date']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-temporalidad-start-date': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-temporalidad-end-date']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-temporalidad-end-date': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-temporalidad-ca']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-temporalidad-ca': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-foreigner']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-foreigner': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/estado-comprobacion-indef']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/estado-comprobacion-indef': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:name) &gt;= 1">name: minimum cardinality of 'name' is 1</sch:assert>
      <sch:assert test="count(f:birthDate) &gt;= 1">birthDate: minimum cardinality of 'birthDate' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:meta</sch:title>
    <sch:rule context="f:Patient/f:meta">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:versionId) &lt;= 1">versionId: maximum cardinality of 'versionId' is 1</sch:assert>
      <sch:assert test="count(f:lastUpdated) &lt;= 1">lastUpdated: maximum cardinality of 'lastUpdated' is 1</sch:assert>
      <sch:assert test="count(f:source) &lt;= 1">source: maximum cardinality of 'source' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:identifier</sch:title>
    <sch:rule context="f:Patient/f:identifier">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 1">assigner: maximum cardinality of 'assigner' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:name</sch:title>
    <sch:rule context="f:Patient/f:name">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:family) &lt;= 1">family: maximum cardinality of 'family' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:name/f:family</sch:title>
    <sch:rule context="f:Patient/f:name/f:family">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-surname1']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-surname1': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-surname2']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-surname2': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:address</sch:title>
    <sch:rule context="f:Patient/f:address">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:city) &gt;= 1">city: minimum cardinality of 'city' is 1</sch:assert>
      <sch:assert test="count(f:city) &lt;= 1">city: maximum cardinality of 'city' is 1</sch:assert>
      <sch:assert test="count(f:district) &gt;= 1">district: minimum cardinality of 'district' is 1</sch:assert>
      <sch:assert test="count(f:district) &lt;= 1">district: maximum cardinality of 'district' is 1</sch:assert>
      <sch:assert test="count(f:state) &lt;= 1">state: maximum cardinality of 'state' is 1</sch:assert>
      <sch:assert test="count(f:postalCode) &gt;= 1">postalCode: minimum cardinality of 'postalCode' is 1</sch:assert>
      <sch:assert test="count(f:postalCode) &lt;= 1">postalCode: maximum cardinality of 'postalCode' is 1</sch:assert>
      <sch:assert test="count(f:country) &lt;= 1">country: maximum cardinality of 'country' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:address/f:line</sch:title>
    <sch:rule context="f:Patient/f:address/f:line">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-address-bis']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-address-bis': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-address-bloque']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-address-bloque': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-address-escalera']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-address-escalera': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-address-piso']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-address-piso': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-address-puerta']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-address-puerta': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-address-municipio']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-address-municipio': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-address-provincia']) &lt;= 1">extension with URL = 'http://sns.gob.es/fhir/tsi/StructureDefinition/patient-address-provincia': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:address/f:country</sch:title>
    <sch:rule context="f:Patient/f:address/f:country">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
