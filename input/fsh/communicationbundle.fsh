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




//should have atleast one OutboundCommunication. optionally referencing entities in same bundle. Can have multiple OutboundCommunications