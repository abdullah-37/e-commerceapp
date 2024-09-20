//  Validators

class MyValidators {
  // Email Validation

  static String? emailvalidator(String? value) {
    // for empty email
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    // Regular email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address';
    }
    return null;
  }

  // Password Validators
  static String? validatepassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    //  check for password length
    if (value.length < 8) {
      return 'Password must have atleast * letters';
    }

    // check for number
    if (!value.contains(RegExp('r^[0,9]'))) {
      return 'PAssword must contain atleast one number';
    }

    // check for upper case

    if (!value.contains(RegExp('r^[A-Z]'))) {
      return 'Password must contain atleast one upper case character';
    }

    //Check for special characters
    if (!value.contains(RegExp('r^[!@#%^&*()_+{[":;]}]'))) {
      return 'PAssword must contain atleast one special character';
    }

    return null;
  }

  // Phone Number VAlidators
}
