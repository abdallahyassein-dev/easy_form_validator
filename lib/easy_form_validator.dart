library easy_form_validator;

class EasyFormValidator {
  /// Checks if a string is a valid email.
  static String? validateEmail(String value,
      {String message = 'Invalid email address'}) {
    final emailRegExp = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
    return emailRegExp.hasMatch(value) ? null : message;
  }

  /// Checks if a password meets minimum length requirement.
  static String? validatePassword(String value,
      {int minLength = 6, String message = 'Password is too short'}) {
    return value.length >= minLength ? null : message;
  }

  /// Checks if a phone number is valid.
  static String? validatePhoneNumber(String value,
      {String message = 'Invalid phone number'}) {
    final phoneRegExp = RegExp(r"^\+?[0-9]{7,15}$");
    return phoneRegExp.hasMatch(value) ? null : message;
  }

  /// Checks if a field is not empty.
  static String? validateRequired(String value,
      {String message = 'This field is required'}) {
    return value.isNotEmpty ? null : message;
  }
}
