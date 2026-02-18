//communication.fsh
Profile: InboundCommunication
Parent: Communication
Description: "Messages received"
* priority 1..1 SU
* payload 1..*
* payload.content[x] only Attachment
* payload.contentAttachment 1..1
* sender 0..1
* sender.identifier 0..1 MS
* sender.reference 0..1
* sender obeys ref-identifier-or-literal

* status = #completed (exactly)
* received 1..1
* recipient 1..*
* recipient.identifier 0..1 MS
* recipient.reference 0..1
* recipient obeys ref-identifier-or-literal


Instance: ExampleInboundMessage
InstanceOf: InboundCommunication
Usage: #example
Title: "Incoming SMS Response"
Description: "Message received from patient confirming appointment"

* status = #completed
* priority = #routine
* received = "2026-02-19T18:45:00+05:30"
* medium = #SMSWRIT

* sender.identifier.system = "http://example.org/mrn"
* sender.identifier.value = "MRN-10001"

* recipient.identifier.system = "http://example.org/system"
* recipient.identifier.value = "MSG-GATEWAY"

* payload[0].contentAttachment.contentType = #text/plain
* payload[0].contentAttachment.data = "Q29uZmlybWVkLiBJIHdpbGwgYXR0ZW5kLg=="
