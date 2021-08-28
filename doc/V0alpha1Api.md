# ory_kratos_client.api.V0alpha1Api

## Load the API package
```dart
import 'package:ory_kratos_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminCreateIdentity**](V0alpha1Api.md#admincreateidentity) | **POST** /identities | Create an Identity
[**adminCreateSelfServiceRecoveryLink**](V0alpha1Api.md#admincreateselfservicerecoverylink) | **POST** /recovery/link | Create a Recovery Link
[**adminDeleteIdentity**](V0alpha1Api.md#admindeleteidentity) | **DELETE** /identities/{id} | Delete an Identity
[**adminGetIdentity**](V0alpha1Api.md#admingetidentity) | **GET** /identities/{id} | Get an Identity
[**adminListIdentities**](V0alpha1Api.md#adminlistidentities) | **GET** /identities | List Identities
[**adminUpdateIdentity**](V0alpha1Api.md#adminupdateidentity) | **PUT** /identities/{id} | Update an Identity
[**createSelfServiceLogoutFlowUrlForBrowsers**](V0alpha1Api.md#createselfservicelogoutflowurlforbrowsers) | **GET** /self-service/logout/browser | Create a Logout URL for Browsers
[**getJsonSchema**](V0alpha1Api.md#getjsonschema) | **GET** /schemas/{id} | 
[**getSelfServiceError**](V0alpha1Api.md#getselfserviceerror) | **GET** /self-service/errors | Get Self-Service Errors
[**getSelfServiceLoginFlow**](V0alpha1Api.md#getselfserviceloginflow) | **GET** /self-service/login/flows | Get Login Flow
[**getSelfServiceRecoveryFlow**](V0alpha1Api.md#getselfservicerecoveryflow) | **GET** /self-service/recovery/flows | Get Recovery Flow
[**getSelfServiceRegistrationFlow**](V0alpha1Api.md#getselfserviceregistrationflow) | **GET** /self-service/registration/flows | Get Registration Flow
[**getSelfServiceSettingsFlow**](V0alpha1Api.md#getselfservicesettingsflow) | **GET** /self-service/settings/flows | Get Settings Flow
[**getSelfServiceVerificationFlow**](V0alpha1Api.md#getselfserviceverificationflow) | **GET** /self-service/verification/flows | Get Verification Flow
[**initializeSelfServiceLoginFlowForBrowsers**](V0alpha1Api.md#initializeselfserviceloginflowforbrowsers) | **GET** /self-service/login/browser | Initialize Login Flow for Browsers
[**initializeSelfServiceLoginFlowWithoutBrowser**](V0alpha1Api.md#initializeselfserviceloginflowwithoutbrowser) | **GET** /self-service/login/api | Initialize Login Flow for APIs, Services, Apps, ...
[**initializeSelfServiceRecoveryFlowForBrowsers**](V0alpha1Api.md#initializeselfservicerecoveryflowforbrowsers) | **GET** /self-service/recovery/browser | Initialize Recovery Flow for Browsers
[**initializeSelfServiceRecoveryFlowWithoutBrowser**](V0alpha1Api.md#initializeselfservicerecoveryflowwithoutbrowser) | **GET** /self-service/recovery/api | Initialize Recovery Flow for APIs, Services, Apps, ...
[**initializeSelfServiceRegistrationFlowForBrowsers**](V0alpha1Api.md#initializeselfserviceregistrationflowforbrowsers) | **GET** /self-service/registration/browser | Initialize Registration Flow for Browsers
[**initializeSelfServiceRegistrationFlowWithoutBrowser**](V0alpha1Api.md#initializeselfserviceregistrationflowwithoutbrowser) | **GET** /self-service/registration/api | Initialize Registration Flow for APIs, Services, Apps, ...
[**initializeSelfServiceSettingsFlowForBrowsers**](V0alpha1Api.md#initializeselfservicesettingsflowforbrowsers) | **GET** /self-service/settings/browser | Initialize Settings Flow for Browsers
[**initializeSelfServiceSettingsFlowWithoutBrowser**](V0alpha1Api.md#initializeselfservicesettingsflowwithoutbrowser) | **GET** /self-service/settings/api | Initialize Settings Flow for APIs, Services, Apps, ...
[**initializeSelfServiceVerificationFlowForBrowsers**](V0alpha1Api.md#initializeselfserviceverificationflowforbrowsers) | **GET** /self-service/verification/browser | Initialize Verification Flow for Browser Clients
[**initializeSelfServiceVerificationFlowWithoutBrowser**](V0alpha1Api.md#initializeselfserviceverificationflowwithoutbrowser) | **GET** /self-service/verification/api | Initialize Verification Flow for APIs, Services, Apps, ...
[**submitSelfServiceLoginFlow**](V0alpha1Api.md#submitselfserviceloginflow) | **POST** /self-service/login | Submit a Login Flow
[**submitSelfServiceLogoutFlow**](V0alpha1Api.md#submitselfservicelogoutflow) | **GET** /self-service/logout | Complete Self-Service Logout
[**submitSelfServiceLogoutFlowWithoutBrowser**](V0alpha1Api.md#submitselfservicelogoutflowwithoutbrowser) | **DELETE** /self-service/logout/api | Perform Logout for APIs, Services, Apps, ...
[**submitSelfServiceRecoveryFlow**](V0alpha1Api.md#submitselfservicerecoveryflow) | **POST** /self-service/recovery | Complete Recovery Flow
[**submitSelfServiceRegistrationFlow**](V0alpha1Api.md#submitselfserviceregistrationflow) | **POST** /self-service/registration | Submit a Registration Flow
[**submitSelfServiceSettingsFlow**](V0alpha1Api.md#submitselfservicesettingsflow) | **POST** /self-service/settings | Complete Settings Flow
[**submitSelfServiceVerificationFlow**](V0alpha1Api.md#submitselfserviceverificationflow) | **POST** /self-service/verification | Complete Verification Flow
[**toSession**](V0alpha1Api.md#tosession) | **GET** /sessions/whoami | Check Who the Current HTTP Session Belongs To


# **adminCreateIdentity**
> Identity adminCreateIdentity(adminCreateIdentityBody)

Create an Identity

This endpoint creates an identity. It is NOT possible to set an identity's credentials (password, ...) using this method! A way to achieve that will be introduced in the future.  Learn how identities work in [Ory Kratos' User And Identity Model Documentation](https://www.ory.sh/docs/next/kratos/concepts/identity-user-model).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';
// TODO Configure API key authorization: oryAccessToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('oryAccessToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('oryAccessToken').apiKeyPrefix = 'Bearer';

final api_instance = V0alpha1Api();
final adminCreateIdentityBody = AdminCreateIdentityBody(); // AdminCreateIdentityBody | 

try { 
    final result = api_instance.adminCreateIdentity(adminCreateIdentityBody);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->adminCreateIdentity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adminCreateIdentityBody** | [**AdminCreateIdentityBody**](AdminCreateIdentityBody.md)|  | [optional] 

### Return type

[**Identity**](Identity.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminCreateSelfServiceRecoveryLink**
> SelfServiceRecoveryLink adminCreateSelfServiceRecoveryLink(adminCreateSelfServiceRecoveryLinkBody)

Create a Recovery Link

This endpoint creates a recovery link which should be given to the user in order for them to recover (or activate) their account.

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();
final adminCreateSelfServiceRecoveryLinkBody = AdminCreateSelfServiceRecoveryLinkBody(); // AdminCreateSelfServiceRecoveryLinkBody | 

try { 
    final result = api_instance.adminCreateSelfServiceRecoveryLink(adminCreateSelfServiceRecoveryLinkBody);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->adminCreateSelfServiceRecoveryLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adminCreateSelfServiceRecoveryLinkBody** | [**AdminCreateSelfServiceRecoveryLinkBody**](AdminCreateSelfServiceRecoveryLinkBody.md)|  | [optional] 

### Return type

[**SelfServiceRecoveryLink**](SelfServiceRecoveryLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminDeleteIdentity**
> adminDeleteIdentity(id)

Delete an Identity

Calling this endpoint irrecoverably and permanently deletes the identity given its ID. This action can not be undone. This endpoint returns 204 when the identity was deleted or when the identity was not found, in which case it is assumed that is has been deleted already.  Learn how identities work in [Ory Kratos' User And Identity Model Documentation](https://www.ory.sh/docs/next/kratos/concepts/identity-user-model).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';
// TODO Configure API key authorization: oryAccessToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('oryAccessToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('oryAccessToken').apiKeyPrefix = 'Bearer';

final api_instance = V0alpha1Api();
final id = id_example; // String | ID is the identity's ID.

try { 
    api_instance.adminDeleteIdentity(id);
} catch (e) {
    print('Exception when calling V0alpha1Api->adminDeleteIdentity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID is the identity's ID. | 

### Return type

void (empty response body)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGetIdentity**
> Identity adminGetIdentity(id)

Get an Identity

Learn how identities work in [Ory Kratos' User And Identity Model Documentation](https://www.ory.sh/docs/next/kratos/concepts/identity-user-model).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';
// TODO Configure API key authorization: oryAccessToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('oryAccessToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('oryAccessToken').apiKeyPrefix = 'Bearer';

final api_instance = V0alpha1Api();
final id = id_example; // String | ID must be set to the ID of identity you want to get

try { 
    final result = api_instance.adminGetIdentity(id);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->adminGetIdentity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID must be set to the ID of identity you want to get | 

### Return type

[**Identity**](Identity.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminListIdentities**
> List<Identity> adminListIdentities(perPage, page)

List Identities

Lists all identities. Does not support search at the moment.  Learn how identities work in [Ory Kratos' User And Identity Model Documentation](https://www.ory.sh/docs/next/kratos/concepts/identity-user-model).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';
// TODO Configure API key authorization: oryAccessToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('oryAccessToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('oryAccessToken').apiKeyPrefix = 'Bearer';

final api_instance = V0alpha1Api();
final perPage = 789; // int | Items per Page  This is the number of items per page.
final page = 789; // int | Pagination Page

try { 
    final result = api_instance.adminListIdentities(perPage, page);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->adminListIdentities: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Items per Page  This is the number of items per page. | [optional] [default to 100]
 **page** | **int**| Pagination Page | [optional] [default to 0]

### Return type

[**List<Identity>**](Identity.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminUpdateIdentity**
> Identity adminUpdateIdentity(id, adminUpdateIdentityBody)

Update an Identity

This endpoint updates an identity. It is NOT possible to set an identity's credentials (password, ...) using this method! A way to achieve that will be introduced in the future.  The full identity payload (except credentials) is expected. This endpoint does not support patching.  Learn how identities work in [Ory Kratos' User And Identity Model Documentation](https://www.ory.sh/docs/next/kratos/concepts/identity-user-model).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';
// TODO Configure API key authorization: oryAccessToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('oryAccessToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('oryAccessToken').apiKeyPrefix = 'Bearer';

final api_instance = V0alpha1Api();
final id = id_example; // String | ID must be set to the ID of identity you want to update
final adminUpdateIdentityBody = AdminUpdateIdentityBody(); // AdminUpdateIdentityBody | 

try { 
    final result = api_instance.adminUpdateIdentity(id, adminUpdateIdentityBody);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->adminUpdateIdentity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID must be set to the ID of identity you want to update | 
 **adminUpdateIdentityBody** | [**AdminUpdateIdentityBody**](AdminUpdateIdentityBody.md)|  | [optional] 

### Return type

[**Identity**](Identity.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSelfServiceLogoutFlowUrlForBrowsers**
> SelfServiceLogoutUrl createSelfServiceLogoutFlowUrlForBrowsers(cookie)

Create a Logout URL for Browsers

This endpoint initializes a browser-based user logout flow and a URL which can be used to log out the user.  This endpoint is NOT INTENDED for API clients and only works with browsers (Chrome, Firefox, ...). For API clients you can call the `/self-service/logout/api` URL directly with the Ory Session Token.  The URL is only valid for the currently signed in user. If no user is signed in, this endpoint returns a 401 error.  When calling this endpoint from a backend, please ensure to properly forward the HTTP cookies.

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();
final cookie = cookie_example; // String | HTTP Cookies  If you call this endpoint from a backend, please include the original Cookie header in the request.

try { 
    final result = api_instance.createSelfServiceLogoutFlowUrlForBrowsers(cookie);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->createSelfServiceLogoutFlowUrlForBrowsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cookie** | **String**| HTTP Cookies  If you call this endpoint from a backend, please include the original Cookie header in the request. | [optional] 

### Return type

[**SelfServiceLogoutUrl**](SelfServiceLogoutUrl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJsonSchema**
> Object getJsonSchema(id)



Get a JSON Schema

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();
final id = id_example; // String | ID must be set to the ID of schema you want to get

try { 
    final result = api_instance.getJsonSchema(id);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->getJsonSchema: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID must be set to the ID of schema you want to get | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSelfServiceError**
> SelfServiceError getSelfServiceError(id)

Get Self-Service Errors

This endpoint returns the error associated with a user-facing self service errors.  This endpoint supports stub values to help you implement the error UI:  `?id=stub:500` - returns a stub 500 (Internal Server Error) error.  More information can be found at [Ory Kratos User User Facing Error Documentation](https://www.ory.sh/docs/kratos/self-service/flows/user-facing-errors).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();
final id = id_example; // String | Error is the error's ID

try { 
    final result = api_instance.getSelfServiceError(id);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->getSelfServiceError: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Error is the error's ID | 

### Return type

[**SelfServiceError**](SelfServiceError.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSelfServiceLoginFlow**
> SelfServiceLoginFlow getSelfServiceLoginFlow(id, cookie)

Get Login Flow

This endpoint returns a login flow's context with, for example, error details and other information.  Browser flows expect the anti-CSRF cookie to be included in the request's HTTP Cookie Header. For AJAX requests you must ensure that cookies are included in the request or requests will fail.  If you use the browser-flow for server-side apps, the services need to run on a common top-level-domain and you need to forward the incoming HTTP Cookie header to this endpoint:  ```js pseudo-code example router.get('/login', async function (req, res) { const flow = await client.getSelfServiceLoginFlow(req.header('cookie'), req.query['flow'])  res.render('login', flow) }) ```  More information can be found at [Ory Kratos User Login and User Registration Documentation](https://www.ory.sh/docs/next/kratos/self-service/flows/user-login-user-registration).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();
final id = id_example; // String | The Login Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/login?flow=abcde`).
final cookie = cookie_example; // String | HTTP Cookies  When using the SDK on the server side you must include the HTTP Cookie Header originally sent to your HTTP handler here.

try { 
    final result = api_instance.getSelfServiceLoginFlow(id, cookie);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->getSelfServiceLoginFlow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The Login Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/login?flow=abcde`). | 
 **cookie** | **String**| HTTP Cookies  When using the SDK on the server side you must include the HTTP Cookie Header originally sent to your HTTP handler here. | [optional] 

### Return type

[**SelfServiceLoginFlow**](SelfServiceLoginFlow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSelfServiceRecoveryFlow**
> SelfServiceRecoveryFlow getSelfServiceRecoveryFlow(id, cookie)

Get Recovery Flow

This endpoint returns a recovery flow's context with, for example, error details and other information.  Browser flows expect the anti-CSRF cookie to be included in the request's HTTP Cookie Header. For AJAX requests you must ensure that cookies are included in the request or requests will fail.  If you use the browser-flow for server-side apps, the services need to run on a common top-level-domain and you need to forward the incoming HTTP Cookie header to this endpoint:  ```js pseudo-code example router.get('/recovery', async function (req, res) { const flow = await client.getSelfServiceRecoveryFlow(req.header('Cookie'), req.query['flow'])  res.render('recovery', flow) }) ```  More information can be found at [Ory Kratos Account Recovery Documentation](../self-service/flows/account-recovery.mdx).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();
final id = id_example; // String | The Flow ID  The value for this parameter comes from `request` URL Query parameter sent to your application (e.g. `/recovery?flow=abcde`).
final cookie = cookie_example; // String | HTTP Cookies  When using the SDK on the server side you must include the HTTP Cookie Header originally sent to your HTTP handler here.

try { 
    final result = api_instance.getSelfServiceRecoveryFlow(id, cookie);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->getSelfServiceRecoveryFlow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The Flow ID  The value for this parameter comes from `request` URL Query parameter sent to your application (e.g. `/recovery?flow=abcde`). | 
 **cookie** | **String**| HTTP Cookies  When using the SDK on the server side you must include the HTTP Cookie Header originally sent to your HTTP handler here. | [optional] 

### Return type

[**SelfServiceRecoveryFlow**](SelfServiceRecoveryFlow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSelfServiceRegistrationFlow**
> SelfServiceRegistrationFlow getSelfServiceRegistrationFlow(id, cookie)

Get Registration Flow

This endpoint returns a registration flow's context with, for example, error details and other information.  Browser flows expect the anti-CSRF cookie to be included in the request's HTTP Cookie Header. For AJAX requests you must ensure that cookies are included in the request or requests will fail.  If you use the browser-flow for server-side apps, the services need to run on a common top-level-domain and you need to forward the incoming HTTP Cookie header to this endpoint:  ```js pseudo-code example router.get('/registration', async function (req, res) { const flow = await client.getSelfServiceRegistrationFlow(req.header('cookie'), req.query['flow'])  res.render('registration', flow) }) ```  More information can be found at [Ory Kratos User Login and User Registration Documentation](https://www.ory.sh/docs/next/kratos/self-service/flows/user-login-user-registration).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();
final id = id_example; // String | The Registration Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/registration?flow=abcde`).
final cookie = cookie_example; // String | HTTP Cookies  When using the SDK on the server side you must include the HTTP Cookie Header originally sent to your HTTP handler here.

try { 
    final result = api_instance.getSelfServiceRegistrationFlow(id, cookie);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->getSelfServiceRegistrationFlow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The Registration Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/registration?flow=abcde`). | 
 **cookie** | **String**| HTTP Cookies  When using the SDK on the server side you must include the HTTP Cookie Header originally sent to your HTTP handler here. | [optional] 

### Return type

[**SelfServiceRegistrationFlow**](SelfServiceRegistrationFlow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSelfServiceSettingsFlow**
> SelfServiceSettingsFlow getSelfServiceSettingsFlow(id, xSessionToken, cookie)

Get Settings Flow

When accessing this endpoint through Ory Kratos' Public API you must ensure that either the Ory Kratos Session Cookie or the Ory Kratos Session Token are set. The public endpoint does not return 404 status codes but instead 403 or 500 to improve data privacy.  You can access this endpoint without credentials when using Ory Kratos' Admin API.  More information can be found at [Ory Kratos User Settings & Profile Management Documentation](../self-service/flows/user-settings).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();
final id = id_example; // String | ID is the Settings Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/settings?flow=abcde`).
final xSessionToken = xSessionToken_example; // String | The Session Token  When using the SDK in an app without a browser, please include the session token here.
final cookie = cookie_example; // String | HTTP Cookies  When using the SDK on the server side you must include the HTTP Cookie Header originally sent to your HTTP handler here. You only need to do this for browser- based flows.

try { 
    final result = api_instance.getSelfServiceSettingsFlow(id, xSessionToken, cookie);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->getSelfServiceSettingsFlow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID is the Settings Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/settings?flow=abcde`). | 
 **xSessionToken** | **String**| The Session Token  When using the SDK in an app without a browser, please include the session token here. | [optional] 
 **cookie** | **String**| HTTP Cookies  When using the SDK on the server side you must include the HTTP Cookie Header originally sent to your HTTP handler here. You only need to do this for browser- based flows. | [optional] 

### Return type

[**SelfServiceSettingsFlow**](SelfServiceSettingsFlow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSelfServiceVerificationFlow**
> SelfServiceVerificationFlow getSelfServiceVerificationFlow(id, cookie)

Get Verification Flow

This endpoint returns a verification flow's context with, for example, error details and other information.  Browser flows expect the anti-CSRF cookie to be included in the request's HTTP Cookie Header. For AJAX requests you must ensure that cookies are included in the request or requests will fail.  If you use the browser-flow for server-side apps, the services need to run on a common top-level-domain and you need to forward the incoming HTTP Cookie header to this endpoint:  ```js pseudo-code example router.get('/recovery', async function (req, res) { const flow = await client.getSelfServiceVerificationFlow(req.header('cookie'), req.query['flow'])  res.render('verification', flow) })  More information can be found at [Ory Kratos Email and Phone Verification Documentation](https://www.ory.sh/docs/kratos/selfservice/flows/verify-email-account-activation).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();
final id = id_example; // String | The Flow ID  The value for this parameter comes from `request` URL Query parameter sent to your application (e.g. `/verification?flow=abcde`).
final cookie = cookie_example; // String | HTTP Cookies  When using the SDK on the server side you must include the HTTP Cookie Header originally sent to your HTTP handler here.

try { 
    final result = api_instance.getSelfServiceVerificationFlow(id, cookie);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->getSelfServiceVerificationFlow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The Flow ID  The value for this parameter comes from `request` URL Query parameter sent to your application (e.g. `/verification?flow=abcde`). | 
 **cookie** | **String**| HTTP Cookies  When using the SDK on the server side you must include the HTTP Cookie Header originally sent to your HTTP handler here. | [optional] 

### Return type

[**SelfServiceVerificationFlow**](SelfServiceVerificationFlow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initializeSelfServiceLoginFlowForBrowsers**
> SelfServiceLoginFlow initializeSelfServiceLoginFlowForBrowsers(refresh)

Initialize Login Flow for Browsers

This endpoint initializes a browser-based user login flow. This endpoint will set the appropriate cookies and anti-CSRF measures required for browser-based flows.  If this endpoint is opened as a link in the browser, it will be redirected to `selfservice.flows.login.ui_url` with the flow ID set as the query parameter `?flow=`. If a valid user session exists already, the browser will be redirected to `urls.default_redirect_url` unless the query parameter `?refresh=true` was set.  If this endpoint is called via an AJAX request, the response contains the login flow without a redirect.  This endpoint is NOT INTENDED for clients that do not have a browser (Chrome, Firefox, ...) as cookies are needed.  More information can be found at [Ory Kratos User Login and User Registration Documentation](https://www.ory.sh/docs/next/kratos/self-service/flows/user-login-user-registration).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();
final refresh = true; // bool | Refresh a login session  If set to true, this will refresh an existing login session by asking the user to sign in again. This will reset the authenticated_at time of the session.

try { 
    final result = api_instance.initializeSelfServiceLoginFlowForBrowsers(refresh);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->initializeSelfServiceLoginFlowForBrowsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refresh** | **bool**| Refresh a login session  If set to true, this will refresh an existing login session by asking the user to sign in again. This will reset the authenticated_at time of the session. | [optional] 

### Return type

[**SelfServiceLoginFlow**](SelfServiceLoginFlow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initializeSelfServiceLoginFlowWithoutBrowser**
> SelfServiceLoginFlow initializeSelfServiceLoginFlowWithoutBrowser(refresh)

Initialize Login Flow for APIs, Services, Apps, ...

This endpoint initiates a login flow for API clients that do not use a browser, such as mobile devices, smart TVs, and so on.  If a valid provided session cookie or session token is provided, a 400 Bad Request error will be returned unless the URL query parameter `?refresh=true` is set.  To fetch an existing login flow call `/self-service/login/flows?flow=<flow_id>`.  You MUST NOT use this endpoint in client-side (Single Page Apps, ReactJS, AngularJS) nor server-side (Java Server Pages, NodeJS, PHP, Golang, ...) browser applications. Using this endpoint in these applications will make you vulnerable to a variety of CSRF attacks, including CSRF login attacks.  This endpoint MUST ONLY be used in scenarios such as native mobile apps (React Native, Objective C, Swift, Java, ...).  More information can be found at [Ory Kratos User Login and User Registration Documentation](https://www.ory.sh/docs/next/kratos/self-service/flows/user-login-user-registration).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();
final refresh = true; // bool | Refresh a login session  If set to true, this will refresh an existing login session by asking the user to sign in again. This will reset the authenticated_at time of the session.

try { 
    final result = api_instance.initializeSelfServiceLoginFlowWithoutBrowser(refresh);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->initializeSelfServiceLoginFlowWithoutBrowser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refresh** | **bool**| Refresh a login session  If set to true, this will refresh an existing login session by asking the user to sign in again. This will reset the authenticated_at time of the session. | [optional] 

### Return type

[**SelfServiceLoginFlow**](SelfServiceLoginFlow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initializeSelfServiceRecoveryFlowForBrowsers**
> SelfServiceRecoveryFlow initializeSelfServiceRecoveryFlowForBrowsers()

Initialize Recovery Flow for Browsers

This endpoint initializes a browser-based account recovery flow. Once initialized, the browser will be redirected to `selfservice.flows.recovery.ui_url` with the flow ID set as the query parameter `?flow=`. If a valid user session exists, the browser is returned to the configured return URL.  If this endpoint is called via an AJAX request, the response contains the recovery flow without any redirects or a 400 bad request error if the user is already authenticated.  This endpoint is NOT INTENDED for clients that do not have a browser (Chrome, Firefox, ...) as cookies are needed.  More information can be found at [Ory Kratos Account Recovery Documentation](../self-service/flows/account-recovery.mdx).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();

try { 
    final result = api_instance.initializeSelfServiceRecoveryFlowForBrowsers();
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->initializeSelfServiceRecoveryFlowForBrowsers: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SelfServiceRecoveryFlow**](SelfServiceRecoveryFlow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initializeSelfServiceRecoveryFlowWithoutBrowser**
> SelfServiceRecoveryFlow initializeSelfServiceRecoveryFlowWithoutBrowser()

Initialize Recovery Flow for APIs, Services, Apps, ...

This endpoint initiates a recovery flow for API clients such as mobile devices, smart TVs, and so on.  If a valid provided session cookie or session token is provided, a 400 Bad Request error.  To fetch an existing recovery flow call `/self-service/recovery/flows?flow=<flow_id>`.  You MUST NOT use this endpoint in client-side (Single Page Apps, ReactJS, AngularJS) nor server-side (Java Server Pages, NodeJS, PHP, Golang, ...) browser applications. Using this endpoint in these applications will make you vulnerable to a variety of CSRF attacks.  This endpoint MUST ONLY be used in scenarios such as native mobile apps (React Native, Objective C, Swift, Java, ...).   More information can be found at [Ory Kratos Account Recovery Documentation](../self-service/flows/account-recovery.mdx).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();

try { 
    final result = api_instance.initializeSelfServiceRecoveryFlowWithoutBrowser();
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->initializeSelfServiceRecoveryFlowWithoutBrowser: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SelfServiceRecoveryFlow**](SelfServiceRecoveryFlow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initializeSelfServiceRegistrationFlowForBrowsers**
> SelfServiceRegistrationFlow initializeSelfServiceRegistrationFlowForBrowsers()

Initialize Registration Flow for Browsers

This endpoint initializes a browser-based user registration flow. This endpoint will set the appropriate cookies and anti-CSRF measures required for browser-based flows.  :::info  This endpoint is EXPERIMENTAL and subject to potential breaking changes in the future.  :::  If this endpoint is opened as a link in the browser, it will be redirected to `selfservice.flows.registration.ui_url` with the flow ID set as the query parameter `?flow=`. If a valid user session exists already, the browser will be redirected to `urls.default_redirect_url`.  If this endpoint is called via an AJAX request, the response contains the registration flow without a redirect.  This endpoint is NOT INTENDED for clients that do not have a browser (Chrome, Firefox, ...) as cookies are needed.  More information can be found at [Ory Kratos User Login and User Registration Documentation](https://www.ory.sh/docs/next/kratos/self-service/flows/user-login-user-registration).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();

try { 
    final result = api_instance.initializeSelfServiceRegistrationFlowForBrowsers();
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->initializeSelfServiceRegistrationFlowForBrowsers: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SelfServiceRegistrationFlow**](SelfServiceRegistrationFlow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initializeSelfServiceRegistrationFlowWithoutBrowser**
> SelfServiceRegistrationFlow initializeSelfServiceRegistrationFlowWithoutBrowser()

Initialize Registration Flow for APIs, Services, Apps, ...

This endpoint initiates a registration flow for API clients such as mobile devices, smart TVs, and so on.  If a valid provided session cookie or session token is provided, a 400 Bad Request error will be returned unless the URL query parameter `?refresh=true` is set.  To fetch an existing registration flow call `/self-service/registration/flows?flow=<flow_id>`.  You MUST NOT use this endpoint in client-side (Single Page Apps, ReactJS, AngularJS) nor server-side (Java Server Pages, NodeJS, PHP, Golang, ...) browser applications. Using this endpoint in these applications will make you vulnerable to a variety of CSRF attacks.  This endpoint MUST ONLY be used in scenarios such as native mobile apps (React Native, Objective C, Swift, Java, ...).  More information can be found at [Ory Kratos User Login and User Registration Documentation](https://www.ory.sh/docs/next/kratos/self-service/flows/user-login-user-registration).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();

try { 
    final result = api_instance.initializeSelfServiceRegistrationFlowWithoutBrowser();
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->initializeSelfServiceRegistrationFlowWithoutBrowser: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SelfServiceRegistrationFlow**](SelfServiceRegistrationFlow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initializeSelfServiceSettingsFlowForBrowsers**
> SelfServiceSettingsFlow initializeSelfServiceSettingsFlowForBrowsers(cookie)

Initialize Settings Flow for Browsers

This endpoint initializes a browser-based user settings flow. Once initialized, the browser will be redirected to `selfservice.flows.settings.ui_url` with the flow ID set as the query parameter `?flow=`. If no valid Ory Kratos Session Cookie is included in the request, a login flow will be initialized.  If this endpoint is opened as a link in the browser, it will be redirected to `selfservice.flows.settings.ui_url` with the flow ID set as the query parameter `?flow=`. If no valid user session was set, the browser will be redirected to the login endpoint.  If this endpoint is called via an AJAX request, the response contains the settings flow without any redirects or a 403 forbidden error if no valid session was set.  This endpoint is NOT INTENDED for clients that do not have a browser (Chrome, Firefox, ...) as cookies are needed.  More information can be found at [Ory Kratos User Settings & Profile Management Documentation](../self-service/flows/user-settings).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();
final cookie = cookie_example; // String | The Session Cookie of the Identity performing the settings flow.

try { 
    final result = api_instance.initializeSelfServiceSettingsFlowForBrowsers(cookie);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->initializeSelfServiceSettingsFlowForBrowsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cookie** | **String**| The Session Cookie of the Identity performing the settings flow. | [optional] 

### Return type

[**SelfServiceSettingsFlow**](SelfServiceSettingsFlow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initializeSelfServiceSettingsFlowWithoutBrowser**
> SelfServiceSettingsFlow initializeSelfServiceSettingsFlowWithoutBrowser(xSessionToken)

Initialize Settings Flow for APIs, Services, Apps, ...

This endpoint initiates a settings flow for API clients such as mobile devices, smart TVs, and so on. You must provide a valid Ory Kratos Session Token for this endpoint to respond with HTTP 200 OK.  To fetch an existing settings flow call `/self-service/settings/flows?flow=<flow_id>`.  You MUST NOT use this endpoint in client-side (Single Page Apps, ReactJS, AngularJS) nor server-side (Java Server Pages, NodeJS, PHP, Golang, ...) browser applications. Using this endpoint in these applications will make you vulnerable to a variety of CSRF attacks.  This endpoint MUST ONLY be used in scenarios such as native mobile apps (React Native, Objective C, Swift, Java, ...).  More information can be found at [Ory Kratos User Settings & Profile Management Documentation](../self-service/flows/user-settings).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();
final xSessionToken = xSessionToken_example; // String | The Session Token of the Identity performing the settings flow.

try { 
    final result = api_instance.initializeSelfServiceSettingsFlowWithoutBrowser(xSessionToken);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->initializeSelfServiceSettingsFlowWithoutBrowser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xSessionToken** | **String**| The Session Token of the Identity performing the settings flow. | [optional] 

### Return type

[**SelfServiceSettingsFlow**](SelfServiceSettingsFlow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initializeSelfServiceVerificationFlowForBrowsers**
> SelfServiceVerificationFlow initializeSelfServiceVerificationFlowForBrowsers()

Initialize Verification Flow for Browser Clients

This endpoint initializes a browser-based account verification flow. Once initialized, the browser will be redirected to `selfservice.flows.verification.ui_url` with the flow ID set as the query parameter `?flow=`.  If this endpoint is called via an AJAX request, the response contains the recovery flow without any redirects.  This endpoint is NOT INTENDED for API clients and only works with browsers (Chrome, Firefox, ...).  More information can be found at [Ory Kratos Email and Phone Verification Documentation](https://www.ory.sh/docs/kratos/selfservice/flows/verify-email-account-activation).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();

try { 
    final result = api_instance.initializeSelfServiceVerificationFlowForBrowsers();
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->initializeSelfServiceVerificationFlowForBrowsers: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SelfServiceVerificationFlow**](SelfServiceVerificationFlow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initializeSelfServiceVerificationFlowWithoutBrowser**
> SelfServiceVerificationFlow initializeSelfServiceVerificationFlowWithoutBrowser()

Initialize Verification Flow for APIs, Services, Apps, ...

This endpoint initiates a verification flow for API clients such as mobile devices, smart TVs, and so on.  To fetch an existing verification flow call `/self-service/verification/flows?flow=<flow_id>`.  You MUST NOT use this endpoint in client-side (Single Page Apps, ReactJS, AngularJS) nor server-side (Java Server Pages, NodeJS, PHP, Golang, ...) browser applications. Using this endpoint in these applications will make you vulnerable to a variety of CSRF attacks.  This endpoint MUST ONLY be used in scenarios such as native mobile apps (React Native, Objective C, Swift, Java, ...).  More information can be found at [Ory Kratos Email and Phone Verification Documentation](https://www.ory.sh/docs/kratos/selfservice/flows/verify-email-account-activation).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();

try { 
    final result = api_instance.initializeSelfServiceVerificationFlowWithoutBrowser();
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->initializeSelfServiceVerificationFlowWithoutBrowser: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SelfServiceVerificationFlow**](SelfServiceVerificationFlow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitSelfServiceLoginFlow**
> SuccessfulSelfServiceLoginWithoutBrowser submitSelfServiceLoginFlow(flow, submitSelfServiceLoginFlowBody)

Submit a Login Flow

:::info  This endpoint is EXPERIMENTAL and subject to potential breaking changes in the future.  :::  Use this endpoint to complete a login flow. This endpoint behaves differently for API and browser flows.  API flows expect `application/json` to be sent in the body and responds with HTTP 200 and a application/json body with the session token on success; HTTP 302 redirect to a fresh login flow if the original flow expired with the appropriate error messages set; HTTP 400 on form validation errors.  Browser flows expect a Content-Type of `application/x-www-form-urlencoded` or `application/json` to be sent in the body and respond with a HTTP 302 redirect to the post/after login URL or the `return_to` value if it was set and if the login succeeded; a HTTP 302 redirect to the login UI URL with the flow ID containing the validation errors otherwise.  Browser flows with an accept header of `application/json` will not redirect but instead respond with HTTP 200 and a application/json body with the signed in identity and a `Set-Cookie` header on success; HTTP 302 redirect to a fresh login flow if the original flow expired with the appropriate error messages set; HTTP 400 on form validation errors.  More information can be found at [Ory Kratos User Login and User Registration Documentation](https://www.ory.sh/docs/next/kratos/self-service/flows/user-login-user-registration).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();
final flow = flow_example; // String | The Login Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/login?flow=abcde`).
final submitSelfServiceLoginFlowBody = SubmitSelfServiceLoginFlowBody(); // SubmitSelfServiceLoginFlowBody | 

try { 
    final result = api_instance.submitSelfServiceLoginFlow(flow, submitSelfServiceLoginFlowBody);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->submitSelfServiceLoginFlow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flow** | **String**| The Login Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/login?flow=abcde`). | 
 **submitSelfServiceLoginFlowBody** | [**SubmitSelfServiceLoginFlowBody**](SubmitSelfServiceLoginFlowBody.md)|  | [optional] 

### Return type

[**SuccessfulSelfServiceLoginWithoutBrowser**](SuccessfulSelfServiceLoginWithoutBrowser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitSelfServiceLogoutFlow**
> submitSelfServiceLogoutFlow(token)

Complete Self-Service Logout

This endpoint logs out an identity in a self-service manner.  If the `Accept` HTTP header is not set to `application/json`, the browser will be redirected (HTTP 302 Found) to the `return_to` parameter of the initial request or fall back to `urls.default_return_to`.  If the `Accept` HTTP header is set to `application/json`, a 204 No Content response will be sent on successful logout instead.  This endpoint is NOT INTENDED for API clients and only works with browsers (Chrome, Firefox, ...). For API clients you can call the `/self-service/logout/api` URL directly with the Ory Session Token.  More information can be found at [Ory Kratos User Logout Documentation](https://www.ory.sh/docs/next/kratos/self-service/flows/user-logout).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();
final token = token_example; // String | A Valid Logout Token  If you do not have a logout token because you only have a session cookie, call `/self-service/logout/urls` to generate a URL for this endpoint.

try { 
    api_instance.submitSelfServiceLogoutFlow(token);
} catch (e) {
    print('Exception when calling V0alpha1Api->submitSelfServiceLogoutFlow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| A Valid Logout Token  If you do not have a logout token because you only have a session cookie, call `/self-service/logout/urls` to generate a URL for this endpoint. | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitSelfServiceLogoutFlowWithoutBrowser**
> submitSelfServiceLogoutFlowWithoutBrowser(submitSelfServiceLogoutFlowWithoutBrowserBody)

Perform Logout for APIs, Services, Apps, ...

Use this endpoint to log out an identity using an Ory Session Token. If the Ory Session Token was successfully revoked, the server returns a 204 No Content response. A 204 No Content response is also sent when the Ory Session Token has been revoked already before.  If the Ory Session Token is malformed or does not exist a 403 Forbidden response will be returned.  This endpoint does not remove any HTTP Cookies - use the Browser-Based Self-Service Logout Flow instead.

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();
final submitSelfServiceLogoutFlowWithoutBrowserBody = SubmitSelfServiceLogoutFlowWithoutBrowserBody(); // SubmitSelfServiceLogoutFlowWithoutBrowserBody | 

try { 
    api_instance.submitSelfServiceLogoutFlowWithoutBrowser(submitSelfServiceLogoutFlowWithoutBrowserBody);
} catch (e) {
    print('Exception when calling V0alpha1Api->submitSelfServiceLogoutFlowWithoutBrowser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submitSelfServiceLogoutFlowWithoutBrowserBody** | [**SubmitSelfServiceLogoutFlowWithoutBrowserBody**](SubmitSelfServiceLogoutFlowWithoutBrowserBody.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitSelfServiceRecoveryFlow**
> SelfServiceRecoveryFlow submitSelfServiceRecoveryFlow(flow, token, submitSelfServiceRecoveryFlowBody)

Complete Recovery Flow

Use this endpoint to complete a recovery flow. This endpoint behaves differently for API and browser flows and has several states:  `choose_method` expects `flow` (in the URL query) and `email` (in the body) to be sent and works with API- and Browser-initiated flows. For API clients and Browser clients with HTTP Header `Accept: application/json` it either returns a HTTP 200 OK when the form is valid and HTTP 400 OK when the form is invalid. and a HTTP 302 Found redirect with a fresh recovery flow if the flow was otherwise invalid (e.g. expired). For Browser clients without HTTP Header `Accept` or with `Accept: text/_*` it returns a HTTP 302 Found redirect to the Recovery UI URL with the Recovery Flow ID appended. `sent_email` is the success state after `choose_method` for the `link` method and allows the user to request another recovery email. It works for both API and Browser-initiated flows and returns the same responses as the flow in `choose_method` state. `passed_challenge` expects a `token` to be sent in the URL query and given the nature of the flow (\"sending a recovery link\") does not have any API capabilities. The server responds with a HTTP 302 Found redirect either to the Settings UI URL (if the link was valid) and instructs the user to update their password, or a redirect to the Recover UI URL with a new Recovery Flow ID which contains an error message that the recovery link was invalid.  More information can be found at [Ory Kratos Account Recovery Documentation](../self-service/flows/account-recovery.mdx).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();
final flow = flow_example; // String | The Recovery Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/recovery?flow=abcde`).
final token = token_example; // String | Recovery Token  The recovery token which completes the recovery request. If the token is invalid (e.g. expired) an error will be shown to the end-user.  This parameter is usually set in a link and not used by any direct API call.
final submitSelfServiceRecoveryFlowBody = SubmitSelfServiceRecoveryFlowBody(); // SubmitSelfServiceRecoveryFlowBody | 

try { 
    final result = api_instance.submitSelfServiceRecoveryFlow(flow, token, submitSelfServiceRecoveryFlowBody);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->submitSelfServiceRecoveryFlow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flow** | **String**| The Recovery Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/recovery?flow=abcde`). | 
 **token** | **String**| Recovery Token  The recovery token which completes the recovery request. If the token is invalid (e.g. expired) an error will be shown to the end-user.  This parameter is usually set in a link and not used by any direct API call. | [optional] 
 **submitSelfServiceRecoveryFlowBody** | [**SubmitSelfServiceRecoveryFlowBody**](SubmitSelfServiceRecoveryFlowBody.md)|  | [optional] 

### Return type

[**SelfServiceRecoveryFlow**](SelfServiceRecoveryFlow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitSelfServiceRegistrationFlow**
> SuccessfulSelfServiceRegistrationWithoutBrowser submitSelfServiceRegistrationFlow(flow, submitSelfServiceRegistrationFlowBody)

Submit a Registration Flow

Use this endpoint to complete a registration flow by sending an identity's traits and password. This endpoint behaves differently for API and browser flows.  API flows expect `application/json` to be sent in the body and respond with HTTP 200 and a application/json body with the created identity success - if the session hook is configured the `session` and `session_token` will also be included; HTTP 302 redirect to a fresh registration flow if the original flow expired with the appropriate error messages set; HTTP 400 on form validation errors.  Browser flows expect a Content-Type of `application/x-www-form-urlencoded` or `application/json` to be sent in the body and respond with a HTTP 302 redirect to the post/after registration URL or the `return_to` value if it was set and if the registration succeeded; a HTTP 302 redirect to the registration UI URL with the flow ID containing the validation errors otherwise.  Browser flows with an accept header of `application/json` will not redirect but instead respond with HTTP 200 and a application/json body with the signed in identity and a `Set-Cookie` header on success; HTTP 302 redirect to a fresh login flow if the original flow expired with the appropriate error messages set; HTTP 400 on form validation errors.  More information can be found at [Ory Kratos User Login and User Registration Documentation](https://www.ory.sh/docs/next/kratos/self-service/flows/user-login-user-registration).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();
final flow = flow_example; // String | The Registration Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/registration?flow=abcde`).
final submitSelfServiceRegistrationFlowBody = SubmitSelfServiceRegistrationFlowBody(); // SubmitSelfServiceRegistrationFlowBody | 

try { 
    final result = api_instance.submitSelfServiceRegistrationFlow(flow, submitSelfServiceRegistrationFlowBody);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->submitSelfServiceRegistrationFlow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flow** | **String**| The Registration Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/registration?flow=abcde`). | 
 **submitSelfServiceRegistrationFlowBody** | [**SubmitSelfServiceRegistrationFlowBody**](SubmitSelfServiceRegistrationFlowBody.md)|  | [optional] 

### Return type

[**SuccessfulSelfServiceRegistrationWithoutBrowser**](SuccessfulSelfServiceRegistrationWithoutBrowser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitSelfServiceSettingsFlow**
> SuccessfulSelfServiceSettingsWithoutBrowser submitSelfServiceSettingsFlow(flow, xSessionToken, submitSelfServiceSettingsFlowBody)

Complete Settings Flow

Use this endpoint to complete a settings flow by sending an identity's updated password. This endpoint behaves differently for API and browser flows.  API-initiated flows expect `application/json` to be sent in the body and respond with HTTP 200 and an application/json body with the session token on success; HTTP 302 redirect to a fresh settings flow if the original flow expired with the appropriate error messages set; HTTP 400 on form validation errors. HTTP 401 when the endpoint is called without a valid session token. HTTP 403 when `selfservice.flows.settings.privileged_session_max_age` was reached. Implies that the user needs to re-authenticate.  Browser flows without HTTP Header `Accept` or with `Accept: text/_*` respond with a HTTP 302 redirect to the post/after settings URL or the `return_to` value if it was set and if the flow succeeded; a HTTP 302 redirect to the Settings UI URL with the flow ID containing the validation errors otherwise. a HTTP 302 redirect to the login endpoint when `selfservice.flows.settings.privileged_session_max_age` was reached.  Browser flows with HTTP Header `Accept: application/json` respond with HTTP 200 and a application/json body with the signed in identity and a `Set-Cookie` header on success; HTTP 302 redirect to a fresh login flow if the original flow expired with the appropriate error messages set; HTTP 403 when the page is accessed without a session cookie. HTTP 400 on form validation errors.  More information can be found at [Ory Kratos User Settings & Profile Management Documentation](../self-service/flows/user-settings).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();
final flow = flow_example; // String | The Settings Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/settings?flow=abcde`).
final xSessionToken = xSessionToken_example; // String | The Session Token of the Identity performing the settings flow.
final submitSelfServiceSettingsFlowBody = SubmitSelfServiceSettingsFlowBody(); // SubmitSelfServiceSettingsFlowBody | 

try { 
    final result = api_instance.submitSelfServiceSettingsFlow(flow, xSessionToken, submitSelfServiceSettingsFlowBody);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->submitSelfServiceSettingsFlow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flow** | **String**| The Settings Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/settings?flow=abcde`). | 
 **xSessionToken** | **String**| The Session Token of the Identity performing the settings flow. | [optional] 
 **submitSelfServiceSettingsFlowBody** | [**SubmitSelfServiceSettingsFlowBody**](SubmitSelfServiceSettingsFlowBody.md)|  | [optional] 

### Return type

[**SuccessfulSelfServiceSettingsWithoutBrowser**](SuccessfulSelfServiceSettingsWithoutBrowser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitSelfServiceVerificationFlow**
> SelfServiceVerificationFlow submitSelfServiceVerificationFlow(flow, token, submitSelfServiceVerificationFlowBody)

Complete Verification Flow

Use this endpoint to complete a verification flow. This endpoint behaves differently for API and browser flows and has several states:  `choose_method` expects `flow` (in the URL query) and `email` (in the body) to be sent and works with API- and Browser-initiated flows. For API clients and Browser clients with HTTP Header `Accept: application/json` it either returns a HTTP 200 OK when the form is valid and HTTP 400 OK when the form is invalid and a HTTP 302 Found redirect with a fresh verification flow if the flow was otherwise invalid (e.g. expired). For Browser clients without HTTP Header `Accept` or with `Accept: text/_*` it returns a HTTP 302 Found redirect to the Verification UI URL with the Verification Flow ID appended. `sent_email` is the success state after `choose_method` when using the `link` method and allows the user to request another verification email. It works for both API and Browser-initiated flows and returns the same responses as the flow in `choose_method` state. `passed_challenge` expects a `token` to be sent in the URL query and given the nature of the flow (\"sending a verification link\") does not have any API capabilities. The server responds with a HTTP 302 Found redirect either to the Settings UI URL (if the link was valid) and instructs the user to update their password, or a redirect to the Verification UI URL with a new Verification Flow ID which contains an error message that the verification link was invalid.  More information can be found at [Ory Kratos Email and Phone Verification Documentation](https://www.ory.sh/docs/kratos/selfservice/flows/verify-email-account-activation).

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();
final flow = flow_example; // String | The Verification Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/verification?flow=abcde`).
final token = token_example; // String | Verification Token  The verification token which completes the verification request. If the token is invalid (e.g. expired) an error will be shown to the end-user.  This parameter is usually set in a link and not used by any direct API call.
final submitSelfServiceVerificationFlowBody = SubmitSelfServiceVerificationFlowBody(); // SubmitSelfServiceVerificationFlowBody | 

try { 
    final result = api_instance.submitSelfServiceVerificationFlow(flow, token, submitSelfServiceVerificationFlowBody);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->submitSelfServiceVerificationFlow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flow** | **String**| The Verification Flow ID  The value for this parameter comes from `flow` URL Query parameter sent to your application (e.g. `/verification?flow=abcde`). | 
 **token** | **String**| Verification Token  The verification token which completes the verification request. If the token is invalid (e.g. expired) an error will be shown to the end-user.  This parameter is usually set in a link and not used by any direct API call. | [optional] 
 **submitSelfServiceVerificationFlowBody** | [**SubmitSelfServiceVerificationFlowBody**](SubmitSelfServiceVerificationFlowBody.md)|  | [optional] 

### Return type

[**SelfServiceVerificationFlow**](SelfServiceVerificationFlow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **toSession**
> Session toSession(xSessionToken, cookie)

Check Who the Current HTTP Session Belongs To

Uses the HTTP Headers in the GET request to determine (e.g. by using checking the cookies) who is authenticated. Returns a session object in the body or 401 if the credentials are invalid or no credentials were sent. Additionally when the request it successful it adds the user ID to the 'X-Kratos-Authenticated-Identity-Id' header in the response.  If you call this endpoint from a server-side application, you must forward the HTTP Cookie Header to this endpoint:  ```js pseudo-code example router.get('/protected-endpoint', async function (req, res) { const session = await client.toSession(undefined, req.header('cookie'))  console.log(session) }) ```  When calling this endpoint from a non-browser application (e.g. mobile app) you must include the session token:  ```js pseudo-code example ... const session = await client.toSession(\"the-session-token\")  console.log(session) ```  This endpoint is useful for:  AJAX calls. Remember to send credentials and set up CORS correctly! Reverse proxies and API Gateways Server-side calls - use the `X-Session-Token` header!  This endpoint authenticates users by checking  if the `Cookie` HTTP header was set containing an Ory Kratos Session Cookie; if the `Authorization: bearer <ory-session-token>` HTTP header was set with a valid Ory Kratos Session Token; if the `X-Session-Token` HTTP header was set with a valid Ory Kratos Session Token.  If none of these headers are set or the cooke or token are invalid, the endpoint returns a HTTP 401 status code.

### Example 
```dart
import 'package:ory_kratos_client/api.dart';

final api_instance = V0alpha1Api();
final xSessionToken = MP2YWEMeM8MxjkGKpH4dqOQ4Q4DlSPaj; // String | Set the Session Token when calling from non-browser clients. A session token has a format of `MP2YWEMeM8MxjkGKpH4dqOQ4Q4DlSPaj`.
final cookie = ory_kratos_session=a19iOVAbdzdgl70Rq1QZmrKmcjDtdsviCTZx7m9a9yHIUS8Wa9T7hvqyGTsLHi6Qifn2WUfpAKx9DWp0SJGleIn9vh2YF4A16id93kXFTgIgmwIOvbVAScyrx7yVl6bPZnCx27ec4WQDtaTewC1CpgudeDV2jQQnSaCP6ny3xa8qLH-QUgYqdQuoA_LF1phxgRCUfIrCLQOkolX5nv3ze_f==; // String | Set the Cookie Header. This is especially useful when calling this endpoint from a server-side application. In that scenario you must include the HTTP Cookie Header which originally was included in the request to your server. An example of a session in the HTTP Cookie Header is: `ory_kratos_session=a19iOVAbdzdgl70Rq1QZmrKmcjDtdsviCTZx7m9a9yHIUS8Wa9T7hvqyGTsLHi6Qifn2WUfpAKx9DWp0SJGleIn9vh2YF4A16id93kXFTgIgmwIOvbVAScyrx7yVl6bPZnCx27ec4WQDtaTewC1CpgudeDV2jQQnSaCP6ny3xa8qLH-QUgYqdQuoA_LF1phxgRCUfIrCLQOkolX5nv3ze_f==`.  It is ok if more than one cookie are included here as all other cookies will be ignored.

try { 
    final result = api_instance.toSession(xSessionToken, cookie);
    print(result);
} catch (e) {
    print('Exception when calling V0alpha1Api->toSession: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xSessionToken** | **String**| Set the Session Token when calling from non-browser clients. A session token has a format of `MP2YWEMeM8MxjkGKpH4dqOQ4Q4DlSPaj`. | [optional] 
 **cookie** | **String**| Set the Cookie Header. This is especially useful when calling this endpoint from a server-side application. In that scenario you must include the HTTP Cookie Header which originally was included in the request to your server. An example of a session in the HTTP Cookie Header is: `ory_kratos_session=a19iOVAbdzdgl70Rq1QZmrKmcjDtdsviCTZx7m9a9yHIUS8Wa9T7hvqyGTsLHi6Qifn2WUfpAKx9DWp0SJGleIn9vh2YF4A16id93kXFTgIgmwIOvbVAScyrx7yVl6bPZnCx27ec4WQDtaTewC1CpgudeDV2jQQnSaCP6ny3xa8qLH-QUgYqdQuoA_LF1phxgRCUfIrCLQOkolX5nv3ze_f==`.  It is ok if more than one cookie are included here as all other cookies will be ignored. | [optional] 

### Return type

[**Session**](Session.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

