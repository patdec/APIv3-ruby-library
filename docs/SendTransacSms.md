# SibApiV3Sdk::SendTransacSms

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender** | **String** | Name of the sender. Only alphanumeric characters. No more than 11 characters | 
**recipient** | **String** | Mobile number to send SMS with the country code | 
**content** | **String** | Content of the message. If more than 160 characters long, will be sent as multiple text messages | 
**type** | **String** | Type of the SMS. Marketing SMS messages are those sent typically with marketing content. Transactional SMS messages are sent to individuals and are triggered in response to some action, such as a sign-up, purchase, etc. | [optional] [default to &quot;transactional&quot;]
**tag** | **String** | Tag of the message | [optional] 
**web_url** | **String** | Webhook to call for each event triggered by the message (delivered etc.) | [optional] 


