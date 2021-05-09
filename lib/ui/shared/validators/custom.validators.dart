class CustomValidators {
  static isEmail(String value) {
    if (value.isEmpty) {
      return 'Digite um e-mail';
    }
    return null;
  }
}
