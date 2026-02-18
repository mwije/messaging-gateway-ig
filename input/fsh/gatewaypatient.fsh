Profile: GatewayPatient
Parent: Patient
Id: gateway-patient

* telecom only GatewayContactPoint


Instance: ExamplePatientWhatsApp
InstanceOf: GatewayPatient
Usage: #example
Title: "Patient with WhatsApp Contact"
Description: "Demonstrates ContactPoint.system = other with messaging channel extension"

* identifier.system = "http://example.org/mrn"
* identifier.value = "MRN-10001"

* name.family = "Perera"
* name.given[0] = "Nimal"

* telecom[0].system = #other
* telecom[0].value = "+94771234567"

* telecom[0].extension[0].url = "http://mwije.github.io/messaging-gateway-ig/StructureDefinition/messaging-channel-extension"
* telecom[0].extension[0].valueCode = #whatsapp

Instance: ExamplePatientSMS
InstanceOf: GatewayPatient
Usage: #example
Title: "Patient with SMS Contact"

* identifier.system = "http://example.org/mrn"
* identifier.value = "MRN-20001"

* name.family = "Silva"
* name.given[0] = "Anjali"

* telecom[0].system = #sms
* telecom[0].value = "+94770001122"
