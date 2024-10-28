import 'package:flutter_test/flutter_test.dart';

import 'package:easy_form_validator/easy_form_validator.dart';

void main() {
  test('Validates email correctly', () {
    expect(EasyFormValidator.validateEmail('test@example.com'), isNull);
    expect(EasyFormValidator.validateEmail('invalid-email'), isNotNull);
  });

  test('Validates password length', () {
    expect(EasyFormValidator.validatePassword('123456'), isNull);
    expect(EasyFormValidator.validatePassword('123'), isNotNull);
  });

  test('Validates phone number format', () {
    expect(EasyFormValidator.validatePhoneNumber('+1234567890'), isNull);
    expect(EasyFormValidator.validatePhoneNumber('abc123'), isNotNull);
  });

  test('Validates required field', () {
    expect(EasyFormValidator.validateRequired('Non-empty'), isNull);
    expect(EasyFormValidator.validateRequired(''), isNotNull);
  });
}
