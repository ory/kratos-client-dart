import 'package:test/test.dart';
import 'package:ory_kratos_client/ory_kratos_client.dart';

// tests for UpdateLoginFlowWithCodeMethod
void main() {
  final instance = UpdateLoginFlowWithCodeMethodBuilder();
  // TODO add properties to the builder and call build()

  group(UpdateLoginFlowWithCodeMethod, () {
    // Address is the address to send the code to, in case that there are multiple addresses. This field is only used in two-factor flows and is ineffective for passwordless flows.
    // String address
    test('to test the property `address`', () async {
      // TODO
    });

    // Code is the 6 digits code sent to the user
    // String code
    test('to test the property `code`', () async {
      // TODO
    });

    // CSRFToken is the anti-CSRF token
    // String csrfToken
    test('to test the property `csrfToken`', () async {
      // TODO
    });

    // Identifier is the code identifier The identifier requires that the user has already completed the registration or settings with code flow.
    // String identifier
    test('to test the property `identifier`', () async {
      // TODO
    });

    // Method should be set to \"code\" when logging in using the code strategy.
    // String method
    test('to test the property `method`', () async {
      // TODO
    });

    // Resend is set when the user wants to resend the code
    // String resend
    test('to test the property `resend`', () async {
      // TODO
    });

    // Transient data to pass along to any webhooks
    // JsonObject transientPayload
    test('to test the property `transientPayload`', () async {
      // TODO
    });

  });
}
