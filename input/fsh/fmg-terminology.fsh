//messagingchannel.fsh
CodeSystem: FMGMessagingChannelCS
Id: fmg-channel
Title: "Messaging Channel"
* #sms
* #whatsapp
* #telegram
* #signal
* #email
* #voice


ValueSet: FMGMessagingChannelVS
Id: fmg-channel-vs
Title: "Messaging Channel ValueSet"
* include codes from system FMGMessagingChannelCS


Extension: FMGMessagingChannelExtension
Id: fmg-channel-extension
Title: "Messaging Channel Extension"
Description: "Specifies the messaging platform when ContactPoint.system = other"
* value[x] only code
* valueCode from FMGMessagingChannelVS (required)


ValueSet: FMGInboundCommunicationStatusVS
Id: fmg-inbound-communication-status
Title: "FMG Inbound Communication Status"
Description: "Permitted status values for inbound messages"
* ^status = #active

* include codes from system http://hl7.org/fhir/event-status
    where code in (#completed and #entered-in-error)


ValueSet: FMGOutboundCommunicationRequestStatusVS
Id: fmg-outbound-communicationrequest-status
Title: "FMG Outbound CommunicationRequest Status"
Description: "Permitted status values for outbound delivery"

* include codes from system http://hl7.org/fhir/request-status
    where code in (#draft and #active and #on-hold and #revoked and #completed and #entered-in-error)
