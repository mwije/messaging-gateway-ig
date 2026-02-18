//communication.fsh
Profile: InboundCommunication
Parent: Communication
Description: "Messages received"
* priority 1..1 SU
* payload 1..*
* payload.content[x] only Attachment
* payload.contentAttachment 1..1
* sender 1..1
* status = #completed (exactly)
* received 1..1
* recipient 1..1
* recipient.identifier 1..1
* recipient.reference 0..0


