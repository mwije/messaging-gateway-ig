//communicationbundle.fsh
Profile: OutboundMessageBundle
Parent: Bundle
Id : messaging-order-bundle
Description: "Messages to be delivered"
* type = #transaction (exactly)
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry.resource 1..1
* entry contains
    message 1..* and
    entity 0..*
* entry[message].resource only OutboundCommunication
* entry[entity].resource only Patient or Practitioner or Group


Instance: ExampleOutboundBundle
InstanceOf: OutboundMessageBundle
Usage: #example
Title: "Outbound Transaction Bundle"
Description: "Transaction bundle submitting message and included patient resource"

* type = #transaction

// --- OutboundCommunication entry ---
* entry[0].fullUrl = "urn:uuid:msg-1"
* entry[0].resource = ExampleOutboundMessage
* entry[0].request.method = #POST
* entry[0].request.url = "CommunicationRequest"
* entry[0].resource.status = #active
* entry[0].resource.priority = #routine
* entry[0].resource.occurrenceDateTime = "2026-02-20T09:00:00+05:30"
* entry[0].resource.medium = #MSGWRIT

* entry[0].resource.recipient.reference = "urn:uuid:patient-1"

* entry[0].resource.payload[0].contentAttachment.contentType = #text/plain
* entry[0].resource.payload[0].contentAttachment.data = "QVBQT0lOVE1FTlQgUkVNSU5ERVI6IFBsZWFzZSBhdHRlbmQgeW91ciBjbGluaWMgYXQgOSBBTSAoMjB0aCBGZWJydWFyeSk="

// --- Patient entry ---
* entry[1].fullUrl = "urn:uuid:patient-1"
* entry[1].resource = ExamplePatientWhatsApp
* entry[1].request.method = #POST
* entry[1].request.url = "Patient"
* entry[1].resource.identifier.system = "http://example.org/mrn"
* entry[1].resource.identifier.value = "MRN-10001"
