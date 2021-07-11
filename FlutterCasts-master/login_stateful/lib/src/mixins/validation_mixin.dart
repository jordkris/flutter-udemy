class ValidationMixin {
  String validateEmail(String value) {
    // return null if valid, otherwise string (with error message).
    if (!value.contains('@')) {
      return 'Please enter a valid email';
    } else {
      return null;
    }
  }

  String validatePassword(String value) {
    // return null if valid, otherwise string (with error message).
    if (value.length < 4) {
      return 'Password must be at least 4 characters!';
    } else {
      return null;
    }
  }
}
