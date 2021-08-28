# ory_kratos_client.model.SubmitSelfServiceRegistrationFlowWithPasswordMethodBody

## Load the model package
```dart
import 'package:ory_kratos_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**csrfToken** | **String** | The CSRF Token | [optional] 
**method** | **String** | Method to use  This field must be set to `password` when using the password method. | 
**password** | **String** | Password to sign the user up with | 
**traits** | [**Object**](.md) | The identity's traits | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


