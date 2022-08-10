class CustomVadicator {
  const CustomVadicator();

  String? passwordVadicator(String? value) {
    if (value!.isEmpty) {
      return 'Enter your password';
    }
    if (!RegExp('.{8,}').hasMatch(value)) {
      return 'Must be at least 8 character in lenght';
    }
    if (!RegExp('(?=.*?[!@#\$&*~])').hasMatch(value)) {
      return 'Should contain at least one Special character';
    }
    if (!RegExp('(?=.*?[0-9])').hasMatch(value)) {
      return 'Should contain at least one digit';
    }
    if (!RegExp('(?=.*[a-z])').hasMatch(value)) {
      return 'Should contain at least lower case';
    }
    if (!RegExp('(?=.*[A-Z])').hasMatch(value)) {
      return 'Should contain at least upper case';
    }
    return null;
  }

  String? emailValicator(String? value) {
    if (value!.isEmpty) {
      return 'Enter your email';
    }
    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]+.[.]com")
        .hasMatch(value)) {
      return 'Please enter the valid email address';
    }
    return null;
  }
}
