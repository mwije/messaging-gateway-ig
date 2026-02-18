//messagingchannel.fsh
CodeSystem: MessagingChannel
Id: messaging-channel
Title: "Messaging Channel"
* #sms
* #whatsapp
* #telegram
* #signal
* #email
* #voice

ValueSet: MessagingChannelVS
Id: messaging-channel-vs
Title: "Messaging Channel ValueSet"
* include codes from system MessagingChannel

Extension: MessagingChannelExtension
Id: messaging-channel-extension
Title: "Messaging Channel Extension"
Description: "Specifies the messaging platform when ContactPoint.system = other"
* value[x] only code
* valueCode from MessagingChannelVS (required)


//communication and communicationrequest resources .medium have example binding to a valueset PaticipationMode
// entities like patient have telemcom element of ContactPoint which has required system element bound to ContactPointSystem valueset (phone | fax | email | pager | url | sms | other)