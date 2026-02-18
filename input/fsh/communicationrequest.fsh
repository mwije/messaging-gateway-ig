//communicationrequest.fsh
Profile: OutboundCommunication
Parent: CommunicationRequest
Description: "Messages to be delivered"
* priority 1..1 SU
* payload 1..*
  * content[x] only Attachment
* recipient 1..*
* recipient.identifier 0..1 MS
* recipient.reference 0..1
* recipient obeys ref-identifier-or-literal

* occurrence[x] only dateTime
* occurrenceDateTime 1..1
* status 1..1

Instance: ExampleOutboundMessage
InstanceOf: OutboundCommunication
Usage: #example
Title: "Scheduled WhatsApp Reminder"
Description: "Outbound reminder message to a patient via WhatsApp"

* status = #active
* priority = #routine
* occurrenceDateTime = "2026-02-20T09:00:00+05:30"
* medium = #MSGWRIT

* recipient.identifier.system = "http://example.org/mrn"
* recipient.identifier.value = "MRN-10001"

* payload[0].contentAttachment.contentType = #text/plain
* payload[0].contentAttachment.data = "QVBQT0lOVE1FTlQgUkVNSU5ERVI6IFBsZWFzZSBhdHRlbmQgeW91ciBjbGluaWMgYXQgOSBBTSAoMjB0aCBGZWJydWFyeSk="

