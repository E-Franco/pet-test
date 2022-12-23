extension StringExt on String {
  String get capitalize {
    if (length > 1) {
      return this[0].toUpperCase() + substring(1).toLowerCase();
    } else {
      return toUpperCase();
    }
  }

  String get upperCaseWords {
    if (length <= 1) {
      return toUpperCase();
    } else {
      return split(' ').map((e) => e.capitalize).join(' ');
    }
  }
}
