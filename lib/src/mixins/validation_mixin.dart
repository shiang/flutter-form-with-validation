class ValidationMixin {
  String validateEmail(String value) {
    // This validator gets called by the formState(formKey) validate() function
    // return null if valid
    // otherwise string (with the error message) if in valid
    if (!value.contains('@')) {
      return 'Please enter a valid email';
    }

    return null;
  }

  String validatePassword(String value) {
    if (value.length < 4) {
      return 'Password must be more than 4 characters';
    }
    return null;
  }
}
